package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzcxb implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f5810a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f5811b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f5812c;

    public zzcxb(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4) {
        this.f5810a = zzhgpVar;
        this.f5811b = zzhgpVar2;
        this.f5812c = zzhgpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzcwz(((zzcxa) this.f5810a).zzb(), ((zzhgl) this.f5811b).zzb(), zzfin.zzc(), (ScheduledExecutorService) this.f5812c.zzb());
    }
}
