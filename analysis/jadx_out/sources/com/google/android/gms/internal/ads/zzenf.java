package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import g.abz;
import g.agd;
import g.ejp;

/* loaded from: classes3.dex */
public final class zzenf {

    /* renamed from: a, reason: collision with root package name */
    public final zzdjj f7282a;

    /* renamed from: b, reason: collision with root package name */
    public final zzems f7283b;

    /* renamed from: c, reason: collision with root package name */
    public final zzene f7284c;

    /* JADX WARN: Type inference failed for: r3v1, types: [com.google.android.gms.internal.ads.zzene] */
    public zzenf(zzdjj zzdjjVar, zzdsm zzdsmVar) {
        this.f7282a = zzdjjVar;
        final zzems zzemsVar = new zzems(zzdsmVar);
        this.f7283b = zzemsVar;
        final zzbmk zzg = zzdjjVar.zzg();
        this.f7284c = new zzcwp() { // from class: com.google.android.gms.internal.ads.zzene
            @Override // com.google.android.gms.internal.ads.zzcwp
            public final void zzdB(abz abzVar) {
                zzems.this.zzdB(abzVar);
                zzbmk zzbmkVar = zzg;
                if (zzbmkVar != null) {
                    try {
                        zzbmkVar.zzf(abzVar);
                    } catch (RemoteException e2) {
                        agd.g("#007 Could not call remote method.", e2);
                    }
                }
                if (zzbmkVar != null) {
                    try {
                        zzbmkVar.zze(abzVar.zza);
                    } catch (RemoteException e3) {
                        agd.g("#007 Could not call remote method.", e3);
                    }
                }
            }
        };
    }

    public final zzcwp zza() {
        return this.f7284c;
    }

    public final zzcya zzb() {
        return this.f7283b;
    }

    public final zzdhe zzc() {
        return new zzdhe(this.f7282a, this.f7283b.zzg());
    }

    public final zzems zzd() {
        return this.f7283b;
    }

    public final void zze(ejp ejpVar) {
        this.f7283b.zzj(ejpVar);
    }
}
