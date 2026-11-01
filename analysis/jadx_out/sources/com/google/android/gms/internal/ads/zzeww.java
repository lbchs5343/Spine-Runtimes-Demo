package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzeww implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7652a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7653b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f7654c;

    /* renamed from: d, reason: collision with root package name */
    public final zzhgp f7655d;

    /* renamed from: e, reason: collision with root package name */
    public final zzhgp f7656e;

    /* renamed from: f, reason: collision with root package name */
    public final zzhgp f7657f;

    public zzeww(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4, zzhgp zzhgpVar5, zzhgp zzhgpVar6, zzhgp zzhgpVar7) {
        this.f7654c = zzhgpVar;
        this.f7656e = zzhgpVar2;
        this.f7657f = zzhgpVar4;
        this.f7652a = zzhgpVar5;
        this.f7653b = zzhgpVar6;
        this.f7655d = zzhgpVar7;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzewt(((zzcho) this.f7654c).zzb(), ((zzchq) this.f7656e).zza(), zzfin.zzc(), (ScheduledExecutorService) this.f7657f.zzb(), ((zzefa) this.f7652a).zzb(), ((zzcwd) this.f7653b).zza(), ((zzcid) this.f7655d).zza());
    }
}
