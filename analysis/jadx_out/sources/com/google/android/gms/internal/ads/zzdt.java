package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import android.util.Log;
import java.net.UnknownHostException;

/* loaded from: classes3.dex */
public final class zzdt {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f6488a = new Object();

    public static String zza(String str, Throwable th) {
        String replace;
        if (th != null) {
            synchronized (f6488a) {
                Throwable th2 = th;
                while (true) {
                    if (th2 == null) {
                        replace = Log.getStackTraceString(th).trim().replace("\t", "    ");
                        break;
                    }
                    try {
                        if (th2 instanceof UnknownHostException) {
                            replace = "UnknownHostException (no network)";
                        } else {
                            th2 = th2.getCause();
                        }
                    } finally {
                    }
                }
            }
        } else {
            replace = null;
        }
        if (TextUtils.isEmpty(replace)) {
            return str;
        }
        return str + "\n  " + replace.replace("\n", "\n  ") + "\n";
    }

    public static void zzb(String str, String str2) {
        synchronized (f6488a) {
            zza(str2, null);
        }
    }

    public static void zzc(String str, String str2) {
        synchronized (f6488a) {
            Log.e(str, zza(str2, null));
        }
    }

    public static void zzd(String str, String str2, Throwable th) {
        synchronized (f6488a) {
            Log.e(str, zza(str2, th));
        }
    }

    public static void zze(String str, String str2) {
        synchronized (f6488a) {
            zza(str2, null);
        }
    }

    public static void zzf(String str, String str2) {
        synchronized (f6488a) {
            zza(str2, null);
        }
    }

    public static void zzg(String str, String str2, Throwable th) {
        synchronized (f6488a) {
            zza(str2, th);
        }
    }
}
