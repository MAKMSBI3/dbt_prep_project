select * from {{ source('STAGE_DB', 'customers') }}
