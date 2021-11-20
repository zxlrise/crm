package com.xiao.crm.service;

import com.xiao.crm.base.BaseService;
import com.xiao.crm.dao.UserMapper;
import com.xiao.crm.dao.UserRoleMapper;
import com.xiao.crm.model.UserModel;
import com.xiao.crm.utils.AssertUtil;
import com.xiao.crm.utils.Md5Util;
import com.xiao.crm.utils.PhoneUtil;
import com.xiao.crm.utils.UserIDBase64;
import com.xiao.crm.vo.User;
import com.xiao.crm.vo.UserRole;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.*;

@Service
public class UserService extends BaseService<User,Integer> {

    @Resource
    private UserMapper userMapper;

    @Resource
    private UserRoleMapper userRoleMapper;

    /**
     * 用户登录
     1. 参数判断，判断用户姓名、用户密码非空
        如果参数为空，抛出异常（异常被控制层捕获并处理）
     2. 调用数据访问层，通过用户名查询用户记录，返回用户对象
     3. 判断用户对象是否为空
        如果对象为空，抛出异常（异常被控制层捕获并处理）
     4. 判断密码是否正确，比较客户端传递的用户密码与数据库中查询的用户对象中的用户密码
        如果密码不相等，抛出异常（异常被控制层捕获并处理）
     5. 如果密码正确，登录成功
     *
     */
    public UserModel userLogin(String userName,String userPwd){
        // 1. 参数判断，判断用户姓名、用户密码非空
        checkLoginParams(userName, userPwd);

        // 2. 调用数据访问层，通过用户名查询用户记录，返回用户对象
        User user = userMapper.queryUserByName(userName);

        // 3. 判断用户对象是否为空
        AssertUtil.isTrue(user == null, "用户姓名不存在！");

        // 4. 判断密码是否正确，比较客户端传递的用户密码与数据库中查询的用户对象中的用户密码
        checkUserPwd(userPwd, user.getUserPwd());

        // 5.返回构建用户对象
        return buildUserInfo(user);
    }

    /**
     * 修改密码
         1. 通过用户ID查询用户记录，返回用户对象
         2. 参数校验
             待更新用户记录是否存在 （用户对象是否为空）
             判断原始密码是否为空
             判断原始密码是否正确（查询的用户对象中的用户密码是否原始密码一致）
             判断新密码是否为空
             判断新密码是否与原始密码一致 （不允许新密码与原始密码）
             判断确认密码是否为空
             判断确认密码是否与新密码一致
         3. 设置用户的新密码
            需要将新密码通过指定算法进行加密（md5加密）
         4. 执行更新操作，判断受影响的行数
     * @param userId
     * @param oldPwd
     * @param newPwd
     * @param repeatPwd
     */
    @Transactional(propagation = Propagation.REQUIRED)  //开启事务
    public void updatePassword(Integer userId,String oldPwd,String newPwd,String repeatPwd){
        // 通过用户ID查询用户记录，返回用户对象
        User user = userMapper.selectByPrimaryKey(userId);
        // 判断用户记录是否存在
        AssertUtil.isTrue( null == user,"待更新记录不存在");
        
        // 参数校验
        checkPasswordParams(user,oldPwd,newPwd,repeatPwd);

        // 设置用户新密码
        user.setUserPwd(Md5Util.encode(newPwd));

        // 执行更新操作，判断受影响的行数
        AssertUtil.isTrue(userMapper.updateByPrimaryKeySelective(user) < 1,"修改密码失败！");
    }

    /**
     * 修改密码的参数校验
         判断原始密码是否为空
         判断原始密码是否正确（查询的用户对象中的用户密码是否原始密码一致）
         判断新密码是否为空
         判断新密码是否与原始密码一致 （不允许新密码与原始密码）
         判断确认密码是否为空
         判断确认密码是否与新密码一致
     * @param user
     * @param oldPwd
     * @param newPwd
     * @param repeatPwd
     */
    private void checkPasswordParams(User user, String oldPwd, String newPwd, String repeatPwd) {
        // 判断原始密码是否为空
        AssertUtil.isTrue(StringUtils.isBlank(oldPwd),"原始密码不能为空！");
        // 判断原始密码是否正确（查询的用户对象中的用户密码是否原始密码一致）
        AssertUtil.isTrue(!user.getUserPwd().equals(Md5Util.encode(oldPwd)),"原始密码不正确！");

        //判断新密码是否为空
        AssertUtil.isTrue(StringUtils.isBlank(newPwd),"新密码不能为空！");
        //判断新密码是否与原始密码一致 （不允许新密码与原始密码一致）
        AssertUtil.isTrue(oldPwd.equals(newPwd),"新密码不能与原始密码一致！");
        //判断确认密码是否为空
        AssertUtil.isTrue(StringUtils.isBlank(repeatPwd),"确认密码不能为空！");
        //判断确认密码是否与新密码一致
        AssertUtil.isTrue(!newPwd.equals(repeatPwd),"确认密码与新密码不一致！");

    }

