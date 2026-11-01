package com.google.android.gms.internal.ads;

import g.dcy;
import g.edt;
import g.ti;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class zzeun implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final zzevz f7560a;

    /* renamed from: b, reason: collision with root package name */
    public final long f7561b;

    /* renamed from: c, reason: collision with root package name */
    public final ScheduledExecutorService f7562c;

    public zzeun(zzevz zzevzVar, long j, ScheduledExecutorService scheduledExecutorService) {
        this.f7560a = zzevzVar;
        this.f7561b = j;
        this.f7562c = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return this.f7560a.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        dcy zzb = this.f7560a.zzb();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzcq)).booleanValue()) {
            timeUnit = TimeUnit.MICROSECONDS;
        }
        long j = this.f7561b;
        if (j > 0) {
            zzb = zzgei.zzo(zzb, j, timeUnit, this.f7562c);
        }
        return zzgei.zzf(zzb, Throwable.class, new zzgdp() { // from class: com.google.android.gms.internal.ads.zzeum
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                zzeun zzeunVar = zzeun.this;
                Throwable th = (Throwable) obj;
                zzeunVar.getClass();
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzcp)).booleanValue()) {
                    zzevz zzevzVar = zzeunVar.f7560a;
                    ti.f20033a.f20034ab.zzw(th, "OptionalSignalTimeout:" + zzevzVar.zza());
                }
                return zzgei.zzh(null);
            }
        }, zzcaj.zzf);
    }
}
