package com.bytedance.sdk.component.dq;

import android.util.Log;

/* loaded from: classes.dex */
class kk {
    private static boolean dq;

    public static void d(String str) {
    }

    public static void d(String str, Throwable th) {
        if (dq) {
            Log.e("JsBridge2", str, th);
            Log.e("JsBridge2", "Stacktrace: " + Log.getStackTraceString(th));
        }
    }

    public static void dq(RuntimeException runtimeException) {
        if (dq) {
            throw runtimeException;
        }
    }

    public static void dq(String str) {
    }

    public static void dq(String str, Throwable th) {
        if (dq) {
            Log.getStackTraceString(th);
        }
    }

    public static void dq(boolean z) {
        dq = z;
    }
}
