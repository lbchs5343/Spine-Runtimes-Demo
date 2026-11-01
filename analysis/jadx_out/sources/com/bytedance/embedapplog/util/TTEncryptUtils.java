package com.bytedance.embedapplog.util;

import com.bytedance.embedapplog.jo;

/* loaded from: classes.dex */
public class TTEncryptUtils {
    static {
        try {
            System.loadLibrary("tobEmbedEncrypt");
        } catch (UnsatisfiedLinkError e2) {
            jo.d(e2);
        }
    }

    public static byte[] a(byte[] bArr, int i) {
        try {
            return ttEncrypt(bArr, i);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static native byte[] ttEncrypt(byte[] bArr, int i);
}
