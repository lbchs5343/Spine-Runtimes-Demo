package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzbdv implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f4785a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f4786b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f4787c;

    public zzbdv(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4) {
        this.f4785a = zzhgpVar;
        this.f4786b = zzhgpVar2;
        this.f4787c = zzhgpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzbdu(((zzchq) this.f4785a).zza(), (ScheduledExecutorService) this.f4786b.zzb(), zzckg.zza(), (zzfkl) this.f4787c.zzb());
    }
}
