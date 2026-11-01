package com.google.android.gms.internal.ads;

import android.util.Log;
import g.awf;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class zzaqb {
    public static final String zza = "Volley";
    public static final boolean zzb = Log.isLoggable(zza, 2);

    /* renamed from: a, reason: collision with root package name */
    public static final String f4458a = zzaqb.class.getName();

    public static String b(String str, Object... objArr) {
        String str2;
        String format = String.format(Locale.US, str, objArr);
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        int i = 2;
        while (true) {
            if (i >= stackTrace.length) {
                str2 = "<unknown>";
                break;
            }
            if (!stackTrace[i].getClassName().equals(f4458a)) {
                String className = stackTrace[i].getClassName();
                String substring = className.substring(className.lastIndexOf(46) + 1);
                str2 = awf.i(substring.substring(substring.lastIndexOf(36) + 1), ".", stackTrace[i].getMethodName());
                break;
            }
            i++;
        }
        Locale locale = Locale.US;
        long id = Thread.currentThread().getId();
        StringBuilder sb = new StringBuilder("[");
        sb.append(id);
        sb.append("] ");
        sb.append(str2);
        return awf.ad(sb, ": ", format);
    }

    public static void zza(String str, Object... objArr) {
        b(str, objArr);
    }

    public static void zzb(String str, Object... objArr) {
        Log.e(zza, b(str, objArr));
    }

    public static void zzc(Throwable th, String str, Object... objArr) {
        Log.e(zza, b(str, objArr), th);
    }

    public static void zzd(String str, Object... objArr) {
        if (zzb) {
            b(str, objArr);
        }
    }
}
