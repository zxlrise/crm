    SELECT
        d.data_dic_value AS dicValue, COUNT(1) total
    FROM
        t_customer_serve cs
    LEFT JOIN
        t_datadic d
    ON
	    cs.serve_type = d.id
    WHERE
        cs.is_valid = 1
    GROUP BY
	    data_dic_value