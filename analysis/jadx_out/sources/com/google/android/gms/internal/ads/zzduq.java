package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzduq implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f6525a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f6526b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f6527c;

    /* renamed from: d, reason: collision with root package name */
    public final zzhgp f6528d;

    /* renamed from: e, reason: collision with root package name */
    public final zzhgp f6529e;

    /* renamed from: f, reason: collision with root package name */
    public final zzhgp f6530f;

    /* renamed from: g, reason: collision with root package name */
    public final zzhgp f6531g;
    public final zzhgp h;
    public final zzhgp i;

    public zzduq(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4, zzhgp zzhgpVar5, zzhgp zzhgpVar6, zzhgp zzhgpVar7, zzhgp zzhgpVar8, zzhgp zzhgpVar9, zzhgp zzhgpVar10) {
        this.f6528d = zzhgpVar;
        this.f6531g = zzhgpVar2;
        this.h = zzhgpVar3;
        this.f6526b = zzhgpVar5;
        this.f6527c = zzhgpVar6;
        this.f6529e = zzhgpVar7;
        this.i = zzhgpVar8;
        this.f6525a = zzhgpVar9;
        this.f6530f = zzhgpVar10;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdup((Executor) this.f6528d.zzb(), ((zzchq) this.f6531g).zza(), ((zzchr) this.h).zza(), zzfin.zzc(), (zzdqd) this.f6526b.zzb(), (ScheduledExecutorService) this.f6527c.zzb(), (zzdsw) this.f6529e.zzb(), ((zzcid) this.i).zza(), ((zzddl) this.f6525a).zzb(), (zzfko) this.f6530f.zzb());
    }
}
