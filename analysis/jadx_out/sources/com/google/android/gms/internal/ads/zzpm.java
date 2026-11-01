package com.google.android.gms.internal.ads;

import android.os.Handler;

/* loaded from: classes3.dex */
public final class zzpm {

    /* renamed from: a, reason: collision with root package name */
    public final Handler f8838a;

    /* renamed from: b, reason: collision with root package name */
    public final zzpn f8839b;

    public zzpm(Handler handler, zzpn zzpnVar) {
        this.f8838a = zzpnVar == null ? null : handler;
        this.f8839b = zzpnVar;
    }

    public final void zza(final Exception exc) {
        Handler handler = this.f8838a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpg
                @Override // java.lang.Runnable
                public final void run() {
                    zzpm zzpmVar = zzpm.this;
                    Exception exc2 = exc;
                    zzpmVar.getClass();
                    int i = zzen.zza;
                    zzpmVar.f8839b.zza(exc2);
                }
            });
        }
    }

    public final void zzb(final Exception exc) {
        Handler handler = this.f8838a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzph
                @Override // java.lang.Runnable
                public final void run() {
                    zzpm zzpmVar = zzpm.this;
                    Exception exc2 = exc;
                    zzpmVar.getClass();
                    int i = zzen.zza;
                    zzpmVar.f8839b.zzh(exc2);
                }
            });
        }
    }

    public final void zzc(final zzpo zzpoVar) {
        Handler handler = this.f8838a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpe
                @Override // java.lang.Runnable
                public final void run() {
                    zzpm zzpmVar = zzpm.this;
                    zzpo zzpoVar2 = zzpoVar;
                    zzpmVar.getClass();
                    int i = zzen.zza;
                    zzpmVar.f8839b.zzi(zzpoVar2);
                }
            });
        }
    }

    public final void zzd(final zzpo zzpoVar) {
        Handler handler = this.f8838a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpf
                @Override // java.lang.Runnable
                public final void run() {
                    zzpm zzpmVar = zzpm.this;
                    zzpo zzpoVar2 = zzpoVar;
                    zzpmVar.getClass();
                    int i = zzen.zza;
                    zzpmVar.f8839b.zzj(zzpoVar2);
                }
            });
        }
    }

    public final void zze(final String str, final long j, final long j2) {
        Handler handler = this.f8838a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpk
                @Override // java.lang.Runnable
                public final void run() {
                    zzpm zzpmVar = zzpm.this;
                    String str2 = str;
                    long j3 = j;
                    long j4 = j2;
                    zzpmVar.getClass();
                    int i = zzen.zza;
                    zzpmVar.f8839b.zzb(str2, j3, j4);
                }
            });
        }
    }

    public final void zzf(final String str) {
        Handler handler = this.f8838a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpl
                @Override // java.lang.Runnable
                public final void run() {
                    zzpm zzpmVar = zzpm.this;
                    String str2 = str;
                    zzpmVar.getClass();
                    int i = zzen.zza;
                    zzpmVar.f8839b.zzc(str2);
                }
            });
        }
    }

    public final void zzg(final zzhx zzhxVar) {
        zzhxVar.zza();
        Handler handler = this.f8838a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpb
                @Override // java.lang.Runnable
                public final void run() {
                    zzpm zzpmVar = zzpm.this;
                    zzhx zzhxVar2 = zzhxVar;
                    zzpmVar.getClass();
                    zzhxVar2.zza();
                    int i = zzen.zza;
                    zzpmVar.f8839b.zzd(zzhxVar2);
                }
            });
        }
    }

    public final void zzh(final zzhx zzhxVar) {
        Handler handler = this.f8838a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpa
                @Override // java.lang.Runnable
                public final void run() {
                    zzpm zzpmVar = zzpm.this;
                    zzhx zzhxVar2 = zzhxVar;
                    zzpmVar.getClass();
                    int i = zzen.zza;
                    zzpmVar.f8839b.zze(zzhxVar2);
                }
            });
        }
    }

    public final void zzi(final zzad zzadVar, final zzhy zzhyVar) {
        Handler handler = this.f8838a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpi
                @Override // java.lang.Runnable
                public final void run() {
                    zzpm zzpmVar = zzpm.this;
                    zzad zzadVar2 = zzadVar;
                    zzhy zzhyVar2 = zzhyVar;
                    zzpmVar.getClass();
                    int i = zzen.zza;
                    zzpmVar.f8839b.zzf(zzadVar2, zzhyVar2);
                }
            });
        }
    }

    public final void zzv(final long j) {
        Handler handler = this.f8838a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpc
                @Override // java.lang.Runnable
                public final void run() {
                    zzpm zzpmVar = zzpm.this;
                    long j2 = j;
                    zzpmVar.getClass();
                    int i = zzen.zza;
                    zzpmVar.f8839b.zzg(j2);
                }
            });
        }
    }

    public final void zzw(final boolean z) {
        Handler handler = this.f8838a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpj
                @Override // java.lang.Runnable
                public final void run() {
                    zzpm zzpmVar = zzpm.this;
                    boolean z2 = z;
                    zzpmVar.getClass();
                    int i = zzen.zza;
                    zzpmVar.f8839b.zzn(z2);
                }
            });
        }
    }

    public final void zzx(final int i, final long j, final long j2) {
        Handler handler = this.f8838a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpd
                @Override // java.lang.Runnable
                public final void run() {
                    zzpm zzpmVar = zzpm.this;
                    int i2 = i;
                    long j3 = j;
                    long j4 = j2;
                    zzpmVar.getClass();
                    int i3 = zzen.zza;
                    zzpmVar.f8839b.zzk(i2, j3, j4);
                }
            });
        }
    }
}
