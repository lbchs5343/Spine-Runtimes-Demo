package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzdmz implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f6213a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f6214b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f6215c;

    /* renamed from: d, reason: collision with root package name */
    public final zzhgp f6216d;

    public zzdmz(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4) {
        this.f6214b = zzhgpVar;
        this.f6215c = zzhgpVar2;
        this.f6216d = zzhgpVar3;
        this.f6213a = zzhgpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdmx((Executor) this.f6214b.zzb(), (zzcoi) this.f6215c.zzb(), (zzdef) this.f6216d.zzb(), (zzcnb) this.f6213a.zzb());
    }
}
