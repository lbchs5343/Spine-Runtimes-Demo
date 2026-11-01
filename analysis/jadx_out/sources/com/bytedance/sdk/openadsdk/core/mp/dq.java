package com.bytedance.sdk.openadsdk.core.mp;

import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes3.dex */
public class dq extends d {
    private static volatile dq dq;

    private dq() {
    }

    public static d dq() {
        if (dq == null) {
            synchronized (d.class) {
                try {
                    if (dq == null) {
                        dq = new dq();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    @Override // com.bytedance.sdk.openadsdk.core.mp.d
    public synchronized int d() {
        int ox = com.bytedance.sdk.openadsdk.core.ox.p.dq().ox();
        if (com.bytedance.sdk.openadsdk.core.ox.p.dq().p() <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            return ox;
        }
        return (int) Math.ceil(r1 * ox);
    }

    @Override // com.bytedance.sdk.openadsdk.core.mp.d
    public synchronized long ox() {
        return com.bytedance.sdk.openadsdk.core.ox.p.dq().d();
    }
}
