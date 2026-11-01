package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import g.cbz;
import g.cpm;
import g.dcy;
import g.dub;
import g.edt;
import g.eno;
import g.gfk;
import g.ti;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzegc implements zzefb {

    /* renamed from: a, reason: collision with root package name */
    public final zzffo f6909a;

    /* renamed from: b, reason: collision with root package name */
    public final Executor f6910b;

    /* renamed from: c, reason: collision with root package name */
    public final zzcqh f6911c;

    /* renamed from: d, reason: collision with root package name */
    public final zzfwh f6912d;

    /* renamed from: e, reason: collision with root package name */
    public final Context f6913e;

    /* renamed from: f, reason: collision with root package name */
    public final zzdpn f6914f;

    /* renamed from: g, reason: collision with root package name */
    public final zzdsh f6915g;

    public zzegc(zzcqh zzcqhVar, Context context, Executor executor, zzdpn zzdpnVar, zzffo zzffoVar, zzfwh zzfwhVar, zzdsh zzdshVar) {
        this.f6913e = context;
        this.f6911c = zzcqhVar;
        this.f6910b = executor;
        this.f6914f = zzdpnVar;
        this.f6909a = zzffoVar;
        this.f6912d = zzfwhVar;
        this.f6915g = zzdshVar;
    }

    @Override // com.google.android.gms.internal.ads.zzefb
    public final dcy zza(final zzfff zzfffVar, final zzfet zzfetVar) {
        return zzgei.zzn(zzgei.zzh(null), new zzgdp() { // from class: com.google.android.gms.internal.ads.zzegb
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                final zzegc zzegcVar = zzegc.this;
                zzfff zzfffVar2 = zzfffVar;
                zzfet zzfetVar2 = zzfetVar;
                Executor executor = zzegcVar.f6910b;
                Context context = zzegcVar.f6913e;
                zzdsh zzdshVar = zzegcVar.f6915g;
                zzbce zzbceVar = zzbcn.zzck;
                zzbcl zzbclVar = edt.f15376a.f15379d;
                if (((Boolean) zzbclVar.zza(zzbceVar)).booleanValue()) {
                    dub.m(ti.f20033a.v, zzdshVar.zza(), zzdrv.RENDERING_WEBVIEW_CREATION_START.zza());
                }
                eno zza = zzffu.zza(context, zzfetVar2.zzu);
                final zzcfk zza2 = zzegcVar.f6914f.zza(zza, zzfetVar2, zzfffVar2.zzb.zzb);
                zza2.zzac(zzfetVar2.zzW);
                View zza3 = (((Boolean) zzbclVar.zza(zzbcn.zzhy)).booleanValue() && zzfetVar2.zzag) ? zzcrc.zza(context, zza2.zzF(), zzfetVar2) : new zzdpq(context, zza2.zzF(), (gfk) zzegcVar.f6912d.apply(zzfetVar2));
                if (((Boolean) zzbclVar.zza(zzbceVar)).booleanValue()) {
                    dub.m(ti.f20033a.v, zzdshVar.zza(), zzdrv.RENDERING_WEBVIEW_CREATION_END.zza());
                }
                final zzcpe zza4 = zzegcVar.f6911c.zza(new zzcsg(zzfffVar2, zzfetVar2, null), new zzcpk(zza3, zza2, new zzcro() { // from class: com.google.android.gms.internal.ads.zzefw
                    @Override // com.google.android.gms.internal.ads.zzcro
                    public final cbz zza() {
                        return zzcfk.this.zzq();
                    }
                }, zzffu.zzb(zza)));
                if (((Boolean) zzbclVar.zza(zzbceVar)).booleanValue()) {
                    dub.m(ti.f20033a.v, zzdshVar.zza(), zzdrv.RENDERING_AD_COMPONENT_CREATION_END.zza());
                }
                zza4.zzh().zzi(zza2, false, null, zzdshVar.zza());
                zzcxe zzc = zza4.zzc();
                zzcxg zzcxgVar = new zzcxg() { // from class: com.google.android.gms.internal.ads.zzefx
                    @Override // com.google.android.gms.internal.ads.zzcxg
                    public final void zzr() {
                        zzcfk zzcfkVar = zzcfk.this;
                        if (zzcfkVar.zzN() != null) {
                            zzcfkVar.zzN().zzr();
                        }
                    }
                };
                zzges zzgesVar = zzcaj.zzf;
                zzc.zzo(zzcxgVar, zzgesVar);
                String str = zzfetVar2.zzs.zza;
                if (((Boolean) zzbclVar.zza(zzbcn.zzfe)).booleanValue() && zza4.zzi().zze(true)) {
                    str = zzcgv.zzb(str, zzcgv.zza(zzfetVar2));
                }
                zza4.zzh();
                dcy zzj = zzdpm.zzj(zza2, zzfetVar2.zzs.zzb, str, zzdshVar.zza());
                if (zzfetVar2.zzM) {
                    zzj.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzefy
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzcfk.this.zzah();
                        }
                    }, executor);
                }
                zzj.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzefz
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzegc zzegcVar2 = zzegc.this;
                        zzcfk zzcfkVar = zza2;
                        zzegcVar2.getClass();
                        zzcfkVar.zzab();
                        zzffo zzffoVar = zzegcVar2.f6909a;
                        zzcgm zzq = zzcfkVar.zzq();
                        cpm cpmVar = zzffoVar.zza;
                        if (cpmVar != null && zzq != null) {
                            zzq.zzs(cpmVar);
                        }
                        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbp)).booleanValue() || zzcfkVar.isAttachedToWindow()) {
                            return;
                        }
                        zzcfkVar.onPause();
                        zzcfkVar.zzav(true);
                    }
                }, executor);
                return zzgei.zzm(zzj, new zzfwh() { // from class: com.google.android.gms.internal.ads.zzega
                    @Override // com.google.android.gms.internal.ads.zzfwh
                    public final Object apply(Object obj2) {
                        return zzcpe.this.zza();
                    }
                }, zzgesVar);
            }
        }, this.f6910b);
    }

    @Override // com.google.android.gms.internal.ads.zzefb
    public final boolean zzb(zzfff zzfffVar, zzfet zzfetVar) {
        zzfey zzfeyVar = zzfetVar.zzs;
        return (zzfeyVar == null || zzfeyVar.zza == null) ? false : true;
    }
}
