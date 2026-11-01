package com.google.android.gms.internal.ads;

import android.content.Context;
import g.agd;
import g.akx;
import g.edt;
import g.fso;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzehi implements zzefh {

    /* renamed from: a, reason: collision with root package name */
    public final Executor f6973a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f6974b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdgn f6975c;

    /* renamed from: d, reason: collision with root package name */
    public final akx f6976d;

    public zzehi(Context context, akx akxVar, zzdgn zzdgnVar, Executor executor) {
        this.f6974b = context;
        this.f6976d = akxVar;
        this.f6975c = zzdgnVar;
        this.f6973a = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzefh
    public final /* bridge */ /* synthetic */ Object zza(zzfff zzfffVar, zzfet zzfetVar, final zzefe zzefeVar) throws zzffv, zzeiz {
        zzdfk zze = this.f6975c.zze(new zzcsg(zzfffVar, zzfetVar, zzefeVar.zza), new zzdfn(new zzdgv() { // from class: com.google.android.gms.internal.ads.zzehh
            @Override // com.google.android.gms.internal.ads.zzdgv
            public final void zza(boolean z, Context context, zzcwz zzcwzVar) {
                zzehi zzehiVar = zzehi.this;
                zzefe zzefeVar2 = zzefeVar;
                zzehiVar.getClass();
                try {
                    ((zzfgm) zzefeVar2.zzb).zzv(z);
                    if (zzehiVar.f6976d.clientJarVersion < ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzaP)).intValue()) {
                        ((zzfgm) zzefeVar2.zzb).zzx();
                    } else {
                        ((zzfgm) zzefeVar2.zzb).zzy(context);
                    }
                } catch (zzffv e2) {
                    agd.k("Cannot show interstitial.");
                    throw new zzdgu(e2.getCause());
                }
            }
        }, null));
        zze.zzd().zzo(new zzcmr((zzfgm) zzefeVar.zzb), this.f6973a);
        ((zzegx) zzefeVar.zzc).zzc(zze.zzk());
        return zze.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzefh
    public final void zzb(zzfff zzfffVar, zzfet zzfetVar, zzefe zzefeVar) throws zzffv {
        zzfgm zzfgmVar = (zzfgm) zzefeVar.zzb;
        zzffo zzffoVar = zzfffVar.zza.zza;
        String jSONObject = zzfetVar.zzv.toString();
        String aj = fso.aj(zzfetVar.zzs);
        zzbpm zzbpmVar = (zzbpm) zzefeVar.zzc;
        zzfgmVar.zzo(this.f6974b, zzffoVar.zzd, jSONObject, aj, zzbpmVar);
    }
}
