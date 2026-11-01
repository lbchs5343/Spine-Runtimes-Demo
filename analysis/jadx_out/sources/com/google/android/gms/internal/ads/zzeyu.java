package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzeyu implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7701a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7702b;

    public zzeyu(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3) {
        this.f7701a = zzhgpVar2;
        this.f7702b = zzhgpVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzeys(zzcli.zza(), (ScheduledExecutorService) this.f7701a.zzb(), ((zzchq) this.f7702b).zza());
    }
}
