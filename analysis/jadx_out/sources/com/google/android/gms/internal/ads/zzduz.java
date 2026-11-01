package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzduz implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f6553a;

    public zzduz(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f6553a = zzhgpVar;
    }

    public static zzded zza(zzduy zzduyVar, Executor executor) {
        return new zzded(zzduyVar, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return zza((zzduy) this.f6553a.zzb(), zzfin.zzc());
    }
}
