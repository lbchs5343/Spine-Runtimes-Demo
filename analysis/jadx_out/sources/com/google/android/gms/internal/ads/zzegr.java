package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzegr implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f6939a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f6940b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f6941c;

    /* renamed from: d, reason: collision with root package name */
    public final zzhgp f6942d;

    public zzegr(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4) {
        this.f6940b = zzhgpVar;
        this.f6941c = zzhgpVar2;
        this.f6942d = zzhgpVar3;
        this.f6939a = zzhgpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzegq((Context) this.f6940b.zzb(), (Executor) this.f6941c.zzb(), (zzdgn) this.f6942d.zzb(), (zzfes) this.f6939a.zzb());
    }
}
