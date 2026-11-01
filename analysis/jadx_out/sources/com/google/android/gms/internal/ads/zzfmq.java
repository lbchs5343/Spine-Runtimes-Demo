package com.google.android.gms.internal.ads;

import g.cvb;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzfmq implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f8025a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f8026b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f8027c;

    /* renamed from: d, reason: collision with root package name */
    public final zzhgp f8028d;

    public zzfmq(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4) {
        this.f8026b = zzhgpVar;
        this.f8027c = zzhgpVar2;
        this.f8028d = zzhgpVar3;
        this.f8025a = zzhgpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzfmp(((zzchq) this.f8026b).zza(), ((zzcid) this.f8027c).zza(), (ScheduledExecutorService) this.f8028d.zzb(), (cvb) this.f8025a.zzb());
    }
}
