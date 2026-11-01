package com.google.android.gms.internal.ads;

import android.content.Context;
import android.opengl.EGL14;

/* loaded from: classes3.dex */
public final class zzdk {
    public static void zza(boolean z, String str) throws zzdj {
        if (!z) {
            throw new zzdj(str);
        }
    }

    public static boolean zzb(Context context) {
        String eglQueryString;
        int i = zzen.zza;
        return i >= 24 && (i >= 26 || !("samsung".equals(zzen.zzc) || "XT1650".equals(zzen.zzd))) && ((i >= 26 || context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) && (eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) != null && eglQueryString.contains("EGL_EXT_protected_content"));
    }

    public static boolean zzc() {
        String eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373);
        return eglQueryString != null && eglQueryString.contains("EGL_KHR_surfaceless_context");
    }
}
