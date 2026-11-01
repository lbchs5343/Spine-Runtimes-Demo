package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzekf implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7157a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7158b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f7159c;

    public zzekf(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3) {
        this.f7157a = zzhgpVar;
        this.f7158b = zzhgpVar2;
        this.f7159c = zzhgpVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzeke((Context) this.f7157a.zzb(), (Executor) this.f7158b.zzb(), (zzdow) this.f7159c.zzb());
    }
}
