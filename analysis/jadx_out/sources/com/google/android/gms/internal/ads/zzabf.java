package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.SystemClock;

/* loaded from: classes3.dex */
public final class zzabf {

    /* renamed from: a, reason: collision with root package name */
    public final Handler f4038a;

    /* renamed from: b, reason: collision with root package name */
    public final zzabg f4039b;

    public zzabf(Handler handler, zzabg zzabgVar) {
        this.f4038a = zzabgVar == null ? null : handler;
        this.f4039b = zzabgVar;
    }

    public final void zza(final String str, final long j, final long j2) {
        Handler handler = this.f4038a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzaav
                @Override // java.lang.Runnable
                public final void run() {
                    zzabf zzabfVar = zzabf.this;
                    String str2 = str;
                    long j3 = j;
                    long j4 = j2;
                    zzabfVar.getClass();
                    int i = zzen.zza;
                    zzabfVar.f4039b.zzp(str2, j3, j4);
                }
            });
        }
    }

    public final void zzb(final String str) {
        Handler handler = this.f4038a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzabe
                @Override // java.lang.Runnable
                public final void run() {
                    zzabf zzabfVar = zzabf.this;
                    String str2 = str;
                    zzabfVar.getClass();
                    int i = zzen.zza;
                    zzabfVar.f4039b.zzq(str2);
                }
            });
        }
    }

    public final void zzc(final zzhx zzhxVar) {
        zzhxVar.zza();
        Handler handler = this.f4038a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzabd
                @Override // java.lang.Runnable
                public final void run() {
                    zzabf zzabfVar = zzabf.this;
                    zzhx zzhxVar2 = zzhxVar;
                    zzabfVar.getClass();
                    zzhxVar2.zza();
                    int i = zzen.zza;
                    zzabfVar.f4039b.zzr(zzhxVar2);
                }
            });
        }
    }

    public final void zzd(final int i, final long j) {
        Handler handler = this.f4038a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzaax
                @Override // java.lang.Runnable
                public final void run() {
                    zzabf zzabfVar = zzabf.this;
                    int i2 = i;
                    long j2 = j;
                    zzabfVar.getClass();
                    int i3 = zzen.zza;
                    zzabfVar.f4039b.zzl(i2, j2);
                }
            });
        }
    }

    public final void zze(final zzhx zzhxVar) {
        Handler handler = this.f4038a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzabb
                @Override // java.lang.Runnable
                public final void run() {
                    zzabf zzabfVar = zzabf.this;
                    zzhx zzhxVar2 = zzhxVar;
                    zzabfVar.getClass();
                    int i = zzen.zza;
                    zzabfVar.f4039b.zzs(zzhxVar2);
                }
            });
        }
    }

    public final void zzf(final zzad zzadVar, final zzhy zzhyVar) {
        Handler handler = this.f4038a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzabc
                @Override // java.lang.Runnable
                public final void run() {
                    zzabf zzabfVar = zzabf.this;
                    zzad zzadVar2 = zzadVar;
                    zzhy zzhyVar2 = zzhyVar;
                    zzabfVar.getClass();
                    int i = zzen.zza;
                    zzabfVar.f4039b.zzu(zzadVar2, zzhyVar2);
                }
            });
        }
    }

    public final void zzq(final Object obj) {
        Handler handler = this.f4038a;
        if (handler != null) {
            final long elapsedRealtime = SystemClock.elapsedRealtime();
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzaay
                @Override // java.lang.Runnable
                public final void run() {
                    zzabf zzabfVar = zzabf.this;
                    Object obj2 = obj;
                    long j = elapsedRealtime;
                    zzabfVar.getClass();
                    int i = zzen.zza;
                    zzabfVar.f4039b.zzm(obj2, j);
                }
            });
        }
    }

    public final void zzr(final long j, final int i) {
        Handler handler = this.f4038a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzaaz
                @Override // java.lang.Runnable
                public final void run() {
                    zzabf zzabfVar = zzabf.this;
                    long j2 = j;
                    int i2 = i;
                    zzabfVar.getClass();
                    int i3 = zzen.zza;
                    zzabfVar.f4039b.zzt(j2, i2);
                }
            });
        }
    }

    public final void zzs(final Exception exc) {
        Handler handler = this.f4038a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzaba
                @Override // java.lang.Runnable
                public final void run() {
                    zzabf zzabfVar = zzabf.this;
                    Exception exc2 = exc;
                    zzabfVar.getClass();
                    int i = zzen.zza;
                    zzabfVar.f4039b.zzo(exc2);
                }
            });
        }
    }

    public final void zzt(final zzci zzciVar) {
        Handler handler = this.f4038a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzaaw
                @Override // java.lang.Runnable
                public final void run() {
                    zzabf zzabfVar = zzabf.this;
                    zzci zzciVar2 = zzciVar;
                    zzabfVar.getClass();
                    int i = zzen.zza;
                    zzabfVar.f4039b.zzv(zzciVar2);
                }
            });
        }
    }
}
