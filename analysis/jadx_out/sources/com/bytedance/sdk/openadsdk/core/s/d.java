package com.bytedance.sdk.openadsdk.core.s;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.wp;
import java.util.Random;

/* loaded from: classes3.dex */
public class d {

    /* renamed from: d, reason: collision with root package name */
    private static volatile boolean f3528d;
    private static volatile Random dq;

    public static void d() {
        dq(wp.d().ce(), true);
    }

    public static boolean dq() {
        return f3528d;
    }

    public static boolean dq(float f2, boolean z) {
        if (f2 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            if (z) {
                f3528d = false;
            }
            return false;
        }
        int nextInt = ox().nextInt(100);
        int i = (int) (f2 * 100.0f);
        if (z) {
            f3528d = nextInt < i;
        }
        return nextInt < i;
    }

    private static Random ox() {
        if (dq != null) {
            return dq;
        }
        Random ox = com.bytedance.sdk.component.utils.dq.ox();
        dq = ox;
        return ox;
    }
}
