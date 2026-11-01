package com.bytedance.sdk.openadsdk.h;

import android.os.Environment;

/* loaded from: classes3.dex */
public class ox {
    public static String dq() {
        try {
            return Environment.getExternalStorageState();
        } catch (Throwable unused) {
            return "";
        }
    }
}
