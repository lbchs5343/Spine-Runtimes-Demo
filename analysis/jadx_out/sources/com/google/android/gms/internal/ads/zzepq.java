package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzepq implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7359a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7360b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f7361c;

    public zzepq(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4) {
        this.f7359a = zzhgpVar;
        this.f7360b = zzhgpVar2;
        this.f7361c = zzhgpVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzepo(((zzchq) this.f7359a).zza(), (zzbzz) this.f7360b.zzb(), (ScheduledExecutorService) this.f7361c.zzb(), zzfin.zzc());
    }
}
