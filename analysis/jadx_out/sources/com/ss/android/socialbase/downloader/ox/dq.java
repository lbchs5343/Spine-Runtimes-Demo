package com.ss.android.socialbase.downloader.ox;

import android.text.TextUtils;
import android.util.Log;
import g.tn;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private static AbstractC0257dq f9468d = null;
    private static int dq = 4;

    /* renamed from: com.ss.android.socialbase.downloader.ox.dq$dq, reason: collision with other inner class name */
    public static abstract class AbstractC0257dq {
    }

    public static String d(String str) {
        return !TextUtils.isEmpty(str) ? tn.x("Downloader-", str) : "DownloaderLogger";
    }

    public static void d(String str, String str2) {
        if (str2 == null) {
            return;
        }
        if (dq <= 3) {
            d(str);
        }
        if (f9468d != null) {
            d(str);
        }
    }

    public static void d(String str, String str2, Throwable th) {
        if (str2 == null && th == null) {
            return;
        }
        if (dq <= 6) {
            Log.e(d(str), str2, th);
        }
        if (f9468d != null) {
            d(str);
        }
    }

    public static void dq(int i) {
        dq = i;
    }

    public static void dq(String str) {
        d("DownloaderLogger", str);
    }

    public static void dq(String str, String str2) {
        if (str2 == null || f9468d == null) {
            return;
        }
        d(str);
    }

    public static void dq(String str, String str2, Throwable th) {
        if (str2 == null && th == null) {
            return;
        }
        if (dq <= 3) {
            d(str);
        }
        if (f9468d != null) {
            d(str);
        }
    }

    public static boolean dq() {
        return dq <= 3;
    }

    public static void ox(String str) {
        p("DownloaderLogger", str);
    }

    public static void ox(String str, String str2) {
        if (str2 == null) {
            return;
        }
        if (dq <= 4) {
            d(str);
        }
        if (f9468d != null) {
            d(str);
        }
    }

    public static void p(String str, String str2) {
        if (str2 == null) {
            return;
        }
        if (dq <= 5) {
            d(str);
        }
        if (f9468d != null) {
            d(str);
        }
    }

    public static void s(String str, String str2) {
        if (str2 == null) {
            return;
        }
        if (dq <= 6) {
            Log.e(d(str), str2);
        }
        if (f9468d != null) {
            d(str);
        }
    }
}
