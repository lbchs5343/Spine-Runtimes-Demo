package com.google.android.gms.internal.ads;

import android.content.Context;
import g.akx;
import g.dcy;
import g.dub;
import g.edt;
import g.guf;
import g.ti;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzehe implements zzefb {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f6959a = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziy)).booleanValue();

    /* renamed from: b, reason: collision with root package name */
    public final zzffo f6960b;

    /* renamed from: c, reason: collision with root package name */
    public final Executor f6961c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f6962d;

    /* renamed from: e, reason: collision with root package name */
    public final akx f6963e;

    /* renamed from: f, reason: collision with root package name */
    public final zzeea f6964f;

    /* renamed from: g, reason: collision with root package name */
    public final zzdpn f6965g;
    public final zzdsh h;
    public final zzdgn i;
    public final zzbju j;

    public zzehe(Context context, akx akxVar, zzffo zzffoVar, Executor executor, zzdgn zzdgnVar, zzdpn zzdpnVar, zzbju zzbjuVar, zzeea zzeeaVar, zzdsh zzdshVar) {
        this.f6962d = context;
        this.f6960b = zzffoVar;
        this.i = zzdgnVar;
        this.f6961c = executor;
        this.f6963e = akxVar;
        this.f6965g = zzdpnVar;
        this.j = zzbjuVar;
        this.f6964f = zzeeaVar;
        this.h = zzdshVar;
    }

    @Override // com.google.android.gms.internal.ads.zzefb
    public final dcy zza(final zzfff zzfffVar, final zzfet zzfetVar) {
        final zzdpr zzdprVar = new zzdpr();
        dcy zzh = zzgei.zzh(null);
        zzgdp zzgdpVar = new zzgdp() { // from class: com.google.android.gms.internal.ads.zzehb
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                zzehe zzeheVar = zzehe.this;
                zzfet zzfetVar2 = zzfetVar;
                zzfff zzfffVar2 = zzfffVar;
                zzdpr zzdprVar2 = zzdprVar;
                zzdsh zzdshVar = zzeheVar.h;
                zzbce zzbceVar = zzbcn.zzck;
                zzbcl zzbclVar = edt.f15376a.f15379d;
                if (((Boolean) zzbclVar.zza(zzbceVar)).booleanValue()) {
                    dub.m(ti.f20033a.v, zzdshVar.zza(), zzdrv.RENDERING_WEBVIEW_CREATION_START.zza());
                }
                final zzcfk zza = zzeheVar.f6965g.zza(zzeheVar.f6960b.zze, zzfetVar2, zzfffVar2.zzb.zzb);
                zza.zzac(zzfetVar2.zzW);
                zzdprVar2.zza(zzeheVar.f6962d, zza.zzF());
                if (((Boolean) zzbclVar.zza(zzbceVar)).booleanValue()) {
                    dub.m(ti.f20033a.v, zzdshVar.zza(), zzdrv.RENDERING_WEBVIEW_CREATION_END.zza());
                }
                zzcao zzcaoVar = new zzcao();
                zzdfk zze = zzeheVar.i.zze(new zzcsg(zzfffVar2, zzfetVar2, null), new zzdfn(new guf(zzeheVar.f6962d, zzeheVar.f6963e, zzcaoVar, zzfetVar2, zza, zzeheVar.f6960b, zzeheVar.f6959a, zzeheVar.j, zzeheVar.f6964f), zza));
                zzcaoVar.zzc(zze);
                if (((Boolean) zzbclVar.zza(zzbceVar)).booleanValue()) {
                    dub.m(ti.f20033a.v, zzdshVar.zza(), zzdrv.RENDERING_AD_COMPONENT_CREATION_END.zza());
                }
                zze.zzc().zzo(new zzcxg() { // from class: com.google.android.gms.internal.ads.zzegz
                    @Override // com.google.android.gms.internal.ads.zzcxg
                    public final void zzr() {
                        zzcfk zzcfkVar = zzcfk.this;
                        if (zzcfkVar.zzN() != null) {
                            zzcfkVar.zzN().zzr();
                        }
                    }
                }, zzcaj.zzf);
                String str = zzfetVar2.zzs.zza;
                if (((Boolean) zzbclVar.zza(zzbcn.zzfe)).booleanValue() && zze.zzl().zze(true)) {
                    str = zzcgv.zzb(str, zzcgv.zza(zzfetVar2));
                }
                zze.zzi().zzi(zza, true, zzeheVar.f6959a ? zzeheVar.j : null, zzdshVar.zza());
                zze.zzi();
                return zzgei.zzm(zzdpm.zzj(zza, zzfetVar2.zzs.zzb, str, zzdshVar.zza()), new zzfwh(zzeheVar, zza, zzfetVar2, zze) { // from class: com.google.android.gms.internal.ads.zzeha
                    public final /* synthetic */ zzcfk zza;
                    public final /* synthetic */ zzfet zzb;
                    public final /* synthetic */ zzdfk zzc;

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
                        zzdfk zzdfkVar = this.zzc;
                        zzcfkVar.zzab();
                        zzcfkVar.onPause();
                        return zzdfkVar.zzg();
                    }
                }, zzeheVar.f6961c);
            }
        };
        Executor executor = this.f6961c;
        dcy zzn = zzgei.zzn(zzh, zzgdpVar, executor);
        zzn.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzehc
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
