package com.google.android.gms.internal.ads;

import g.dcy;
import g.fzn;

/* loaded from: classes3.dex */
public final class zzekz implements zzefb {

    /* renamed from: a, reason: collision with root package name */
    public final zzeli f7195a;

    /* renamed from: b, reason: collision with root package name */
    public final zzbdi f7196b;

    /* renamed from: c, reason: collision with root package name */
    public final zzges f7197c;

    /* renamed from: d, reason: collision with root package name */
    public final zzfjr f7198d;

    public zzekz(zzfjr zzfjrVar, zzges zzgesVar, zzbdi zzbdiVar, zzeli zzeliVar) {
        this.f7198d = zzfjrVar;
        this.f7197c = zzgesVar;
        this.f7196b = zzbdiVar;
        this.f7195a = zzeliVar;
    }

    @Override // com.google.android.gms.internal.ads.zzefb
    public final dcy zza(zzfff zzfffVar, zzfet zzfetVar) {
        zzcao zzcaoVar = new zzcao();
        zzele zzeleVar = new zzele();
        zzeleVar.zzd(new fzn((Object) this, (dcy) zzcaoVar, (Object) zzfffVar, (Object) zzfetVar, (Object) zzeleVar, 15));
        zzfey zzfeyVar = zzfetVar.zzs;
        final zzbdd zzbddVar = new zzbdd(zzeleVar, zzfeyVar.zzb, zzfeyVar.zza);
        zzfjl zzfjlVar = zzfjl.CUSTOM_RENDER_SYN;
        return zzfjb.zzd(new zzfiw() { // from class: com.google.android.gms.internal.ads.zzekx
            @Override // com.google.android.gms.internal.ads.zzfiw
            public final void zza() {
                zzekz zzekzVar = zzekz.this;
                zzekzVar.f7196b.zze(zzbddVar);
            }
        }, this.f7197c, zzfjlVar, this.f7198d).zzb(zzfjl.CUSTOM_RENDER_ACK).zzd(zzcaoVar).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzefb
    public final boolean zzb(zzfff zzfffVar, zzfet zzfetVar) {
        zzfey zzfeyVar;
        return (this.f7196b == null || (zzfeyVar = zzfetVar.zzs) == null || zzfeyVar.zza == null) ? false : true;
    }
}
