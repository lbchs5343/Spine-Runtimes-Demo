package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzegw implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f6949a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f6950b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f6951c;

    /* renamed from: d, reason: collision with root package name */
    public final zzhgp f6952d;

    /* renamed from: e, reason: collision with root package name */
    public final zzhgp f6953e;

    public zzegw(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4, zzhgp zzhgpVar5, zzhgp zzhgpVar6) {
        this.f6951c = zzhgpVar;
        this.f6952d = zzhgpVar2;
        this.f6953e = zzhgpVar3;
        this.f6949a = zzhgpVar4;
        this.f6950b = zzhgpVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzegv zzb() {
        return new zzegv((zzcqh) this.f6951c.zzb(), ((zzegd) this.f6952d).zzb(), (zzcwo) this.f6953e.zzb(), (ScheduledExecutorService) this.f6949a.zzb(), zzfin.zzc(), (zzdsh) this.f6950b.zzb());
    }
}
