package com.bytedance.sdk.component.utils;

import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.Collections;

/* loaded from: classes.dex */
public class kk {

    /* renamed from: d, reason: collision with root package name */
    private static final byte[] f2194d;
    private static final byte[] dq;
    private static final byte[] iw;
    private static final int mn;
    private static final byte[] ox;
    private static final byte[] p;
    private static final byte[] s;

    static {
        byte[] bArr = {-1, -40, -1};
        dq = bArr;
        byte[] bArr2 = {-119, 80, 78, 71, 13, 10, 26, 10};
        f2194d = bArr2;
        byte[] bArr3 = {0, 0, 1, 0};
        ox = bArr3;
        byte[] dq2 = dq("BM");
        p = dq2;
        s = dq("GIF87a");
        iw = dq("GIF89a");
        mn = ((Integer) Collections.max(Arrays.asList(Integer.valueOf(bArr.length), Integer.valueOf(bArr2.length), Integer.valueOf(bArr3.length), Integer.valueOf(dq2.length), 6))).intValue();
    }

    private static boolean d(byte[] bArr) {
        int length = bArr.length;
        byte[] bArr2 = dq;
        return length >= bArr2.length && dq(bArr, bArr2);
    }

    public static int dq() {
        return mn;
    }

    public static final String dq(byte[] bArr) {
        return d(bArr) ? "jpeg" : ox(bArr) ? "png" : p(bArr) ? "gif" : s(bArr) ? "bmp" : iw(bArr) ? "ico" : "other";
    }

    private static boolean dq(byte[] bArr, byte[] bArr2) {
        return dq(bArr, bArr2, 0);
    }

    private static boolean dq(byte[] bArr, byte[] bArr2, int i) {
        if (bArr2.length + i > bArr.length) {
            return false;
        }
        for (int i2 = 0; i2 < bArr2.length; i2++) {
            if (bArr[i + i2] != bArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    private static byte[] dq(String str) {
        try {
            return str.getBytes("ASCII");
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException("ASCII not found!", e2);
        }
    }

    private static boolean iw(byte[] bArr) {
        int length = bArr.length;
        byte[] bArr2 = ox;
        return length >= bArr2.length && dq(bArr, bArr2);
    }

    private static boolean ox(byte[] bArr) {
        int length = bArr.length;
        byte[] bArr2 = f2194d;
        return length >= bArr2.length && dq(bArr, bArr2);
    }

    private static boolean p(byte[] bArr) {
        return (bArr.length >= 6 && dq(bArr, s)) || dq(bArr, iw);
    }

    private static boolean s(byte[] bArr) {
        int length = bArr.length;
        byte[] bArr2 = p;
        return length >= bArr2.length && dq(bArr, bArr2);
    }
}
