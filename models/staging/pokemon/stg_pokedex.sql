with pokedex as ( select * from {{source('pokemon', 'pokedex') }} ), 

final as (
    select nat as pokemon_id,
           hatch as hatch_number,
           catch as catch_number,
           hp as heart_power 
    from pokedex
)

select * from final