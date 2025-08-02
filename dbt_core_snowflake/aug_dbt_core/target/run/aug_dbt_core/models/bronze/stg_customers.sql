
  
    

create or replace transient table BRONZE.stg.stg_customers
    
    
    
    as (select * from STAGE_DB.DBO.customers
    )
;


  