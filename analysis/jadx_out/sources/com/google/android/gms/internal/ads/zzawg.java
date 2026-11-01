package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;

/* loaded from: classes3.dex */
public final class zzawg {

    /* renamed from: d, reason: collision with root package name */
    public long f4541d = -1;

    /* renamed from: f, reason: collision with root package name */
    public long f4543f = -1;

    /* renamed from: g, reason: collision with root package name */
    public long f4544g = -1;

    /* renamed from: b, reason: collision with root package name */
    public long f4539b = -1;

    /* renamed from: c, reason: collision with root package name */
    public long f4540c = -1;

    /* renamed from: e, reason: collision with root package name */
    public long f4542e = -1;
    public long h = -1;

    /* renamed from: a, reason: collision with root package name */
    public long f4538a = -1;

    public final long zza() {
        return this.h;
    }

    public final long zzb() {
        return this.f4540c;
    }

    public final long zzc() {
        return this.f4541d;
    }

    public final long zzd() {
        return this.f4544g;
    }

    public final long zze() {
        return this.f4538a;
    }

    public final long zzf() {
        return this.f4542e;
    }

    public final long zzg() {
        return this.f4543f;
    }

    public final long zzh() {
        return this.f4539b;
    }

    public final void zzi() {
        this.f4538a = this.h;
        this.h = SystemClock.uptimeMillis();
    }

    public final void zzj() {
        this.f4543f = this.f4541d;
        this.f4541d = SystemClock.uptimeMillis();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00bd, code lost:
    
        if (r9.contains("REWARDED") != false) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzk(Context context, View view) {
        this.f4539b = this.f4544g;
        this.f4544g = SystemClock.uptimeMillis();
        long j = this.f4540c;
        if (j != -1) {
            this.f4542e = j;
        }
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        try {
            defaultDisplay.getRealMetrics(displayMetrics);
        } catch (NoSuchMethodError unused) {
            defaultDisplay.getMetrics(displayMetrics);
        }
        int i = displayMetrics.widthPixels * displayMetrics.heightPixels;
        if (view != null) {
            int min = Math.min(view.getHeight(), displayMetrics.heightPixels) * Math.min(view.getWidth(), displayMetrics.widthPixels);
            if (min + min < i) {
                if (min == 0) {
                    try {
                        if (view.getClass().getName().contains("DebugGestureViewWrapper")) {
                            view = ((ViewGroup) view).getChildAt(0);
                        }
                        Object invoke = view.getClass().getMethod("getAdConfiguration", null).invoke(view, null);
                        Integer num = (Integer) invoke.getClass().getField("adType").get(invoke);
                        num.intValue();
                        String str = (String) invoke.getClass().getMethod("adTypeToString", Integer.TYPE).invoke(null, num);
                        if (!str.contains("INTERSTITIAL") && !str.contains("APP_OPEN")) {
                        }
                    } catch (ReflectiveOperationException | SecurityException unused2) {
                    }
                }
            }
            this.f4540c = this.f4544g;
            return;
        }
        this.f4540c = -1L;
    }
}
