package com.google.android.gms.internal.ads;

import g.byh;
import g.dcy;
import g.edt;
import g.fro;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class zzexw implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final zzbzz f7679a;

    /* renamed from: b, reason: collision with root package name */
    public final ScheduledExecutorService f7680b;

    /* renamed from: c, reason: collision with root package name */
    public final zzges f7681c;

    public zzexw(zzbzz zzbzzVar, ScheduledExecutorService scheduledExecutorService, zzges zzgesVar) {
        this.f7679a = zzbzzVar;
        this.f7680b = scheduledExecutorService;
        this.f7681c = zzgesVar;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 43;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        zzbce zzbceVar = zzbcn.zzcW;
        edt edtVar = edt.f15376a;
        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
            if (((Boolean) edtVar.f15379d.zza(zzbcn.zzdb)).booleanValue()) {
                dcy zza = zzftq.zza(byh.w(null), null);
                zzgdp zzgdpVar = new zzgdp() { // from class: com.google.android.gms.internal.ads.zzexu
                    @Override // com.google.android.gms.internal.ads.zzgdp
                    public final dcy zza(Object obj) {
                        fro froVar = (fro) obj;
                        return froVar == null ? zzgei.zzh(new zzexx(null, -1)) : zzgei.zzh(new zzexx(froVar.f17303a, froVar.f17304b));
                    }
                };
                zzges zzgesVar = this.f7681c;
                dcy zzn = zzgei.zzn(zza, zzgdpVar, zzgesVar);
                if (((Boolean) zzbea.zza.zze()).booleanValue()) {
                    zzn = zzgei.zzo(zzn, ((Long) zzbea.zzb.zze()).longValue(), TimeUnit.MILLISECONDS, this.f7680b);
                }
                return zzgei.zze(zzn, Exception.class, new zzfwh() { // from class: com.google.android.gms.internal.ads.zzexv
                    @Override // com.google.android.gms.internal.ads.zzfwh
                    public final Object apply(Object obj) {
                        zzexw.this.f7679a.zzw((Exception) obj, "AppSetIdInfoGmscoreSignal");
                        return new zzexx(null, -1);
                    }
                }, zzgesVar);
            }
        }
        return zzgei.zzh(new zzexx(null, -1));
    }
}
