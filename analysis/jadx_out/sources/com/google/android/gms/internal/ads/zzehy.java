package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzehy implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f6999a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7000b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f7001c;

    public zzehy(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3) {
        this.f6999a = zzhgpVar;
        this.f7000b = zzhgpVar2;
        this.f7001c = zzhgpVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzehx((Context) this.f6999a.zzb(), (zzdhj) this.f7000b.zzb(), (Executor) this.f7001c.zzb());
    }
}
