package com.tencent.bugly.proguard;

import android.util.Log;
import g.awf;
import java.util.Locale;

/* loaded from: classes.dex */
public final class al {

    /* renamed from: a, reason: collision with root package name */
    public static String f9585a = "CrashReportInfo";

    /* renamed from: b, reason: collision with root package name */
    public static String f9586b = "CrashReport";

    /* renamed from: c, reason: collision with root package name */
    public static boolean f9587c;

    private static boolean a(int i, String str, Object... objArr) {
        if (!f9587c) {
            return false;
        }
        if (str == null) {
            str = "null";
        } else if (objArr != null && objArr.length != 0) {
            str = String.format(Locale.US, str, objArr);
        }
        if (i != 0 && i != 1 && i != 2) {
            if (i != 3) {
                return i == 5;
            }
            Log.e(f9586b, str);
        }
        return true;
    }

    private static boolean a(int i, Throwable th) {
        if (f9587c) {
            return a(i, ap.a(th), new Object[0]);
        }
        return false;
    }

    public static boolean a(Class cls, String str, Object... objArr) {
        Locale locale = Locale.US;
        return a(0, awf.t("[", cls.getSimpleName(), "] ", str), objArr);
    }

    public static boolean a(String str, Object... objArr) {
        return a(0, str, objArr);
    }

    public static boolean a(Throwable th) {
        return a(2, th);
    }

    public static boolean b(String str, Object... objArr) {
        return a(5, str, objArr);
    }

    public static boolean b(Throwable th) {
        return a(3, th);
    }

    public static boolean c(String str, Object... objArr) {
        return a(1, str, objArr);
    }

    public static boolean d(String str, Object... objArr) {
        return a(2, str, objArr);
    }

    public static boolean e(String str, Object... objArr) {
        return a(3, str, objArr);
    }
}
