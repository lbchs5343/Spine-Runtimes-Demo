package g;

import android.view.Surface;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.gms.internal.ads.zzdt;

/* loaded from: classes3.dex */
public abstract class ebn {
    public static void a(Surface surface, float f2) {
        try {
            surface.setFrameRate(f2, f2 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? 0 : 1);
        } catch (IllegalStateException e2) {
            zzdt.zzd("VideoFrameReleaseHelper", "Failed to call Surface.setFrameRate", e2);
        }
    }
}
