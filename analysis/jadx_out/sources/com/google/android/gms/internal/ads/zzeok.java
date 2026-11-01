package com.google.android.gms.internal.ads;

import g.dcy;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzeok implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7315a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7316b;

    public zzeok(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3) {
        this.f7315a = zzhgpVar;
        this.f7316b = zzhgpVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzeoj((dcy) this.f7315a.zzb(), zzfin.zzc(), (ScheduledExecutorService) this.f7316b.zzb());
    }
}
