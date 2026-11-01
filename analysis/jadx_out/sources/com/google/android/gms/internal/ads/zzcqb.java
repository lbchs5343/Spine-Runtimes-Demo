package com.google.android.gms.internal.ads;

import g.edt;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzcqb implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f5512a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f5513b;

    public zzcqb(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f5512a = zzhgpVar;
        this.f5513b = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        return new zzeun(((zzenw) this.f5512a).zzb(), ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzme)).intValue(), (ScheduledExecutorService) this.f5513b.zzb());
    }
}
