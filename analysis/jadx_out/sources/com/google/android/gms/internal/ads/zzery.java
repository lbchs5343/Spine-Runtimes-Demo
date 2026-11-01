package com.google.android.gms.internal.ads;

import g.edt;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzery implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7471a;

    public zzery(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f7471a = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        zzfzt zzn;
        zzeqr zza = zzeqt.zza();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f7471a.zzb();
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzef)).booleanValue()) {
            zzn = zzfzt.zzo(new zzeun(zza, ((Integer) r3.f15379d.zza(zzbcn.zzeg)).intValue(), scheduledExecutorService));
        } else {
            zzn = zzfzt.zzn();
        }
        zzhgf.zzb(zzn);
        return zzn;
    }
}
