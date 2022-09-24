package folk.sisby.origins_minus.mixin.compat.darkness;

import grondag.darkness.Darkness;
import io.github.apace100.apoli.component.PowerHolderComponent;
import io.github.apace100.apoli.power.NightVisionPower;
import net.minecraft.client.MinecraftClient;
import org.slf4j.LoggerFactory;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.injection.*;

import java.util.List;
import java.util.Optional;

@Mixin(Darkness.class)
public abstract class DarknessMixin {
	static {
		LoggerFactory.getLogger("OriginsMinus").info("ORIGINS MINUS DARKNESS FIX INVOKED");
	}

	@ModifyArg(
			method = "skyFactor",
			at = @At(value = "INVOKE", target = "Lnet/minecraft/util/math/MathHelper;lerp(FFF)F"),
			index = 1
	)
	private static float overrideMoonFactor(float original) {
		List<NightVisionPower> nvs = PowerHolderComponent.KEY.get(MinecraftClient.getInstance().player).getPowers(NightVisionPower.class);
		Optional<Float> strength = nvs.stream().filter(NightVisionPower::isActive).map(NightVisionPower::getStrength).max(Float::compareTo);
		return strength.map(str -> Math.min(original + str, 1.0f)).orElse(original);
	}
}
