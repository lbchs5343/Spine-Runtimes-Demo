package com.google.android.gms.internal.ads;

import g.edt;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzesm implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7502a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7503b;

    public zzesm(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f7502a = zzhgpVar;
        this.f7503b = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        return new zzeun(((zzevx) this.f7502a).zzb(), ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzlM)).intValue(), (ScheduledExecutorService) this.f7503b.zzb());
    }
}
