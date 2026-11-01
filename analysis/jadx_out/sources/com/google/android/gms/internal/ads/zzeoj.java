package com.google.android.gms.internal.ads;

import android.os.Bundle;
import g.dcy;
import g.edt;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes3.dex */
public final class zzeoj implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final dcy f7312a;

    /* renamed from: b, reason: collision with root package name */
    public final Executor f7313b;

    /* renamed from: c, reason: collision with root package name */
    public final ScheduledExecutorService f7314c;

    public zzeoj(dcy dcyVar, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        this.f7312a = dcyVar;
        this.f7313b = executor;
        this.f7314c = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 6;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        zzgdp zzgdpVar = new zzgdp() { // from class: com.google.android.gms.internal.ads.zzeof
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                final String str = (String) obj;
                return zzgei.zzh(new zzevy() { // from class: com.google.android.gms.internal.ads.zzeoe
                    @Override // com.google.android.gms.internal.ads.zzevy
                    public final void zzj(Object obj2) {
                        ((Bundle) obj2).putString("ms", str);
                    }
                });
            }
        };
        dcy dcyVar = this.f7312a;
        Executor executor = this.f7313b;
        dcy zzn = zzgei.zzn(dcyVar, zzgdpVar, executor);
        if (((Integer) edt.f15376a.f15379d.zza(zzbcn.zzmg)).intValue() > 0) {
            zzn = zzgei.zzo(zzn, ((Integer) r3.f15379d.zza(r1)).intValue(), TimeUnit.MILLISECONDS, this.f7314c);
        }
        return zzgei.zzf(zzn, Throwable.class, new zzgdp() { // from class: com.google.android.gms.internal.ads.zzeog
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                return ((Throwable) obj) instanceof TimeoutException ? zzgei.zzh(new zzevy() { // from class: com.google.android.gms.internal.ads.zzeoh
                    @Override // com.google.android.gms.internal.ads.zzevy
                    public final void zzj(Object obj2) {
                        ((Bundle) obj2).putString("ms", Integer.toString(17));
                    }
                }) : zzgei.zzh(new zzevy() { // from class: com.google.android.gms.internal.ads.zzeoi
                    @Override // com.google.android.gms.internal.ads.zzevy
                    public final void zzj(Object obj2) {
                        ((Bundle) obj2).putString("ms", null);
                    }
                });
            }
        }, executor);
    }
}
