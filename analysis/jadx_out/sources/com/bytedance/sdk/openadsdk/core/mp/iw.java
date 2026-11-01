package com.bytedance.sdk.openadsdk.core.mp;

/* loaded from: classes3.dex */
public class iw extends d {
    private static volatile iw dq;

    private iw() {
    }

    public static d dq() {
        if (dq == null) {
            synchronized (d.class) {
                try {
                    if (dq == null) {
                        dq = new iw();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    @Override // com.bytedance.sdk.openadsdk.core.mp.d
    public int d() {
        return com.bytedance.sdk.openadsdk.core.ox.p.dq().ox();
    }

    @Override // com.bytedance.sdk.openadsdk.core.mp.d
    public long ox() {
        return com.bytedance.sdk.openadsdk.core.ox.p.dq().d();
    }
}
