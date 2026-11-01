package com.google.android.gms.internal.ads;

import g.edt;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzerx implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7469a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7470b;

    public zzerx(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f7469a = zzhgpVar;
        this.f7470b = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        return new zzeun(((zzeql) this.f7469a).zzb(), ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzlW)).intValue(), (ScheduledExecutorService) this.f7470b.zzb());
    }
}
