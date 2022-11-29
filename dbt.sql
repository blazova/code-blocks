-- group by block:
{{ group_by(n=1) }}

-- limit block:
{{ limit_0(var('do_limit_0')) }}

-- create surogate key:
select {{ dbt_utils.surrogate_key(['id', 'source', 'email']) }} as id

-- nest fields:
select  
  ,id
  ,array_agg(
    struct(id, best_time, rank, user_id, attempts)
  ) as nested_field
from xy
{{ group_by(n=1) }}
{{ limit_0(var('do_limit_0')) }}

-- unnest fields:
select x.*
from nested
left join unnest([b24message.slsrpt]) as x
