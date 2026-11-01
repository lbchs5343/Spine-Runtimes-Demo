package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzfjt implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7926a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7927b;

    public zzfjt(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3) {
        this.f7926a = zzhgpVar2;
        this.f7927b = zzhgpVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        return new zzfjr(zzfin.zzc(), (ScheduledExecutorService) this.f7926a.zzb(), ((zzfju) this.f7927b).zzb());
    }
}
