
  
    

create or replace transient table BRONZE.stg.stg_products
    
    
    
    as (SELECT * FROM STAGE_DB.DBO.products
    )
;


  