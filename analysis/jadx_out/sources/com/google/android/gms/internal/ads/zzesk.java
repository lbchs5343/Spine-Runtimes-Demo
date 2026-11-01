package com.google.android.gms.internal.ads;

import g.edt;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzesk implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7496a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7497b;

    public zzesk(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f7496a = zzhgpVar;
        this.f7497b = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        return new zzeun(((zzevm) this.f7496a).zzb(), ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzlO)).intValue(), (ScheduledExecutorService) this.f7497b.zzb());
    }
}
