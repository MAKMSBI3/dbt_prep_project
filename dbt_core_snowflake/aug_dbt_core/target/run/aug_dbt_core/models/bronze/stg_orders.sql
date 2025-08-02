
  
    

create or replace transient table BRONZE.stg.stg_orders
    
    
    
    as (SELECT * FROM STAGE_DB.DBO.orders
    )
;


  