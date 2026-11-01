package com.google.android.gms.internal.ads;

import g.edt;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzerw implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7467a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7468b;

    public zzerw(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f7467a = zzhgpVar;
        this.f7468b = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        return new zzeun((zzeqp) this.f7467a.zzb(), ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzlX)).intValue(), (ScheduledExecutorService) this.f7468b.zzb());
    }
}
