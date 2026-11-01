package com.google.android.gms.internal.ads;

import g.bsn;
import g.sq;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzbdt implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f4778a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f4779b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f4780c;

    /* renamed from: d, reason: collision with root package name */
    public final zzhgp f4781d;

    public zzbdt(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4) {
        this.f4779b = zzhgpVar;
        this.f4780c = zzhgpVar2;
        this.f4781d = zzhgpVar3;
        this.f4778a = zzhgpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzbds zzb() {
        return new zzbds((ScheduledExecutorService) this.f4779b.zzb(), (sq) this.f4780c.zzb(), (bsn) this.f4781d.zzb(), (zzdsr) this.f4778a.zzb());
    }
}
