package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzdxr implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f6645a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f6646b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f6647c;

    public zzdxr(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4, zzhgp zzhgpVar5) {
        this.f6645a = zzhgpVar;
        this.f6646b = zzhgpVar4;
        this.f6647c = zzhgpVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzdxq zzb() {
        return new zzdxq((ScheduledExecutorService) this.f6645a.zzb(), zzfin.zzc(), zzfir.zzc(), ((zzdyk) this.f6646b).zzb(), zzhfw.zza(zzhgi.zza(this.f6647c)));
    }
}
