package com.google.android.gms.internal.ads;

import android.content.Context;
import g.akx;
import g.dcy;
import g.dub;
import g.edt;
import g.ehr;
import g.ti;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzejy implements zzefb {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f7136a = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziy)).booleanValue();

    /* renamed from: b, reason: collision with root package name */
    public final zzffo f7137b;

    /* renamed from: c, reason: collision with root package name */
    public final Executor f7138c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f7139d;

    /* renamed from: e, reason: collision with root package name */
    public final akx f7140e;

    /* renamed from: f, reason: collision with root package name */
    public final zzeea f7141f;

    /* renamed from: g, reason: collision with root package name */
    public final zzdpn f7142g;
    public final zzdsh h;
    public final zzdow i;
    public final zzbju j;

    public zzejy(Context context, akx akxVar, zzffo zzffoVar, Executor executor, zzdow zzdowVar, zzdpn zzdpnVar, zzbju zzbjuVar, zzeea zzeeaVar, zzdsh zzdshVar) {
        this.f7139d = context;
        this.f7137b = zzffoVar;
        this.i = zzdowVar;
        this.f7138c = executor;
        this.f7140e = akxVar;
        this.f7142g = zzdpnVar;
        this.j = zzbjuVar;
        this.f7141f = zzeeaVar;
        this.h = zzdshVar;
    }

    @Override // com.google.android.gms.internal.ads.zzefb
    public final dcy zza(final zzfff zzfffVar, final zzfet zzfetVar) {
        final zzdpr zzdprVar = new zzdpr();
        dcy zzh = zzgei.zzh(null);
        zzgdp zzgdpVar = new zzgdp() { // from class: com.google.android.gms.internal.ads.zzejr
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                final zzejy zzejyVar = zzejy.this;
                final zzfet zzfetVar2 = zzfetVar;
                zzfff zzfffVar2 = zzfffVar;
                zzdpr zzdprVar2 = zzdprVar;
                zzdsh zzdshVar = zzejyVar.h;
                zzbce zzbceVar = zzbcn.zzck;
                zzbcl zzbclVar = edt.f15376a.f15379d;
                if (((Boolean) zzbclVar.zza(zzbceVar)).booleanValue()) {
                    dub.m(ti.f20033a.v, zzdshVar.zza(), zzdrv.RENDERING_WEBVIEW_CREATION_START.zza());
                }
                final zzcfk zza = zzejyVar.f7142g.zza(zzejyVar.f7137b.zze, zzfetVar2, zzfffVar2.zzb.zzb);
                zza.zzac(zzfetVar2.zzW);
                zzdprVar2.zza(zzejyVar.f7139d, zza.zzF());
                if (((Boolean) zzbclVar.zza(zzbceVar)).booleanValue()) {
                    dub.m(ti.f20033a.v, zzdshVar.zza(), zzdrv.RENDERING_WEBVIEW_CREATION_END.zza());
                }
                zzcao zzcaoVar = new zzcao();
                final zzdos zze = zzejyVar.i.zze(new zzcsg(zzfffVar2, zzfetVar2, null), new zzdot(new ehr(zzejyVar.f7139d, zzejyVar.f7142g, zzejyVar.f7137b, zzejyVar.f7140e, zzfetVar2, zzcaoVar, zza, zzejyVar.j, zzejyVar.f7136a, zzejyVar.f7141f, zzejyVar.h), zza));
                zzcaoVar.zzc(zze);
                if (((Boolean) zzbclVar.zza(zzbceVar)).booleanValue()) {
                    dub.m(ti.f20033a.v, zzdshVar.zza(), zzdrv.RENDERING_AD_COMPONENT_CREATION_END.zza());
                }
                zzbkj.zzb(zza, zze.zzg());
                zze.zzc().zzo(new zzcxg() { // from class: com.google.android.gms.internal.ads.zzejt
                    @Override // com.google.android.gms.internal.ads.zzcxg
                    public final void zzr() {
                        zzcfk zzcfkVar = zzcfk.this;
                        if (zzcfkVar.zzN() != null) {
                            zzcfkVar.zzN().zzr();
                        }
                    }
                }, zzcaj.zzf);
                zze.zzl().zzi(zza, true, zzejyVar.f7136a ? zzejyVar.j : null, zzdshVar.zza());
                String str = zzfetVar2.zzs.zza;
                if (((Boolean) zzbclVar.zza(zzbcn.zzfe)).booleanValue() && zze.zzm().zze(true)) {
                    str = zzcgv.zzb(str, zzcgv.zza(zzfetVar2));
                }
                zze.zzl();
                return zzgei.zzm(zzdpm.zzj(zza, zzfetVar2.zzs.zzb, str, zzdshVar.zza()), new zzfwh(zzejyVar, zza, zzfetVar2, zze) { // from class: com.google.android.gms.internal.ads.zzeju
                    public final /* synthetic */ zzcfk zza;
                    public final /* synthetic */ zzfet zzb;
                    public final /* synthetic */ zzdos zzc;

                    {
                        this.zza = zza;
                        this.zzb = zzfetVar2;
                        this.zzc = zze;
                    }

                    @Override // com.google.android.gms.internal.ads.zzfwh
                    public final Object apply(Object obj2) {
                        zzcfk zzcfkVar = this.zza;
                        if (this.zzb.zzM) {
                            zzcfkVar.zzah();
                        }
                        zzdos zzdosVar = this.zzc;
                        zzcfkVar.zzab();
                        zzcfkVar.onPause();
                        return zzdosVar.zzi();
                    }
                }, zzejyVar.f7138c);
            }
        };
        Executor executor = this.f7138c;
        dcy zzn = zzgei.zzn(zzh, zzgdpVar, executor);
        zzn.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzejs
            @Override // java.lang.Runnable
            public final void run() {
                zzdpr.this.zzb();
            }
        }, executor);
        return zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzefb
    public final boolean zzb(zzfff zzfffVar, zzfet zzfetVar) {
        zzfey zzfeyVar = zzfetVar.zzs;
        return (zzfeyVar == null || zzfeyVar.zza == null) ? false : true;
    }
}
