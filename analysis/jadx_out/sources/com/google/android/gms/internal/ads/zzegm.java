package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import g.bpp;
import g.cbz;
import g.dcy;
import g.dlk;
import g.edt;
import java.util.concurrent.ExecutionException;

/* loaded from: classes3.dex */
public final class zzegm implements zzefh {

    /* renamed from: a, reason: collision with root package name */
    public zzbpp f6929a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f6930b;

    /* renamed from: c, reason: collision with root package name */
    public final zzcqh f6931c;

    /* renamed from: d, reason: collision with root package name */
    public View f6932d;

    public zzegm(Context context, zzcqh zzcqhVar) {
        this.f6930b = context;
        this.f6931c = zzcqhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzefh
    public final Object zza(zzfff zzfffVar, final zzfet zzfetVar, final zzefe zzefeVar) throws zzffv, zzeiz {
        final View view;
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzhy)).booleanValue() && zzfetVar.zzag) {
            try {
                view = (View) bpp.b(this.f6929a.zze());
                boolean zzf = this.f6929a.zzf();
                if (view == null) {
                    throw new zzffv(new Exception("BannerRtbAdapterWrapper interscrollerView should not be null"));
                }
                if (zzf) {
                    try {
                        view = (View) zzgei.zzn(zzgei.zzh(null), new zzgdp() { // from class: com.google.android.gms.internal.ads.zzegj
                            @Override // com.google.android.gms.internal.ads.zzgdp
                            public final dcy zza(Object obj) {
                                zzegm zzegmVar = zzegm.this;
                                return zzgei.zzh(zzcrc.zza(zzegmVar.f6930b, view, zzfetVar));
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
            view = this.f6932d;
        }
        zzcpe zza = this.f6931c.zza(new zzcsg(zzfffVar, zzfetVar, zzefeVar.zza), new zzcpk(view, null, new zzcro() { // from class: com.google.android.gms.internal.ads.zzegi
            @Override // com.google.android.gms.internal.ads.zzcro
            public final cbz zza() {
                try {
                    return ((zzbrf) zzefe.this.zzb).zze();
                } catch (RemoteException e4) {
                    throw new zzffv(e4);
                }
            }
        }, (zzfeu) zzfetVar.zzu.get(0)));
        zza.zzg().zza(view);
        ((zzegx) zzefeVar.zzc).zzc(zza.zzj());
        return zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzefh
    public final void zzb(zzfff zzfffVar, zzfet zzfetVar, zzefe zzefeVar) throws zzffv {
        try {
            ((zzbrf) zzefeVar.zzb).zzq(zzfetVar.zzZ);
            boolean booleanValue = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzhy)).booleanValue();
            Context context = this.f6930b;
            if (booleanValue && zzfetVar.zzag) {
                ((zzbrf) zzefeVar.zzb).zzk(zzfetVar.zzU, zzfetVar.zzv.toString(), zzfffVar.zza.zza.zzd, new bpp(context), new dlk(this, zzefeVar), (zzbpm) zzefeVar.zzc, zzfffVar.zza.zza.zze);
            } else {
                ((zzbrf) zzefeVar.zzb).zzj(zzfetVar.zzU, zzfetVar.zzv.toString(), zzfffVar.zza.zza.zzd, new bpp(context), new dlk(this, zzefeVar), (zzbpm) zzefeVar.zzc, zzfffVar.zza.zza.zze);
            }
        } catch (RemoteException e2) {
            throw new zzffv(e2);
        }
    }
}
