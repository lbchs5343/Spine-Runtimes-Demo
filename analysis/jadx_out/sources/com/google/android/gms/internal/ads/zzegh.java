package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzegh implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f6926a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f6927b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f6928c;

    public zzegh(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3) {
        this.f6926a = zzhgpVar;
        this.f6927b = zzhgpVar2;
        this.f6928c = zzhgpVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzegg((Context) this.f6926a.zzb(), (zzcqh) this.f6927b.zzb(), (Executor) this.f6928c.zzb());
    }
}
