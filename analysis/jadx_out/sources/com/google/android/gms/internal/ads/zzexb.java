package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzexb implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7668a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7669b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f7670c;

    /* renamed from: d, reason: collision with root package name */
    public final zzhgp f7671d;

    /* renamed from: e, reason: collision with root package name */
    public final zzhgp f7672e;

    public zzexb(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4, zzhgp zzhgpVar5, zzhgp zzhgpVar6, zzhgp zzhgpVar7) {
        this.f7670c = zzhgpVar2;
        this.f7671d = zzhgpVar3;
        this.f7672e = zzhgpVar5;
        this.f7668a = zzhgpVar6;
        this.f7669b = zzhgpVar7;
    }

    public static zzewz zza(zzbzq zzbzqVar, Context context, ScheduledExecutorService scheduledExecutorService, Executor executor, int i, boolean z, boolean z2) {
        return new zzewz(zzbzqVar, context, scheduledExecutorService, executor, i, z, z2);
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzewz(zzclk.zza(), ((zzchq) this.f7670c).zza(), (ScheduledExecutorService) this.f7671d.zzb(), zzfin.zzc(), ((zzeyx) this.f7672e).zzb().intValue(), ((zzeyy) this.f7668a).zzb().booleanValue(), ((zzeza) this.f7669b).zzb().booleanValue());
    }
}
