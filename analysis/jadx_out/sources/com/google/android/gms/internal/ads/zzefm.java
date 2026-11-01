package com.google.android.gms.internal.ads;

import android.content.Context;
import g.akx;
import g.bte;
import g.dcy;
import g.dub;
import g.edt;
import g.ti;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzefm implements zzefb {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f6886a = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziy)).booleanValue();

    /* renamed from: b, reason: collision with root package name */
    public final zzffo f6887b;

    /* renamed from: c, reason: collision with root package name */
    public final Executor f6888c;

    /* renamed from: d, reason: collision with root package name */
    public final zzcor f6889d;

    /* renamed from: e, reason: collision with root package name */
    public final akx f6890e;

    /* renamed from: f, reason: collision with root package name */
    public final zzeea f6891f;

    /* renamed from: g, reason: collision with root package name */
    public final Context f6892g;
    public final zzdsh h;
    public final zzdpn i;
    public final zzbju j;

    public zzefm(zzcor zzcorVar, Context context, Executor executor, zzdpn zzdpnVar, zzffo zzffoVar, akx akxVar, zzbju zzbjuVar, zzeea zzeeaVar, zzdsh zzdshVar) {
        this.f6892g = context;
        this.f6889d = zzcorVar;
        this.f6888c = executor;
        this.i = zzdpnVar;
        this.f6887b = zzffoVar;
        this.f6890e = akxVar;
        this.j = zzbjuVar;
        this.f6891f = zzeeaVar;
        this.h = zzdshVar;
    }

    @Override // com.google.android.gms.internal.ads.zzefb
    public final dcy zza(final zzfff zzfffVar, final zzfet zzfetVar) {
        final zzdpr zzdprVar = new zzdpr();
        dcy zzh = zzgei.zzh(null);
        zzgdp zzgdpVar = new zzgdp() { // from class: com.google.android.gms.internal.ads.zzefi
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                final zzefm zzefmVar = zzefm.this;
                final zzfet zzfetVar2 = zzfetVar;
                zzfff zzfffVar2 = zzfffVar;
                zzdpr zzdprVar2 = zzdprVar;
                zzdsh zzdshVar = zzefmVar.h;
                zzbce zzbceVar = zzbcn.zzck;
                zzbcl zzbclVar = edt.f15376a.f15379d;
                if (((Boolean) zzbclVar.zza(zzbceVar)).booleanValue()) {
                    dub.m(ti.f20033a.v, zzdshVar.zza(), zzdrv.RENDERING_WEBVIEW_CREATION_START.zza());
                }
                final zzcfk zza = zzefmVar.i.zza(zzefmVar.f6887b.zze, zzfetVar2, zzfffVar2.zzb.zzb);
                zza.zzac(zzfetVar2.zzW);
                zzdprVar2.zza(zzefmVar.f6892g, zza.zzF());
                if (((Boolean) zzbclVar.zza(zzbceVar)).booleanValue()) {
                    dub.m(ti.f20033a.v, zzdshVar.zza(), zzdrv.RENDERING_WEBVIEW_CREATION_END.zza());
                }
                zzcao zzcaoVar = new zzcao();
                final zzcoo zza2 = zzefmVar.f6889d.zza(new zzcsg(zzfffVar2, zzfetVar2, null), new zzdfn(new bte(zzefmVar.f6890e, zzcaoVar, zzfetVar2, zza, zzefmVar.f6887b, zzefmVar.f6886a, zzefmVar.j, zzefmVar.f6891f), zza), new zzcop(zzfetVar2.zzaa));
                if (((Boolean) zzbclVar.zza(zzbceVar)).booleanValue()) {
                    dub.m(ti.f20033a.v, zzdshVar.zza(), zzdrv.RENDERING_AD_COMPONENT_CREATION_END.zza());
                }
                zza2.zzh().zzi(zza, false, zzefmVar.f6886a ? zzefmVar.j : null, zzdshVar.zza());
                zzcaoVar.zzc(zza2);
                zza2.zzc().zzo(new zzcxg() { // from class: com.google.android.gms.internal.ads.zzefk
                    @Override // com.google.android.gms.internal.ads.zzcxg
                    public final void zzr() {
                        zzcfk zzcfkVar = zzcfk.this;
                        if (zzcfkVar.zzN() != null) {
                            zzcfkVar.zzN().zzr();
                        }
                    }
                }, zzcaj.zzf);
                String str = zzfetVar2.zzs.zza;
                if (((Boolean) zzbclVar.zza(zzbcn.zzfe)).booleanValue() && zza2.zzi().zze(true)) {
                    str = zzcgv.zzb(str, zzcgv.zza(zzfetVar2));
                }
                zza2.zzh();
                return zzgei.zzm(zzdpm.zzj(zza, zzfetVar2.zzs.zzb, str, zzdshVar.zza()), new zzfwh(zzefmVar, zza, zzfetVar2, zza2) { // from class: com.google.android.gms.internal.ads.zzefl
                    public final /* synthetic */ zzcfk zza;
                    public final /* synthetic */ zzfet zzb;
                    public final /* synthetic */ zzcoo zzc;

                    {
                        this.zza = zza;
                        this.zzb = zzfetVar2;
                        this.zzc = zza2;
                    }

                    @Override // com.google.android.gms.internal.ads.zzfwh
                    public final Object apply(Object obj2) {
                        zzcfk zzcfkVar = this.zza;
                        if (this.zzb.zzM) {
                            zzcfkVar.zzah();
                        }
                        zzcoo zzcooVar = this.zzc;
                        zzcfkVar.zzab();
                        zzcfkVar.onPause();
                        return zzcooVar.zza();
                    }
                }, zzefmVar.f6888c);
            }
        };
        Executor executor = this.f6888c;
        dcy zzn = zzgei.zzn(zzh, zzgdpVar, executor);
        zzn.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzefj
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
