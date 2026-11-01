package com.bykv.vk.openvk.component.video.api.iw;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes.dex */
public class d {
    private static final MessageDigest dq = dq();

    /* renamed from: d, reason: collision with root package name */
    private static final char[] f508d = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    private d() {
    }

    public static String dq(String str) {
        byte[] digest;
        MessageDigest messageDigest = dq;
        if (messageDigest == null || TextUtils.isEmpty(str)) {
            return "";
        }
        byte[] bytes = str.getBytes(Charset.forName("UTF-8"));
        synchronized (d.class) {
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
            char[] cArr2 = f508d;
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
