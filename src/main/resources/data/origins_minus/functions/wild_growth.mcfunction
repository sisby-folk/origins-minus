execute at @e[type=arrow,tag=wild_growth,nbt={inGround:1b}] unless block ~ ~ ~-1 minecraft:air run setblock ~ ~ ~ minecraft:glow_lichen[north=true] keep
execute at @e[type=arrow,tag=wild_growth,nbt={inGround:1b}] unless block ~ ~ ~1 minecraft:air run setblock ~ ~ ~ minecraft:glow_lichen[south=true] keep
execute at @e[type=arrow,tag=wild_growth,nbt={inGround:1b}] unless block ~-1 ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:glow_lichen[west=true] keep
execute at @e[type=arrow,tag=wild_growth,nbt={inGround:1b}] unless block ~1 ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:glow_lichen[east=true] keep
execute at @e[type=arrow,tag=wild_growth,nbt={inGround:1b}] unless block ~ ~-1 ~ minecraft:air run setblock ~ ~ ~ minecraft:glow_lichen[down=true] keep
execute at @e[type=arrow,tag=wild_growth,nbt={inGround:1b}] unless block ~ ~1 ~ minecraft:air run setblock ~ ~ ~ minecraft:glow_lichen[up=true] keep

execute as @e[type=arrow,tag=wild_growth] if data entity @s {inGround:1b} run kill @s
execute as @e[type=arrow,tag=wild_growth] at @s run particle minecraft:dust 0.2 0.8 0.2 1.0