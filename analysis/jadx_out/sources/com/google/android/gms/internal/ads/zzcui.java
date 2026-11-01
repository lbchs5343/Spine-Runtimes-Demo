package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzcui implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f5693a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f5694b;

    public zzcui(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f5693a = zzhgpVar;
        this.f5694b = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzded((zzdav) this.f5693a.zzb(), (Executor) this.f5694b.zzb());
    }
}
