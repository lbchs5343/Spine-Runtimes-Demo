package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import g.dcy;
import g.edt;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class zzeys implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final ScheduledExecutorService f7699a;

    public zzeys(zzbtk zzbtkVar, ScheduledExecutorService scheduledExecutorService, Context context) {
        this.f7699a = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 49;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        return zzgei.zzm(zzgei.zzo(zzgei.zzh(new Bundle()), ((Long) edt.f15376a.f15379d.zza(zzbcn.zzej)).longValue(), TimeUnit.MILLISECONDS, this.f7699a), new zzfwh() { // from class: com.google.android.gms.internal.ads.zzeyr
            @Override // com.google.android.gms.internal.ads.zzfwh
            public final Object apply(Object obj) {
                return new zzeyt((Bundle) obj);
            }
        }, zzcaj.zza);
    }
}
