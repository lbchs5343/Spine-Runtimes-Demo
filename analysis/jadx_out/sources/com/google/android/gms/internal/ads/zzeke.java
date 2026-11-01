package com.google.android.gms.internal.ads;

import android.content.Context;
import g.agd;
import g.dwi;
import g.fae;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzeke implements zzefh {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7154a;

    /* renamed from: b, reason: collision with root package name */
    public final Executor f7155b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdow f7156c;

    public zzeke(Context context, Executor executor, zzdow zzdowVar) {
        this.f7154a = context;
        this.f7155b = executor;
        this.f7156c = zzdowVar;
    }

    public static final void d(zzfff zzfffVar, zzfet zzfetVar, zzefe zzefeVar) {
        try {
            ((zzfgm) zzefeVar.zzb).zzk(zzfffVar.zza.zza.zzd, zzfetVar.zzv.toString());
        } catch (Exception unused) {
            "Fail to load ad from adapter ".concat(String.valueOf(zzefeVar.zza));
            zzfxd zzfxdVar = agd.f10175a;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzefh
    public final /* bridge */ /* synthetic */ Object zza(zzfff zzfffVar, zzfet zzfetVar, final zzefe zzefeVar) throws zzffv, zzeiz {
        zzdos zze = this.f7156c.zze(new zzcsg(zzfffVar, zzfetVar, zzefeVar.zza), new zzdot(new zzdgv() { // from class: com.google.android.gms.internal.ads.zzeka
            @Override // com.google.android.gms.internal.ads.zzdgv
            public final void zza(boolean z, Context context, zzcwz zzcwzVar) {
                zzefe zzefeVar2 = zzefe.this;
                try {
                    ((zzfgm) zzefeVar2.zzb).zzv(z);
                    ((zzfgm) zzefeVar2.zzb).zzA();
                } catch (zzffv e2) {
                    zzfxd zzfxdVar = agd.f10175a;
                    throw new zzdgu(e2.getCause());
                }
            }
        }));
        zze.zzd().zzo(new zzcmr((zzfgm) zzefeVar.zzb), this.f7155b);
        zzcxt zze2 = zze.zze();
        zzcwk zzb = zze.zzb();
        ((zzegy) zzefeVar.zzc).zzc(new fae(zze.zza(), zzb, zze2, zze.zzg()));
        return zze.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzefh
    public final void zzb(zzfff zzfffVar, zzfet zzfetVar, zzefe zzefeVar) throws zzffv {
        if (((zzfgm) zzefeVar.zzb).zzC()) {
            d(zzfffVar, zzfetVar, zzefeVar);
            return;
        }
        ((zzegy) zzefeVar.zzc).zzd(new dwi(this, zzfffVar, zzfetVar, zzefeVar));
        zzfgm zzfgmVar = (zzfgm) zzefeVar.zzb;
        zzffo zzffoVar = zzfffVar.zza.zza;
        zzbwu zzbwuVar = (zzbwu) zzefeVar.zzc;
        String jSONObject = zzfetVar.zzv.toString();
        zzfgmVar.zzh(this.f7154a, zzffoVar.zzd, null, zzbwuVar, jSONObject);
    }
}
