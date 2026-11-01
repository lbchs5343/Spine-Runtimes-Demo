package com.bytedance.sdk.openadsdk.h;

import com.bytedance.embedapplog.util.TTEncryptUtils;

/* loaded from: classes3.dex */
public class d {
    public static byte[] dq(byte[] bArr, int i) {
        if (bArr != null && i > 0) {
            try {
                if (bArr.length == i) {
                    return TTEncryptUtils.a(bArr, i);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return null;
    }
}
