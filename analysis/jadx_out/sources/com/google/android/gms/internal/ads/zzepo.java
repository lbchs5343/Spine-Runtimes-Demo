package com.google.android.gms.internal.ads;

import android.content.Context;
import g.ci;
import g.dcy;
import g.edt;
import g.fro;
import g.gtb;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class zzepo implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final zzges f7352a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f7353b;

    /* renamed from: c, reason: collision with root package name */
    public final zzbzz f7354c;

    /* renamed from: d, reason: collision with root package name */
    public final gtb f7355d;

    /* renamed from: e, reason: collision with root package name */
    public final ScheduledExecutorService f7356e;

    public zzepo(Context context, zzbzz zzbzzVar, ScheduledExecutorService scheduledExecutorService, zzges zzgesVar) {
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzda)).booleanValue()) {
            this.f7355d = new gtb(context);
        }
        this.f7353b = context;
        this.f7354c = zzbzzVar;
        this.f7356e = scheduledExecutorService;
        this.f7352a = zzgesVar;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 11;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        zzbce zzbceVar = zzbcn.zzcW;
        edt edtVar = edt.f15376a;
        zzbcl zzbclVar = edtVar.f15379d;
        zzbcl zzbclVar2 = edtVar.f15379d;
        if (!((Boolean) zzbclVar.zza(zzbceVar)).booleanValue() || ((Boolean) zzbclVar2.zza(zzbcn.zzdb)).booleanValue()) {
            return zzgei.zzh(new zzepp(null, -1));
        }
        boolean booleanValue = ((Boolean) zzbclVar2.zza(zzbcn.zzcX)).booleanValue();
        gtb gtbVar = this.f7355d;
        if (!booleanValue) {
            return zzgei.zzm(zzftq.zza(gtbVar.a(), null), new zzfwh() { // from class: com.google.android.gms.internal.ads.zzepl
                @Override // com.google.android.gms.internal.ads.zzfwh
                public final Object apply(Object obj) {
                    fro froVar = (fro) obj;
                    return new zzepp(froVar.f17303a, froVar.f17304b);
                }
            }, zzcaj.zzf);
        }
        ci zza = ((Boolean) zzbclVar2.zza(zzbcn.zzda)).booleanValue() ? zzfgt.zza(this.f7353b) : gtbVar.a();
        if (zza == null) {
            return zzgei.zzh(new zzepp(null, -1));
        }
        dcy zzn = zzgei.zzn(zzftq.zza(zza, null), new zzgdp() { // from class: com.google.android.gms.internal.ads.zzepm
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                fro froVar = (fro) obj;
                return froVar == null ? zzgei.zzh(new zzepp(null, -1)) : zzgei.zzh(new zzepp(froVar.f17303a, froVar.f17304b));
            }
        }, zzcaj.zzf);
        if (((Boolean) zzbclVar2.zza(zzbcn.zzcY)).booleanValue()) {
            zzn = zzgei.zzo(zzn, ((Long) zzbclVar2.zza(zzbcn.zzcZ)).longValue(), TimeUnit.MILLISECONDS, this.f7356e);
        }
        return zzgei.zze(zzn, Exception.class, new zzfwh() { // from class: com.google.android.gms.internal.ads.zzepn
            @Override // com.google.android.gms.internal.ads.zzfwh
            public final Object apply(Object obj) {
                zzepo.this.f7354c.zzw((Exception) obj, "AppSetIdInfoSignal");
                return new zzepp(null, -1);
            }
        }, this.f7352a);
    }
}
