execute at @e[type=snowball,tag=rappel] run playsound minecraft:entity.arrow.shoot player @p[distance=0..32] ~ ~ ~ 0.43 1.63
execute at @e[type=snowball,tag=rappel] run particle block{block_state:{Name:'minecraft:cobweb'}} ~ ~ ~ 0.1 0.1 0.1 0 8
execute as @e[type=snowball,tag=rappel,nbt={PortalCooldown:0}] run kill @s
