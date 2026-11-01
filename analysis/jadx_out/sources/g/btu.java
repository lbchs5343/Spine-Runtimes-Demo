package g;

import android.R;
import android.content.Context;
import android.os.Build;
import android.util.TypedValue;
import android.view.ViewConfiguration;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public abstract class btu {

    /* renamed from: a, reason: collision with root package name */
    public static final Method f12200a;

    static {
        if (Build.VERSION.SDK_INT == 25) {
            try {
                f12200a = ViewConfiguration.class.getDeclaredMethod("getScaledScrollFactor", null);
            } catch (Exception unused) {
            }
        }
    }

    public static float b(ViewConfiguration viewConfiguration, Context context) {
        Method method;
        if (Build.VERSION.SDK_INT >= 25 && (method = f12200a) != null) {
            try {
                return ((Integer) method.invoke(viewConfiguration, null)).intValue();
            } catch (Exception unused) {
            }
        }
        TypedValue typedValue = new TypedValue();
        return context.getTheme().resolveAttribute(R.attr.listPreferredItemHeight, typedValue, true) ? typedValue.getDimension(context.getResources().getDisplayMetrics()) : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }
}
