package com.google.android.gms.internal.ads;

import g.edt;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzesb implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7476a;

    public zzesb(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f7476a = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        return new zzeun(zzesx.zza(), ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzlU)).intValue(), (ScheduledExecutorService) this.f7476a.zzb());
    }
}