    /**
     * 构建需要返回给客户端的用户对象
     * @param user
     */
    private UserModel buildUserInfo(User user) {
        UserModel userModel = new UserModel();
        //userModel.setUserId(user.getId());
        userModel.setUserIdStr(UserIDBase64.encoderUserID(user.getId()));
        userModel.setUserName(user.getUserName());
        userModel.setTrueName(user.getTrueName());
        return userModel;
    }

    /**
     * 密码判断
     *  先将客户端传递的密码加密，再与数据库中查询到的密码作比较
     */
    private void checkUserPwd(String userPwd, String pwd) {
        // 将客户端传递的密码加密
        userPwd = Md5Util.encode(userPwd);
        // 判断密码是否相等
        AssertUtil.isTrue(!userPwd.equals(pwd), "用户密码不正确！");
    }

    /**
     * 参数判断
     * @param userName
     * @param userPwd
     */
    private void checkLoginParams(String userName, String userPwd) {
        // 验证用户姓名
        AssertUtil.isTrue(StringUtils.isBlank(userName), "用户姓名不能为空！");
        // 验证用户密码
        AssertUtil.isTrue(StringUtils.isBlank(userPwd), "用户密码不能为空！");
    }

    /**
     * 查询所有的销售人员
     * @return
     */
    public List<Map<String,Object>> queryAllSales(){
        return userMapper.queryAllSales();
    }

    /**
     * 添加用户
     *    1、参数校验
     *       用户名userName   唯一性
     *       邮箱email        非空
     *       手机号phone      非空 格式合法
     *    2、设置默认参数
     *       is_valid = 1
     *       createDate   当前时间
     *       updateDate   当前时间
     *       默认密码 userPwd      12346->md5加密
     *    3、执行添加，判断结果
     * @param user
     */
    @Transactional(propagation = Propagation.REQUIRED)  //开启事务
    public void addUser(User user){
        // 1、参数校验
        checkUserParams(user.getUserName(),user.getEmail(),user.getPhone(),null);
        // 2、设置默认参数
        user.setIsValid(1);
        user.setCreateDate(new Date());
        user.setUpdateDate(new Date());
        user.setUserPwd(Md5Util.encode("123456"));
        // 3、执行添加，判断结果
        AssertUtil.isTrue(userMapper.insertSelective(user) < 1,"用户添加失败！");

        /* 用户角色关联 */
        /**
         * 用户ID
         *  userId
         * 角色ID
         *  roleIds
         */
        relationUserRole(user.getId(), user.getRoleIds());
    }

