package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzcrb implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f5554a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f5555b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f5556c;

    /* renamed from: d, reason: collision with root package name */
    public final zzhgp f5557d;

    public zzcrb(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4) {
        this.f5555b = zzhgpVar;
        this.f5556c = zzhgpVar2;
        this.f5557d = zzhgpVar3;
        this.f5554a = zzhgpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzcqw(((zzcua) this.f5555b).zzb(), ((zzcra) this.f5556c).zza(), ((zzcqz) this.f5557d).zza(), (Executor) this.f5554a.zzb());
    }
}
