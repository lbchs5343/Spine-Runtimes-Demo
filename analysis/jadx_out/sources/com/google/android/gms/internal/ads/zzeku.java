package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import g.ase;
import g.cbz;
import g.dcy;

/* loaded from: classes3.dex */
public final class zzeku implements zzefb {

    /* renamed from: a, reason: collision with root package name */
    public final zzges f7185a;

    /* renamed from: b, reason: collision with root package name */
    public final zzfjr f7186b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f7187c;

    /* renamed from: d, reason: collision with root package name */
    public final zzcqh f7188d;

    /* renamed from: e, reason: collision with root package name */
    public final zzbdi f7189e;

    public zzeku(Context context, zzcqh zzcqhVar, zzfjr zzfjrVar, zzges zzgesVar, zzbdi zzbdiVar) {
        this.f7187c = context;
        this.f7188d = zzcqhVar;
        this.f7186b = zzfjrVar;
        this.f7185a = zzgesVar;
        this.f7189e = zzbdiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzefb
    public final dcy zza(zzfff zzfffVar, zzfet zzfetVar) {
        ase aseVar = new ase(new View(this.f7187c), null, new zzcro() { // from class: com.google.android.gms.internal.ads.zzekq
            @Override // com.google.android.gms.internal.ads.zzcro
            public final cbz zza() {
                return null;
            }
        }, (zzfeu) zzfetVar.zzu.get(0));
        zzcpe zza = this.f7188d.zza(new zzcsg(zzfffVar, zzfetVar, null), aseVar);
        zzekt zzl = zza.zzl();
        zzfey zzfeyVar = zzfetVar.zzs;
        final zzbdd zzbddVar = new zzbdd(zzl, zzfeyVar.zzb, zzfeyVar.zza);
        zzfjl zzfjlVar = zzfjl.CUSTOM_RENDER_SYN;
        return zzfjb.zzd(new zzfiw() { // from class: com.google.android.gms.internal.ads.zzekr
            @Override // com.google.android.gms.internal.ads.zzfiw
            public final void zza() {
                zzeku zzekuVar = zzeku.this;
                zzekuVar.f7189e.zze(zzbddVar);
            }
        }, this.f7185a, zzfjlVar, this.f7186b).zzb(zzfjl.CUSTOM_RENDER_ACK).zzd(zzgei.zzh(zza.zza())).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzefb
    public final boolean zzb(zzfff zzfffVar, zzfet zzfetVar) {
        zzfey zzfeyVar;
        return (this.f7189e == null || (zzfeyVar = zzfetVar.zzs) == null || zzfeyVar.zza == null) ? false : true;
    }
}
