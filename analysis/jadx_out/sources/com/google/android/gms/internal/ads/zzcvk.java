package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzcvk implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f5742a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f5743b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f5744c;

    /* renamed from: d, reason: collision with root package name */
    public final zzhgp f5745d;

    public zzcvk(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4, zzhgp zzhgpVar5) {
        this.f5743b = zzhgpVar;
        this.f5744c = zzhgpVar2;
        this.f5745d = zzhgpVar3;
        this.f5742a = zzhgpVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzcvj((zzcxe) this.f5743b.zzb(), ((zzcsh) this.f5744c).zza(), (ScheduledExecutorService) this.f5745d.zzb(), zzfin.zzc(), ((zzcsi) this.f5742a).zza());
    }
}
