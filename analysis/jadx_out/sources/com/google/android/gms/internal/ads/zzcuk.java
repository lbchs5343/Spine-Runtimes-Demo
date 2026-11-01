package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzcuk implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f5696a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f5697b;

    public zzcuk(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f5696a = zzhgpVar;
        this.f5697b = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzded((zzdav) this.f5696a.zzb(), (Executor) this.f5697b.zzb());
    }
}
