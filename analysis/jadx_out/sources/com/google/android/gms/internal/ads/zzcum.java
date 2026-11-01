package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzcum implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f5700a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f5701b;

    public zzcum(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f5700a = zzhgpVar;
        this.f5701b = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzded((zzdav) this.f5700a.zzb(), (Executor) this.f5701b.zzb());
    }
}
