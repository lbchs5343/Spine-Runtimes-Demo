package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzctr implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f5654a;

    public zzctr(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f5654a = zzhgpVar;
    }

    public static zzded zza(zzcnn zzcnnVar, Executor executor) {
        return new zzded(zzcnnVar, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return zza((zzcnn) this.f5654a.zzb(), zzfin.zzc());
    }
}
