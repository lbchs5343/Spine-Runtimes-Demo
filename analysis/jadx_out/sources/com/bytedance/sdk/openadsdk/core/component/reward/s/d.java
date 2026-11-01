package com.bytedance.sdk.openadsdk.core.component.reward.s;

import android.content.Context;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.i;
import com.bytedance.sdk.openadsdk.core.ir.ce;

/* loaded from: classes3.dex */
public final class d {
    public static float[] dq(Context context, float f2, int i) {
        float min;
        float max;
        float p = ce.p(context, ce.kk(context));
        float p2 = ce.p(context, ce.o(context));
        if (i == 2) {
            min = Math.max(p, p2);
            max = Math.min(p, p2);
        } else {
            min = Math.min(p, p2);
            max = Math.max(p, p2);
        }
        int p3 = ce.p(context, ce.no(context));
        if (ce.d() || f2 != 100.0f) {
            if (i != 2) {
                max -= p3;
            } else {
                if ("SM-A207F".equals(i.le())) {
                    p3 *= 2;
                }
                min -= p3;
            }
        }
        return new float[]{min, max};
    }

    public static int[] dq(Context context, float f2, float f3, int i) {
        int i2;
        float[] dq = dq(context, f2, i);
        float f4 = dq[0];
        float f5 = dq[1];
        int min = (int) (Math.min(f4, f5) * f3);
        if (i != 2) {
            float f6 = min;
            i2 = (int) Math.max((f5 - (((f4 - f6) - f6) / f2)) / 2.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        } else {
            float f7 = min;
            min = (int) Math.max((f4 - (((f5 - f7) - f7) * f2)) / 2.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            i2 = min;
        }
        return new int[]{min, i2, min, i2};
    }
}
