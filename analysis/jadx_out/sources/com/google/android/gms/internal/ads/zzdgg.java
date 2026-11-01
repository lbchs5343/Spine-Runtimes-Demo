package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzdgg implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzdfn f5942a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f5943b;

    public zzdgg(zzdfn zzdfnVar, zzhgp zzhgpVar) {
        this.f5942a = zzdfnVar;
        this.f5943b = zzhgpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return this.f5942a.zzd((Executor) this.f5943b.zzb());
    }
}
