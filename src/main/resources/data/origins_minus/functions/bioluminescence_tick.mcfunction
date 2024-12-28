execute at @e[type=arrow,tag=bioluminescence,nbt={inGround:1b}] unless block ~ ~ ~-1 minecraft:air run setblock ~ ~ ~ minecraft:glow_lichen[north=true] keep
execute at @e[type=arrow,tag=bioluminescence,nbt={inGround:1b}] unless block ~ ~ ~1 minecraft:air run setblock ~ ~ ~ minecraft:glow_lichen[south=true] keep
execute at @e[type=arrow,tag=bioluminescence,nbt={inGround:1b}] unless block ~-1 ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:glow_lichen[west=true] keep
execute at @e[type=arrow,tag=bioluminescence,nbt={inGround:1b}] unless block ~1 ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:glow_lichen[east=true] keep
execute at @e[type=arrow,tag=bioluminescence,nbt={inGround:1b}] unless block ~ ~-1 ~ minecraft:air run setblock ~ ~ ~ minecraft:glow_lichen[down=true] keep
execute at @e[type=arrow,tag=bioluminescence,nbt={inGround:1b}] unless block ~ ~1 ~ minecraft:air run setblock ~ ~ ~ minecraft:glow_lichen[up=true] keep

execute at @e[type=arrow,tag=bioluminescence,nbt={inGround:1b}] run playsound minecraft:item.crop.plant block @p[distance=0..32] ~ ~ ~ 2
execute at @e[type=arrow,tag=bioluminescence,nbt={inGround:1b}] run particle minecraft:block minecraft:glow_lichen ~ ~ ~ 0.5 0.5 0.5 0 32
execute as @e[type=arrow,tag=bioluminescence,nbt={inGround:1b}] run kill @s

execute at @e[type=arrow,tag=bioluminescence] run particle minecraft:block minecraft:glow_lichen ~ ~ ~ 0.1 0.1 0.1 0 8
execute as @e[type=arrow,tag=bioluminescence,nbt={PortalCooldown:0}] run kill @s
