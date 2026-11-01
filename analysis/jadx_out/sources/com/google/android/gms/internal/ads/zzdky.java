package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzdky implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f6149a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f6150b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f6151c;

    public zzdky(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4) {
        this.f6149a = zzhgpVar;
        this.f6150b = zzhgpVar2;
        this.f6151c = zzhgpVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdkx(((zzdjr) this.f6149a).zza(), ((zzdhz) this.f6150b).zzb(), (Executor) this.f6151c.zzb(), zzfin.zzc());
    }
}
