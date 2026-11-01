package com.bytedance.sdk.openadsdk.api;

import android.util.Log;

/* loaded from: classes.dex */
public class ox {

    /* renamed from: d, reason: collision with root package name */
    private static int f2412d = 4;
    private static boolean dq;

    public static void d(String str, String str2) {
    }

    public static void d(String str, String str2, Throwable th) {
    }

    public static void d(String str, Object... objArr) {
        if (dq && objArr != null && f2412d <= 5) {
            dq(objArr);
        }
    }

    private static String dq(Object... objArr) {
        if (objArr == null || objArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (Object obj : objArr) {
            if (obj != null) {
                sb.append(obj.toString());
            } else {
                sb.append(" null ");
            }
            sb.append(" ");
        }
        return sb.toString();
    }

    public static void dq() {
        dq = true;
        dq(3);
    }

    public static void dq(int i) {
        f2412d = i;
    }

    public static void dq(String str) {
        if (dq) {
            p("TTLogger", str);
        }
    }

    public static void dq(String str, String str2) {
    }

    public static void dq(String str, String str2, Throwable th) {
    }

    public static void dq(String str, Object... objArr) {
        if (dq && objArr != null && f2412d <= 3) {
            dq(objArr);
        }
    }

    public static void ox(String str, String str2) {
    }

    public static void ox(String str, String str2, Throwable th) {
        if (dq) {
            if (!(str2 == null && th == null) && f2412d <= 6) {
                Log.e(str, str2, th);
            }
        }
    }

    public static void p(String str, String str2) {
    }

    public static void s(String str, String str2) {
        if (dq && str2 != null && f2412d <= 6) {
            Log.e(str, str2);
        }
    }
}
