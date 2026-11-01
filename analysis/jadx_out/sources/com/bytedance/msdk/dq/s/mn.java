package com.bytedance.msdk.dq.s;

import android.content.Context;
import android.util.DisplayMetrics;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public class mn {

    /* renamed from: d, reason: collision with root package name */
    private static int f1081d = -1;
    private static float dq = -1.0f;
    private static float ox = -1.0f;
    private static int p = -1;
    private static int s = -1;

    static {
        dq(com.bytedance.msdk.core.dq.getContext());
    }

    public static int d(Context context) {
        dq(context);
        return p;
    }

    public static int d(Context context, float f2) {
        return (int) ((f2 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int dq(Context context, float f2) {
        dq(context);
        float p2 = p(context);
        if (p2 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            p2 = 1.0f;
        }
        return (int) ((f2 / p2) + 0.5f);
    }

    public static void dq(Context context) {
        Context context2 = context == null ? com.bytedance.msdk.core.dq.getContext() : context;
        if (context2 == null) {
            return;
        }
        DisplayMetrics displayMetrics = context2.getResources().getDisplayMetrics();
        dq = displayMetrics.density;
        f1081d = displayMetrics.densityDpi;
        ox = displayMetrics.scaledDensity;
        p = displayMetrics.widthPixels;
        s = displayMetrics.heightPixels;
        if (context == null || context.getResources() == null || context.getResources().getConfiguration() == null) {
            return;
        }
        if (context.getResources().getConfiguration().orientation == 1) {
            int i = p;
            int i2 = s;
            if (i > i2) {
                p = i2;
                s = i;
                return;
            }
            return;
        }
        int i3 = p;
        int i4 = s;
        if (i3 < i4) {
            p = i4;
            s = i3;
        }
    }

    public static int ox(Context context) {
        dq(context);
        return s;
    }

    public static float p(Context context) {
        dq(context);
        return dq;
    }

    public static int s(Context context) {
        dq(context);
        return f1081d;
    }
}
