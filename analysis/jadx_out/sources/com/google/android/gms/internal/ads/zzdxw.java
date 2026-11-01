package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzdxw implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f6655a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f6656b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f6657c;

    /* renamed from: d, reason: collision with root package name */
    public final zzhgp f6658d;

    /* renamed from: e, reason: collision with root package name */
    public final zzhgp f6659e;

    /* renamed from: f, reason: collision with root package name */
    public final zzhgp f6660f;

    public zzdxw(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4, zzhgp zzhgpVar5, zzhgp zzhgpVar6, zzhgp zzhgpVar7) {
        this.f6657c = zzhgpVar;
        this.f6659e = zzhgpVar2;
        this.f6660f = zzhgpVar3;
        this.f6655a = zzhgpVar5;
        this.f6656b = zzhgpVar6;
        this.f6658d = zzhgpVar7;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdxv(((zzchq) this.f6657c).zza(), ((zzcwd) this.f6659e).zza(), ((zzdww) this.f6660f).zzb(), zzfin.zzc(), (ScheduledExecutorService) this.f6655a.zzb(), (zzecl) this.f6656b.zzb(), (zzfkl) this.f6658d.zzb());
    }
}
