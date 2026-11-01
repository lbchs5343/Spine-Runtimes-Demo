package com.google.android.gms.internal.ads;

import android.content.Context;
import g.bgb;
import g.cmo;
import g.edt;
import g.ti;

/* loaded from: classes3.dex */
public final class zzfcm implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7788a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7789b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f7790c;

    public zzfcm(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3) {
        this.f7788a = zzhgpVar;
        this.f7789b = zzhgpVar2;
        this.f7790c = zzhgpVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzfck zzb() {
        zzbzt zzbztVar;
        Context context = (Context) this.f7788a.zzb();
        zzfgy zzfgyVar = (zzfgy) this.f7789b.zzb();
        zzfhq zzfhqVar = (zzfhq) this.f7790c.zzb();
        zzbce zzbceVar = zzbcn.zzgh;
        edt edtVar = edt.f15376a;
        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
            zzbztVar = ((cmo) ti.f20033a.f20034ab.zzi()).av();
        } else {
            cmo cmoVar = (cmo) ti.f20033a.f20034ab.zzi();
            synchronized (cmoVar.k) {
                zzbztVar = cmoVar.f13133f;
            }
        }
        boolean z = false;
        if (zzbztVar != null && zzbztVar.zzh()) {
            z = true;
        }
        if (((Integer) edtVar.f15379d.zza(zzbcn.zzgx)).intValue() > 0) {
            if (!((Boolean) edtVar.f15379d.zza(zzbcn.zzgg)).booleanValue() || z) {
                zzfhp zza = zzfhqVar.zza(zzfhg.zzc, context, zzfgyVar, new bgb(1, new zzfbl()));
                zzfca zzfcaVar = new zzfca(new zzfbz());
                zzfhc zzfhcVar = zza.zza;
                zzges zzgesVar = zzcaj.zza;
                return new zzfbq(zzfcaVar, new zzfbw(zzfhcVar, zzgesVar), zza.zzb, zza.zza.zza().zzf, zzgesVar);
            }
        }
        return new zzfbz();
    }
}
