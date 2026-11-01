package com.bytedance.embedapplog;

import android.util.Log;

/* loaded from: classes.dex */
public class jo {

    /* renamed from: d, reason: collision with root package name */
    public static boolean f730d;
    public static boolean dq;

    public static void d(String str) {
        d(str, null);
    }

    public static void d(String str, Throwable th) {
    }

    public static void d(Throwable th) {
        if (th != null) {
            th.getMessage();
        }
    }

    public static void dq(String str) {
    }

    public static void dq(String str, Throwable th) {
    }

    public static void dq(Throwable th) {
        Log.e("TeaLog", "", th);
    }

    public static void ox(String str, Throwable th) {
        Log.e("TeaLog", str, th);
    }

    public static void p(String str, Throwable th) {
    }
}
