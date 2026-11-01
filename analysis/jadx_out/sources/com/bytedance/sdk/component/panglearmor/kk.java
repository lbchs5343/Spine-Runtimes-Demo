package com.bytedance.sdk.component.panglearmor;

import android.util.Base64;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;

/* loaded from: classes.dex */
public class kk {

    /* renamed from: d, reason: collision with root package name */
    private static volatile boolean f2182d;
    private static volatile kk dq;

    private kk() {
    }

    public static boolean d() {
        return f2182d;
    }

    public static kk dq() {
        if (dq == null) {
            synchronized (kk.class) {
                try {
                    if (dq == null) {
                        long currentTimeMillis = System.currentTimeMillis();
                        try {
                            System.loadLibrary("panglearmor");
                            f2182d = true;
                        } catch (Throwable unused) {
                            f2182d = false;
                        }
                        dq = new kk();
                        long currentTimeMillis2 = System.currentTimeMillis();
                        ia mn = iw.mn();
                        if (mn != null) {
                            mn.dq(currentTimeMillis2 - currentTimeMillis, f2182d);
                        }
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    public byte[] d(byte[] bArr) {
        if (bArr != null && bArr.length != 0 && f2182d) {
            try {
                return SoftDecTool.bc(AVMDLDataLoader.KeyIsGetCostLog, bArr);
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public String dq(String str) {
        if (str != null && str.length() != 0 && f2182d) {
            try {
                byte[] d2 = d(Base64.decode(str, 0));
                if (d2 != null) {
                    return new String(d2);
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public byte[] dq(byte[] bArr) {
        if (bArr != null && bArr.length != 0 && f2182d) {
            try {
                return SoftDecTool.bc(1010, bArr);
            } catch (Throwable unused) {
            }
        }
        return null;
    }
}
