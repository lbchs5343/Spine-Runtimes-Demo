package com.bytedance.sdk.openadsdk.core.bl;

import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public class iw {
    private static AtomicInteger dq = new AtomicInteger(1);

    public static void dq(int i) {
        boolean z = true;
        if (i == 1 || i == 2) {
            try {
                if (dq.get() != i) {
                    try {
                        dq.set(i);
                    } catch (Throwable th) {
                        th = th;
                        th.printStackTrace();
                        if (z) {
                            return;
                        } else {
                            return;
                        }
                    }
                } else {
                    z = false;
                }
            } catch (Throwable th2) {
                th = th2;
                z = false;
            }
            if (z || dq()) {
                return;
            }
            com.bytedance.sdk.openadsdk.core.gh.d.s();
        }
    }

    public static boolean dq() {
        return dq.get() == 1;
    }
}