    /**
     * 用户角色关联
     *  添加操作
     *      原始角色不存在
     *          1. 不添加新的角色记录    不操作用户角色表
     *          2. 添加新的角色记录      给指定用户绑定相关的角色记录
     *
     *  更新操作
     *      原始角色不存在
     *          1. 不添加新的角色记录     不操作用户角色表
     *          2. 添加新的角色记录       给指定用户绑定相关的角色记录
     *      原始角色存在
     *          1. 添加新的角色记录       判断已有的角色记录不添加，添加没有的角色记录
     *          2. 清空所有的角色记录     删除用户绑定角色记录
     *          3. 移除部分角色记录       删除不存在的角色记录，存在的角色记录保留
     *          4. 移除部分角色，添加新的角色    删除不存在的角色记录，存在的角色记录保留，添加新的角色
     *
     *   如何进行角色分配？？？
     *      判断用户对应的角色记录存在，先将用户原有的角色记录删除，再添加新的角色记录
     *
     *  删除操作
     *      删除指定用户绑定的角色记录
     **/
    private void relationUserRole(Integer userId, String roleIds) {
        // 通过用户ID查询角色记录
        Integer count = userRoleMapper.countUserRoleByUserId(userId);
        // 判断角色记录是否存在
        if (count > 0) {
            // 如果角色记录存在，则删除该用户对应的角色记录
            AssertUtil.isTrue(userRoleMapper.deleteUserRoleByUserId(userId) != count, "用户角色分配失败！");
        }

        // 判断角色ID是否存在，如果存在，则添加该用户对应的角色记录
        if (StringUtils.isNotBlank(roleIds)) {
            // 将用户角色数据设置到集合中，执行批量添加
            List<UserRole> userRoleList = new ArrayList<>();
            // 将角色ID字符串转换成数组
            String[] roleIdsArray = roleIds.split(",");
            // 遍历数组，得到对应的用户角色对象，并设置到集合中
            for (String roleId : roleIdsArray) {
                UserRole userRole = new UserRole();
                userRole.setRoleId(Integer.parseInt(roleId));
                userRole.setUserId(userId);
                userRole.setCreateDate(new Date());
                userRole.setUpdateDate(new Date());
                // 设置到集合中
                userRoleList.add(userRole);
            }
            // 批量添加用户角色记录
            AssertUtil.isTrue(userRoleMapper.insertBatch(userRoleList) != userRoleList.size(), "用户角色分配失败！");
        }
    }
    /**
     * 更新用户
     *    1、参数校验
     *       判断用户ID是否为空，且数据存在
     *       用户名userName   唯一性
     *       邮箱email        非空
     *       手机号phone      非空 格式合法
     *    2、设置默认参数
     *       is_valid = 1
     *       createDate   当前时间
     *       updateDate   当前时间
     *       默认密码 userPwd      12346->md5加密
     *    3、执行添加，判断结果
     * @param user
     */
    public void updateUser(User user){
        // 1、参数校验
        // 判断用户ID是否为空，且数据存在
        AssertUtil.isTrue(user.getId() == null,"待更新记录不存在！");
        AssertUtil.isTrue(userMapper.selectByPrimaryKey(user.getId()) == null,"待更新记录不存在！");
        checkUserParams(user.getUserName(),user.getEmail(),user.getPhone(),user.getId());
        // 2、设置默认参数
        user.setUpdateDate(new Date());
        // 3、执行更新，判断结果
        AssertUtil.isTrue(userMapper.updateByPrimaryKeySelective(user) != 1,"用户更新失败！");
        /* 用户角色关联 */
        /**
         * 用户ID
         *  userId
         * 角色ID
         *  roleIds
         */
        relationUserRole(user.getId(), user.getRoleIds());
    }

    /**
     * 参数校验
     * @param userName
     * @param email
     * @param phone
     * @param userId
     */
    private void checkUserParams(String userName, String email, String phone,Integer userId) {
        AssertUtil.isTrue(StringUtils.isBlank(userName),"用户名不能为空！");
        User temp = userMapper.queryUserByName(userName);
        AssertUtil.isTrue( temp != null && !(temp.getId().equals(userId)),"用户名已存在，请重新输入!");
        AssertUtil.isTrue(StringUtils.isBlank(email),"用户邮箱不能为空！");
        AssertUtil.isTrue(StringUtils.isBlank(phone),"用户手机号不能为空！");
        AssertUtil.isTrue(!PhoneUtil.isMobile(phone),"手机号格式不正确！");
    }

    /**
     * 用户删除
     * @param ids
     */
    @Transactional(propagation = Propagation.REQUIRED)  //开启事务
    public void deleteByIds(Integer[] ids) {
        AssertUtil.isTrue(ids == null || ids.length == 0, "待删除记录不存在！");
        AssertUtil.isTrue(userMapper.deleteBatch(ids) != ids.length,"用户删除失败！");

        // 遍历用户ID的数组
        for(Integer userId : ids){
            // 通过用户ID查询对应的用户角色记录
            Integer count = userRoleMapper.countUserRoleByUserId(userId);
            // 判断用户角色记录是否存在
            if(count > 0){
                //  通过用户ID删除对应的用户角色记录
                AssertUtil.isTrue(userRoleMapper.deleteUserRoleByUserId(userId)!=count,"删除用户失败！");
            }
        }
    }

    /**
     * 查询所有的销售人员
     */
    public List<Map<String, Object>> queryAllCustomerManagers() {
        return userMapper.queryAllCustomerManagers();
    }
}
