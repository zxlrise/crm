<!DOCTYPE html>
<html>
<head>
	<title>营销机会管理</title>
	<#include "../common.ftl">
</head>
<body class="childrenBody">

<form class="layui-form" >
	<#if permissions?seq_contains("101001")>
		<blockquote class="layui-elem-quote quoteBox">
			<form class="layui-form">
				<div class="layui-inline">
					<div class="layui-input-inline">
						<input type="text" name="customerName"
							   class="layui-input
					searchVal" placeholder="客户名" />
					</div>
					<div class="layui-input-inline">
						<input type="text" name="createMan" class="layui-input
					searchVal" placeholder="创建人" />
					</div>
					<div class="layui-input-inline">
						<select name="state"  id="state">
							<option value="" >分配状态</option>
							<option value="0">未分配</option>
							<option value="1" >已分配</option>
						</select>
					</div>
					<a class="layui-btn search_btn" data-type="reload"><i
								class="layui-icon">&#xe615;</i> 搜索</a>
				</div>
			</form>
		</blockquote>
	</#if>

	<#-- 在页面放置一个元素 <table id="demo"></table>，然后通过 table.render() 方法指定该容器 -->
	<table id="saleChanceList" class="layui-table"  lay-filter="saleChances"></table>

	<#-- 头部工具栏 -->
	<script type="text/html" id="toolbarDemo">
		<div class="layui-btn-container">
			<#if permissions?seq_contains("101002")>
				<a class="layui-btn layui-btn-normal addNews_btn" lay-event="add">
					<i class="layui-icon">&#xe608;</i>
					添加
				</a>
			</#if>
			<#if permissions?seq_contains("101003")>
				<a class="layui-btn layui-btn-normal delNews_btn" lay-event="del">
					<i class="layui-icon">&#xe608;</i>
					删除
				</a>
			</#if>
		</div>
	</script>


	<!-- 行工具栏 -->
	<script id="saleChanceListBar" type="text/html">
		<#if permissions?seq_contains("101004")>
			<a class="layui-btn layui-btn-xs" id="edit" lay-event="edit">编辑</a>
		</#if>
		<#if permissions?seq_contains("101003")>
			<a class="layui-btn layui-btn-xs layui-btn-danger" lay-event="del">删除</a>
		</#if>
	</script>

</form>
<script type="text/javascript" src="${ctx}/js/saleChance/sale.chance.js"></script>

</body>
</html>