package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbbs;
import g.aeh;
import g.dcy;
import g.vv;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzfbq implements zzfck {

    /* renamed from: a, reason: collision with root package name */
    public final String f7775a;

    /* renamed from: b, reason: collision with root package name */
    public zzcvt f7776b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfck f7777c;

    /* renamed from: d, reason: collision with root package name */
    public final Executor f7778d;

    /* renamed from: e, reason: collision with root package name */
    public final zzfck f7779e;

    /* renamed from: f, reason: collision with root package name */
    public final zzfhy f7780f;

    public zzfbq(zzfck zzfckVar, zzfck zzfckVar2, zzfhy zzfhyVar, String str, Executor executor) {
        this.f7777c = zzfckVar;
        this.f7779e = zzfckVar2;
        this.f7780f = zzfhyVar;
        this.f7775a = str;
        this.f7778d = executor;
    }

    public final dcy g(zzfhl zzfhlVar, zzfcl zzfclVar) {
        zzcvt zzcvtVar = zzfhlVar.zza;
        this.f7776b = zzcvtVar;
        if (zzfhlVar.zzc != null) {
            if (zzcvtVar.zzf() != null) {
                zzfhlVar.zzc.zzp().zzl(zzfhlVar.zza.zzf());
            }
            return zzgei.zzh(zzfhlVar.zzc);
        }
        zzcvtVar.zzb().zzl(zzfhlVar.zzb);
        return ((zzfca) this.f7777c).zzb(zzfclVar, null, zzfhlVar.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfck
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final synchronized zzcvt zzd() {
        return this.f7776b;
    }

    @Override // com.google.android.gms.internal.ads.zzfck
    public final /* bridge */ /* synthetic */ dcy zzc(zzfcl zzfclVar, zzfcj zzfcjVar, Object obj) {
        return zzf(zzfclVar, zzfcjVar, null);
    }

    public final synchronized dcy zzf(final zzfcl zzfclVar, final zzfcj zzfcjVar, zzcvt zzcvtVar) {
        zzcvs zza = zzfcjVar.zza(zzfclVar.zzb);
        zza.zza(new zzfbr(this.f7775a));
        final zzcvt zzcvtVar2 = (zzcvt) zza.zzh();
        zzcvtVar2.zzg();
        zzcvtVar2.zzg();
        aeh aehVar = zzcvtVar2.zzg().zzd;
        if (aehVar.zzs != null || aehVar.zzx != null) {
            this.f7776b = zzcvtVar2;
            return ((zzfca) this.f7777c).zzb(zzfclVar, zzfcjVar, zzcvtVar2);
        }
        zzffo zzg = zzcvtVar2.zzg();
        final vv vvVar = new vv(zzfcjVar, zzfclVar, zzg.zzd, zzg.zzf, this.f7778d, zzg.zzj, null);
        return (zzgdz) zzgei.zzn(zzgdz.zzu(((zzfbw) this.f7779e).zzb(zzfclVar, zzfcjVar, zzcvtVar2)), new zzgdp() { // from class: com.google.android.gms.internal.ads.zzfbn
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                final zzfbq zzfbqVar = zzfbq.this;
                zzfcl zzfclVar2 = zzfclVar;
                vv vvVar2 = vvVar;
                zzfcj zzfcjVar2 = zzfcjVar;
                zzcvt zzcvtVar3 = zzcvtVar2;
                zzfbv zzfbvVar = (zzfbv) obj;
                zzfhy zzfhyVar = zzfbqVar.f7780f;
                if (zzfbvVar != null) {
                    vv vvVar3 = new vv(vvVar2.f20194c, vvVar2.f20196e, vvVar2.f20197f, vvVar2.f20192a, vvVar2.f20193b, vvVar2.f20195d, zzfbvVar.zza);
                    if (zzfbvVar.zzc != null) {
                        zzfbqVar.f7776b = null;
                        zzfhyVar.zze(vvVar3);
                        return zzfbqVar.g(zzfbvVar.zzc, zzfclVar2);
                    }
                    dcy zza2 = zzfhyVar.zza(vvVar3);
                    if (zza2 != null) {
                        zzfbqVar.f7776b = null;
                        return zzgei.zzn(zza2, new zzgdp() { // from class: com.google.android.gms.internal.ads.zzfbm
                            @Override // com.google.android.gms.internal.ads.zzgdp
                            public final dcy zza(Object obj2) {
                                zzfhx zzfhxVar;
                                zzfbq zzfbqVar2 = zzfbq.this;
                                zzfhv zzfhvVar = (zzfhv) obj2;
                                zzfbqVar2.getClass();
                                if (zzfhvVar == null || zzfhvVar.zza == null || (zzfhxVar = zzfhvVar.zzb) == null) {
                                    throw new zzdwn(1, "Empty prefetch");
                                }
                                zzbbs.zzb.zzc zzd = zzbbs.zzb.zzd();
                                zzbbs.zzb.zza.C0209zza zza3 = zzbbs.zzb.zza.zza();
                                zza3.zzf(zzbbs.zzb.zzd.IN_MEMORY);
                                zza3.zzh(zzbbs.zzb.zze.zzi());
                                zzd.zzd(zza3);
                                zzfhvVar.zza.zza.zzb().zzc().zzm(zzd.zzbr());
                                return zzfbqVar2.g(zzfhvVar.zza, ((vv) zzfhxVar).f20196e);
                            }
                        }, zzfbqVar.f7778d);
                    }
                    zzfhyVar.zze(vvVar3);
                    zzfclVar2 = new zzfcl(zzfclVar2.zzb, zzfbvVar.zzb);
                }
                dcy zzb = ((zzfca) zzfbqVar.f7777c).zzb(zzfclVar2, zzfcjVar2, zzcvtVar3);
                zzfbqVar.f7776b = zzcvtVar3;
                return zzb;
            }
        }, this.f7778d);
    }
}
