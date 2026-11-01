package com.bytedance.msdk.dq.s;

import android.util.Log;
import com.bytedance.msdk.ia.mp;

/* loaded from: classes.dex */
public class ox {

    /* renamed from: d, reason: collision with root package name */
    private static boolean f1082d = false;
    static boolean dq = true;
    private static int ox = 4;

    public static void d(String str) {
        if (d()) {
            d("Logger", str);
        }
    }

    public static void d(String str, String str2) {
        d();
    }

    public static void d(String str, String str2, Throwable th) {
        if (d()) {
            if (!(str2 == null && th == null) && ox <= 6) {
                Log.e(str, str2, th);
            }
        }
    }

    public static boolean d() {
        return mp.dq || f1082d;
    }

    public static void dq() {
        f1082d = true;
        dq(3);
    }

    public static void dq(int i) {
        ox = i;
    }

    public static void dq(String str) {
        if (d()) {
            dq("Logger", str);
        }
    }

    public static void dq(String str, String str2) {
        d();
    }

    public static void dq(String str, String str2, Throwable th) {
        d();
    }

    public static void ox(String str) {
        if (d()) {
            p("Logger", str);
        }
    }

    public static void ox(String str, String str2) {
        d();
    }

    public static void p(String str, String str2) {
        if (d() && str2 != null && ox <= 6) {
            Log.e(str, str2);
        }
    }
}
