package g;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public abstract class dxo {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f15026a = null;

    /* renamed from: b, reason: collision with root package name */
    public static final Handler f15027b = new Handler(Looper.getMainLooper());

    public static Bitmap c(Context context, Bitmap bitmap, int i) {
        try {
            if (Build.VERSION.SDK_INT < 26) {
                return null;
            }
            Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, Math.round(bitmap.getWidth() * 0.2f), Math.round(bitmap.getHeight() * 0.2f), false);
            Bitmap createBitmap = Bitmap.createBitmap(createScaledBitmap);
            RenderScript create = RenderScript.create(context);
            if (create == null) {
                return null;
            }
            ScriptIntrinsicBlur create2 = ScriptIntrinsicBlur.create(create, Element.U8_4(create));
            Allocation createFromBitmap = Allocation.createFromBitmap(create, createScaledBitmap);
            Allocation createFromBitmap2 = Allocation.createFromBitmap(create, createBitmap);
            create2.setRadius(i);
            create2.setInput(createFromBitmap);
            create2.forEach(createFromBitmap2);
            createFromBitmap2.copyTo(createBitmap);
            return createBitmap;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static void d(Runnable runnable) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            f15027b.post(runnable);
        }
    }

    public static int e(Context context, float f2) {
        float f3 = context.getResources().getDisplayMetrics().density;
        if (f3 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            f3 = 1.0f;
        }
        return (int) ((f2 / f3) + 0.5f);
    }

    public static float f(Context context, float f2) {
        return (f2 * context.getResources().getDisplayMetrics().density) + 0.5f;
    }

    public static float g(Context context, String str) {
        float f2;
        float f3 = context.getResources().getDisplayMetrics().density;
        try {
            f2 = Float.parseFloat(str);
        } catch (NumberFormatException unused) {
            f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        }
        return (f2 * f3) + 0.5f;
    }
}
