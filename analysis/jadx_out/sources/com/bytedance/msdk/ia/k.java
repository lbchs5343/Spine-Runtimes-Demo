package com.bytedance.msdk.ia;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes.dex */
public class k {

    /* renamed from: d, reason: collision with root package name */
    private static final MessageDigest f1096d = dq();
    public static final Charset dq = Charset.forName("UTF-8");
    private static final char[] ox = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    private k() {
    }

    public static String dq(String str) {
        byte[] digest;
        MessageDigest messageDigest = f1096d;
        if (str == null) {
            return "";
        }
        byte[] bytes = str.getBytes(dq);
        synchronized (k.class) {
            digest = messageDigest.digest(bytes);
        }
        return dq(digest);
    }

    public static String dq(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        char[] cArr = new char[bArr.length << 1];
        int i = 0;
        for (byte b2 : bArr) {
            int i2 = i + 1;
            char[] cArr2 = ox;
            cArr[i] = cArr2[(b2 & 240) >> 4];
            i += 2;
            cArr[i2] = cArr2[b2 & 15];
        }
        return new String(cArr);
    }

    private static MessageDigest dq() {
        try {
            return MessageDigest.getInstance(TTDownloadField.TT_MD5);
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }
}
