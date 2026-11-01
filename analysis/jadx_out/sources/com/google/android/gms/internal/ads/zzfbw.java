package com.google.android.gms.internal.ads;

import g.awi;
import g.cuf;
import g.dcy;
import g.dpa;
import g.eor;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzfbw implements zzfck {

    /* renamed from: a, reason: collision with root package name */
    public final zzfhc f7782a;

    /* renamed from: b, reason: collision with root package name */
    public final Executor f7783b;

    /* renamed from: c, reason: collision with root package name */
    public final cuf f7784c = new cuf(21);

    public zzfbw(zzfhc zzfhcVar, Executor executor) {
        this.f7782a = zzfhcVar;
        this.f7783b = executor;
    }

    public final dcy zzb(zzfcl zzfclVar, zzfcj zzfcjVar, final zzcvt zzcvtVar) {
        dcy zzh;
        dcy dcyVar;
        zzfhc zzfhcVar = this.f7782a;
        Executor executor = this.f7783b;
        dpa dpaVar = new dpa(zzfhcVar, zzcvtVar, executor);
        zzfce zzfceVar = (zzfce) dpaVar.f14565c;
        if (zzfceVar == null) {
            if (((Boolean) zzbeu.zza.zze()).booleanValue()) {
                dcyVar = (zzgdz) zzgei.zze((zzgdz) zzgei.zzm(zzgdz.zzu(zzcvtVar.zzb().zze(zzfhcVar.zza())), new awi(1, dpaVar), executor), zzdyw.class, new awi(0, dpaVar), executor);
            } else {
                zzffo zzg = zzcvtVar.zzg();
                zzfce zzfceVar2 = new zzfce(null, zzfhcVar.zzc(zzg.zzd, zzg.zzf, zzg.zzj));
                dpaVar.f14565c = zzfceVar2;
                dcyVar = zzgei.zzh(zzfceVar2);
            }
            zzh = zzgei.zzm(dcyVar, new zzfwh() { // from class: com.google.android.gms.internal.ads.zzfcb
                @Override // com.google.android.gms.internal.ads.zzfwh
                public final Object apply(Object obj) {
                    return (zzfce) obj;
                }
            }, executor);
        } else {
            zzh = zzgei.zzh(zzfceVar);
        }
        return (zzgdz) zzgei.zze((zzgdz) zzgei.zzn(zzgdz.zzu(zzh), new zzgdp() { // from class: com.google.android.gms.internal.ads.zzfbs
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                zzfbw zzfbwVar = zzfbw.this;
                zzcvt zzcvtVar2 = zzcvtVar;
                zzfce zzfceVar3 = (zzfce) obj;
                zzfhc zzfhcVar2 = zzfbwVar.f7782a;
                zzfhm zzfhmVar = zzfceVar3.zzb;
                zzbvx zzbvxVar = zzfceVar3.zza;
                zzfhl zzb = zzfhcVar2.zzb(zzfhmVar);
                if (zzb != null && zzbvxVar != null) {
                    zzgei.zzr(zzcvtVar2.zzb().zzh(zzbvxVar), zzfbwVar.f7784c, zzfbwVar.f7783b);
                }
                return zzgei.zzh(new zzfbv(zzfhmVar, zzbvxVar, zzb));
            }
        }, executor), Exception.class, new eor(2), executor);
    }

    @Override // com.google.android.gms.internal.ads.zzfck
    public final /* bridge */ /* synthetic */ dcy zzc(zzfcl zzfclVar, zzfcj zzfcjVar, Object obj) {
        return zzb(zzfclVar, zzfcjVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzfck
    public final /* bridge */ /* synthetic */ Object zzd() {
        return null;
    }
}
