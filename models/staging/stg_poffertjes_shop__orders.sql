select *
from {{ source('poffertjes_shop', 'orders') }}