package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzcul implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f5698a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f5699b;

    public zzcul(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f5698a = zzhgpVar;
        this.f5699b = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzded((zzdav) this.f5698a.zzb(), (Executor) this.f5699b.zzb());
    }
}
