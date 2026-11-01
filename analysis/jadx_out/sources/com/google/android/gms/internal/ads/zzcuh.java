package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzcuh implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f5691a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f5692b;

    public zzcuh(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f5691a = zzhgpVar;
        this.f5692b = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzded((zzdav) this.f5691a.zzb(), (Executor) this.f5692b.zzb());
    }
}
