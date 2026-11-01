package com.google.android.gms.internal.ads;

import g.edt;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzcqd implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f5516a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f5517b;

    public zzcqd(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f5516a = zzhgpVar;
        this.f5517b = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        return new zzeun(((zzetj) this.f5516a).zzb(), ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzmf)).intValue(), (ScheduledExecutorService) this.f5517b.zzb());
    }
}
