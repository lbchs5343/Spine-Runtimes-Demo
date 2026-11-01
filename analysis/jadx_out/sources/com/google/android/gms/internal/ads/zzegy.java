package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import g.agd;
import g.bjq;
import g.dwi;
import g.fae;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzegy extends zzbwt implements zzcxw {

    /* renamed from: a, reason: collision with root package name */
    public zzdew f6956a;

    /* renamed from: b, reason: collision with root package name */
    public zzbwu f6957b;

    /* renamed from: c, reason: collision with root package name */
    public zzcxv f6958c;

    @Override // com.google.android.gms.internal.ads.zzcxw
    public final synchronized void zza(zzcxv zzcxvVar) {
        this.f6958c = zzcxvVar;
    }

    public final synchronized void zzc(zzbwu zzbwuVar) {
        this.f6957b = zzbwuVar;
    }

    public final synchronized void zzd(zzdew zzdewVar) {
        this.f6956a = zzdewVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbwu
    public final synchronized void zze(bjq bjqVar) throws RemoteException {
        zzbwu zzbwuVar = this.f6957b;
        if (zzbwuVar != null) {
            ((fae) zzbwuVar).f16460d.onAdClicked();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwu
    public final synchronized void zzf(bjq bjqVar) throws RemoteException {
        zzbwu zzbwuVar = this.f6957b;
        if (zzbwuVar != null) {
            zzbwuVar.zzf(bjqVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwu
    public final synchronized void zzg(bjq bjqVar, int i) throws RemoteException {
        zzcxv zzcxvVar = this.f6958c;
        if (zzcxvVar != null) {
            zzcxvVar.zza(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwu
    public final synchronized void zzh(bjq bjqVar) throws RemoteException {
        zzbwu zzbwuVar = this.f6957b;
        if (zzbwuVar != null) {
            ((fae) zzbwuVar).f16457a.zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwu
    public final synchronized void zzi(bjq bjqVar) throws RemoteException {
        zzcxv zzcxvVar = this.f6958c;
        if (zzcxvVar != null) {
            zzcxvVar.zzd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwu
    public final synchronized void zzj(bjq bjqVar) throws RemoteException {
        zzbwu zzbwuVar = this.f6957b;
        if (zzbwuVar != null) {
            ((fae) zzbwuVar).f16459c.zzdr();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwu
    public final synchronized void zzk(bjq bjqVar, int i) throws RemoteException {
        zzdew zzdewVar = this.f6956a;
        if (zzdewVar != null) {
            agd.b("Fail to initialize adapter ".concat(String.valueOf(((dwi) zzdewVar).f14940d.zza)));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwu
    public final synchronized void zzl(bjq bjqVar) throws RemoteException {
        zzdew zzdewVar = this.f6956a;
        if (zzdewVar != null) {
            Executor executor = ((dwi) zzdewVar).f14937a.f7155b;
            final dwi dwiVar = (dwi) zzdewVar;
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzekb
                @Override // java.lang.Runnable
                public final void run() {
                    dwi dwiVar2 = dwi.this;
                    zzeke zzekeVar = dwiVar2.f14937a;
                    zzeke.d(dwiVar2.f14938b, dwiVar2.f14939c, dwiVar2.f14940d);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwu
    public final synchronized void zzm(bjq bjqVar, zzbwv zzbwvVar) throws RemoteException {
        zzbwu zzbwuVar = this.f6957b;
        if (zzbwuVar != null) {
            ((fae) zzbwuVar).f16458b.zza(zzbwvVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwu
    public final synchronized void zzn(bjq bjqVar) throws RemoteException {
        zzbwu zzbwuVar = this.f6957b;
        if (zzbwuVar != null) {
            ((fae) zzbwuVar).f16457a.zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwu
    public final synchronized void zzo(bjq bjqVar) throws RemoteException {
        zzbwu zzbwuVar = this.f6957b;
        if (zzbwuVar != null) {
            ((fae) zzbwuVar).f16458b.zzc();
        }
    }
}
