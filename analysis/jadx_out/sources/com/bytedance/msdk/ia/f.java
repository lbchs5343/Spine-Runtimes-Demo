package com.bytedance.msdk.ia;

import com.bytedance.sdk.openadsdk.ats.AutoService;

/* loaded from: classes.dex */
public class f {
    private static boolean dq = true;

    static {
        try {
            System.loadLibrary("tobEmbedEncrypt");
        } catch (UnsatisfiedLinkError unused) {
            dq = false;
        }
    }

    public static boolean dq() {
        com.bytedance.msdk.dq.s.ox.d("TMe", "applogSOLoadSuccess = " + dq);
        return dq;
    }

    public static byte[] dq(byte[] bArr, int i) {
        com.bytedance.sdk.component.p.d dVar = (com.bytedance.sdk.component.p.d) AutoService.dq(com.bytedance.sdk.component.p.d.class);
        return dVar != null ? dVar.dq(bArr, i) : new byte[0];
    }
}
