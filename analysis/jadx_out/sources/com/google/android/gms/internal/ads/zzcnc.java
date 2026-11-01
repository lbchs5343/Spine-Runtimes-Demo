package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzcnc implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f5367a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f5368b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f5369c;

    /* renamed from: d, reason: collision with root package name */
    public final zzhgp f5370d;

    /* renamed from: e, reason: collision with root package name */
    public final zzhgp f5371e;

    /* renamed from: f, reason: collision with root package name */
    public final zzhgp f5372f;

    public zzcnc(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4, zzhgp zzhgpVar5, zzhgp zzhgpVar6, zzhgp zzhgpVar7) {
        this.f5369c = zzhgpVar;
        this.f5371e = zzhgpVar2;
        this.f5372f = zzhgpVar3;
        this.f5367a = zzhgpVar4;
        this.f5368b = zzhgpVar6;
        this.f5370d = zzhgpVar7;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzcnb(((zzchq) this.f5369c).zza(), ((zzcho) this.f5371e).zzb(), (zzeex) this.f5372f.zzb(), (zzdps) this.f5367a.zzb(), zzfin.zzc(), (zzges) this.f5368b.zzb(), (ScheduledExecutorService) this.f5370d.zzb());
    }
}
