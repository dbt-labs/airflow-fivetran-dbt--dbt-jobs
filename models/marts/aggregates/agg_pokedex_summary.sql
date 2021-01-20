with pokedex as (select * from {{ ref('stg_pokedex') }} ),

-- average the hp by catch
final as (
    select catch_number,
           AVG(heart_power) AS avg_heart_power
    from   pokedex
    group by 1
)

select * from final