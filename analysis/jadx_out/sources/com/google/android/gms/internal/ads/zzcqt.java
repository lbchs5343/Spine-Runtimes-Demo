package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzcqt implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f5538a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f5539b;

    public zzcqt(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f5538a = zzhgpVar;
        this.f5539b = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzcqs zzb() {
        return new zzcqs(((zzcqa) this.f5538a).zza(), (Executor) this.f5539b.zzb());
    }
}
