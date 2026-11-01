package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzeih implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7016a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7017b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f7018c;

    /* renamed from: d, reason: collision with root package name */
    public final zzhgp f7019d;

    public zzeih(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4, zzhgp zzhgpVar5) {
        this.f7017b = zzhgpVar2;
        this.f7018c = zzhgpVar3;
        this.f7019d = zzhgpVar4;
        this.f7016a = zzhgpVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzeif zzb() {
        return new zzeif(zzfin.zzc(), (ScheduledExecutorService) this.f7017b.zzb(), (zzcrt) this.f7018c.zzb(), (zzeiv) this.f7019d.zzb(), (zzfln) this.f7016a.zzb());
    }
}
