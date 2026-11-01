package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzdli implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f6173a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f6174b;

    public zzdli(zzdlb zzdlbVar, zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f6173a = zzhgpVar;
        this.f6174b = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzded(((zzdon) this.f6173a).zzb(), (Executor) this.f6174b.zzb());
    }
}
