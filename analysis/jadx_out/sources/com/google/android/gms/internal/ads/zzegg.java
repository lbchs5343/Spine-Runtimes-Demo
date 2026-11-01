package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import g.agd;
import g.bpp;
import g.cbz;
import g.dcy;
import g.edt;
import g.eno;
import g.fso;
import g.gin;
import j$.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzegg implements zzefh {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6923a;

    /* renamed from: b, reason: collision with root package name */
    public final zzcqh f6924b;

    /* renamed from: c, reason: collision with root package name */
    public final Executor f6925c;

    public zzegg(Context context, zzcqh zzcqhVar, Executor executor) {
        this.f6923a = context;
        this.f6924b = zzcqhVar;
        this.f6925c = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzefh
    public final Object zza(zzfff zzfffVar, final zzfet zzfetVar, zzefe zzefeVar) throws zzffv, zzeiz {
        final View zza;
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzhy)).booleanValue() && zzfetVar.zzag) {
            zzbpp zzc = ((zzfgm) zzefeVar.zzb).zzc();
            if (zzc == null) {
                agd.d("getInterscrollerAd should not be null after loadInterscrollerAd loaded ad.");
                throw new zzffv(new Exception("getInterscrollerAd should not be null after loadInterscrollerAd loaded ad."));
            }
            try {
                zza = (View) bpp.b(zzc.zze());
                boolean zzf = zzc.zzf();
                if (zza == null) {
                    throw new zzffv(new Exception("BannerAdapterWrapper interscrollerView should not be null"));
                }
                if (zzf) {
                    try {
                        zza = (View) zzgei.zzn(zzgei.zzh(null), new zzgdp() { // from class: com.google.android.gms.internal.ads.zzege
                            @Override // com.google.android.gms.internal.ads.zzgdp
                            public final dcy zza(Object obj) {
                                zzegg zzeggVar = zzegg.this;
                                return zzgei.zzh(zzcrc.zza(zzeggVar.f6923a, zza, zzfetVar));
                            }
                        }, zzcaj.zze).get();
                    } catch (InterruptedException | ExecutionException e2) {
                        throw new zzffv(e2);
                    }
                }
            } catch (RemoteException e3) {
                throw new zzffv(e3);
            }
        } else {
            zza = ((zzfgm) zzefeVar.zzb).zza();
        }
        zzcsg zzcsgVar = new zzcsg(zzfffVar, zzfetVar, zzefeVar.zza);
        final zzfgm zzfgmVar = (zzfgm) zzefeVar.zzb;
        Objects.requireNonNull(zzfgmVar);
        zzcpe zza2 = this.f6924b.zza(zzcsgVar, new zzcpk(zza, null, new zzcro() { // from class: com.google.android.gms.internal.ads.zzegf
            @Override // com.google.android.gms.internal.ads.zzcro
            public final cbz zza() {
                return zzfgm.this.zzb();
            }
        }, (zzfeu) zzfetVar.zzu.get(0)));
        zza2.zzg().zza(zza);
        zza2.zzd().zzo(new zzcmr((zzfgm) zzefeVar.zzb), this.f6925c);
        ((zzegx) zzefeVar.zzc).zzc(zza2.zzk());
        return zza2.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzefh
    public final void zzb(zzfff zzfffVar, zzfet zzfetVar, zzefe zzefeVar) throws zzffv {
        eno zza;
        eno enoVar = zzfffVar.zza.zza.zze;
        boolean z = enoVar.zzn;
        Context context = this.f6923a;
        if (z) {
            int i = enoVar.zze;
            int i2 = enoVar.zzb;
            gin ginVar = new gin(i, i2);
            ginVar.f18202d = true;
            ginVar.f18203e = i2;
            zza = new eno(context, ginVar);
        } else {
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzhy)).booleanValue() && zzfetVar.zzag) {
                int i3 = enoVar.zze;
                int i4 = enoVar.zzb;
                gin ginVar2 = new gin(i3, i4);
                ginVar2.f18205g = true;
                ginVar2.j = i4;
                zza = new eno(context, ginVar2);
            } else {
                zza = zzffu.zza(context, zzfetVar.zzu);
            }
        }
        eno enoVar2 = zza;
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzhy)).booleanValue() && zzfetVar.zzag) {
            zzfgm zzfgmVar = (zzfgm) zzefeVar.zzb;
            zzffo zzffoVar = zzfffVar.zza.zza;
            String jSONObject = zzfetVar.zzv.toString();
            String aj = fso.aj(zzfetVar.zzs);
            zzbpm zzbpmVar = (zzbpm) zzefeVar.zzc;
            zzfgmVar.zzn(this.f6923a, enoVar2, zzffoVar.zzd, jSONObject, aj, zzbpmVar);
            return;
        }
        zzfgm zzfgmVar2 = (zzfgm) zzefeVar.zzb;
        zzffo zzffoVar2 = zzfffVar.zza.zza;
        String jSONObject2 = zzfetVar.zzv.toString();
        String aj2 = fso.aj(zzfetVar.zzs);
        zzbpm zzbpmVar2 = (zzbpm) zzefeVar.zzc;
        zzfgmVar2.zzm(this.f6923a, enoVar2, zzffoVar2.zzd, jSONObject2, aj2, zzbpmVar2);
    }
}
