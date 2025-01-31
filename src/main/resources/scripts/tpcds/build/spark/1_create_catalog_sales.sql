CREATE
    TABLE
        ${catalog}.${database}.catalog_sales(
            cs_sold_time_sk INT,
            cs_ship_date_sk INT,
            cs_bill_customer_sk INT,
            cs_bill_cdemo_sk INT,
            cs_bill_hdemo_sk INT,
            cs_bill_addr_sk INT,
            cs_ship_customer_sk INT,
            cs_ship_cdemo_sk INT,
            cs_ship_hdemo_sk INT,
            cs_ship_addr_sk INT,
            cs_call_center_sk INT,
            cs_catalog_page_sk INT,
            cs_ship_mode_sk INT,
            cs_warehouse_sk INT,
            cs_item_sk INT,
            cs_promo_sk INT,
            cs_order_number BIGINT,
            cs_quantity INT,
            cs_wholesale_cost DECIMAL(
                7,
                2
            ),
            cs_list_price DECIMAL(
                7,
                2
            ),
            cs_sales_price DECIMAL(
                7,
                2
            ),
            cs_ext_discount_amt DECIMAL(
                7,
                2
            ),
            cs_ext_sales_price DECIMAL(
                7,
                2
            ),
            cs_ext_wholesale_cost DECIMAL(
                7,
                2
            ),
            cs_ext_list_price DECIMAL(
                7,
                2
            ),
            cs_ext_tax DECIMAL(
                7,
                2
            ),
            cs_coupon_amt DECIMAL(
                7,
                2
            ),
            cs_ext_ship_cost DECIMAL(
                7,
                2
            ),
            cs_net_paid DECIMAL(
                7,
                2
            ),
            cs_net_paid_inc_tax DECIMAL(
                7,
                2
            ),
            cs_net_paid_inc_ship DECIMAL(
                7,
                2
            ),
            cs_net_paid_inc_ship_tax DECIMAL(
                7,
                2
            ),
            cs_net_profit DECIMAL(
                7,
                2
            ),
            cs_sold_date_sk INT
        )
            USING ${table_format} OPTIONS(
            PATH '${data_path}${experiment_start_time}/${repetition}/catalog_sales/'
        ) PARTITIONED BY(cs_sold_date_sk) TBLPROPERTIES(
            'primaryKey' = 'cs_item_sk,cs_order_number' ${table_props_suffix}
        );
