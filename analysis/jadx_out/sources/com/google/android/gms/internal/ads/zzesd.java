package com.google.android.gms.internal.ads;

import g.edt;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzesd implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7479a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7480b;

    public zzesd(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f7479a = zzhgpVar;
        this.f7480b = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        return new zzeun(((zzetf) this.f7479a).zzb(), ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzmh)).intValue(), (ScheduledExecutorService) this.f7480b.zzb());
    }
}
