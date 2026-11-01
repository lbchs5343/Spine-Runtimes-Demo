package com.bytedance.sdk.component.ia.d.iw;

/* loaded from: classes.dex */
public class dq {
    private static volatile d dq;

    public static d dq(com.bytedance.sdk.component.ia.dq.s sVar) {
        if (dq == null) {
            synchronized (d.class) {
                try {
                    if (dq == null) {
                        dq = new ox(new iw(sVar), sVar);
                    }
                } finally {
                }
            }
        }
        return dq;
    }
}
