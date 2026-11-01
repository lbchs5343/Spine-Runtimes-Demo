package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzcun implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f5702a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f5703b;

    public zzcun(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f5702a = zzhgpVar;
        this.f5703b = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzded((zzdav) this.f5702a.zzb(), (Executor) this.f5703b.zzb());
    }
}
