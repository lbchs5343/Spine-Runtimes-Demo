package g;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.EdgeEffect;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public abstract class gzo {
    public static EdgeEffect a(Context context, AttributeSet attributeSet) {
        try {
            return new EdgeEffect(context, attributeSet);
        } catch (Throwable unused) {
            return new EdgeEffect(context);
        }
    }

    public static float b(EdgeEffect edgeEffect) {
        try {
            return edgeEffect.getDistance();
        } catch (Throwable unused) {
            return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        }
    }

    public static float c(EdgeEffect edgeEffect, float f2, float f3) {
        try {
            return edgeEffect.onPullDistance(f2, f3);
        } catch (Throwable unused) {
            edgeEffect.onPull(f2, f3);
            return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        }
    }
}
