package com.google.android.gms.internal.ads;

import android.os.Binder;
import android.os.Bundle;
import g.dcy;
import g.edt;
import g.esy;
import g.ti;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class zzdxq {

    /* renamed from: a, reason: collision with root package name */
    public final zzdyj f6640a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhfr f6641b;

    /* renamed from: c, reason: collision with root package name */
    public final ScheduledExecutorService f6642c;

    /* renamed from: d, reason: collision with root package name */
    public final zzges f6643d;

    /* renamed from: e, reason: collision with root package name */
    public final zzges f6644e;

    public zzdxq(ScheduledExecutorService scheduledExecutorService, zzges zzgesVar, zzges zzgesVar2, zzdyj zzdyjVar, zzhfr zzhfrVar) {
        this.f6642c = scheduledExecutorService;
        this.f6643d = zzgesVar;
        this.f6644e = zzgesVar2;
        this.f6640a = zzdyjVar;
        this.f6641b = zzhfrVar;
    }

    public final dcy zzc(final zzbvx zzbvxVar) {
        dcy zza;
        String str = zzbvxVar.zzd;
        esy esyVar = ti.f20033a.z;
        if (esy.am(str)) {
            zza = zzgei.zzg(new zzdyw(1));
        } else {
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzhi)).booleanValue()) {
                zza = this.f6644e.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzdxo
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return (zzdyx) zzdxq.this.f6640a.zza(zzbvxVar).get(((Integer) edt.f15376a.f15379d.zza(zzbcn.zzfx)).intValue(), TimeUnit.SECONDS);
                    }
                });
            } else {
                zza = this.f6640a.zza(zzbvxVar);
            }
        }
        final int callingUid = Binder.getCallingUid();
        return (zzgdz) zzgei.zzf((zzgdz) zzgei.zzo(zzgdz.zzu(zza), ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzfx)).intValue(), TimeUnit.SECONDS, this.f6642c), Throwable.class, new zzgdp() { // from class: com.google.android.gms.internal.ads.zzdxp
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                zzdxq zzdxqVar = zzdxq.this;
                final zzbvx zzbvxVar2 = zzbvxVar;
                int i = callingUid;
                if (zzbvxVar2 != null) {
                    zzdxqVar.getClass();
                    Bundle bundle = zzbvxVar2.zzm;
                    if (bundle != null) {
                        bundle.putBoolean("ls", true);
                    }
                }
                return zzgei.zzn(((zzebg) zzdxqVar.f6641b.zzb()).zzd(zzbvxVar2, i), new zzgdp() { // from class: com.google.android.gms.internal.ads.zzdxn
                    @Override // com.google.android.gms.internal.ads.zzgdp
                    public final dcy zza(Object obj2) {
                        return zzgei.zzh(new zzdyx((InputStream) obj2, zzbvx.this));
                    }
                }, zzdxqVar.f6643d);
            }
        }, this.f6643d);
    }
}
