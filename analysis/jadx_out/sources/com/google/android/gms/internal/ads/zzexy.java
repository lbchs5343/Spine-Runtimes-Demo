package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzexy implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7684a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7685b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f7686c;

    public zzexy(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4, zzhgp zzhgpVar5) {
        this.f7684a = zzhgpVar;
        this.f7685b = zzhgpVar3;
        this.f7686c = zzhgpVar4;
    }

    public static zzexw zza(String str, zzbao zzbaoVar, zzbzz zzbzzVar, ScheduledExecutorService scheduledExecutorService, zzges zzgesVar) {
        return new zzexw(zzbzzVar, scheduledExecutorService, zzgesVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        ((zzeyw) this.f7684a).zza();
        zzclc.zza();
        return new zzexw((zzbzz) this.f7685b.zzb(), (ScheduledExecutorService) this.f7686c.zzb(), zzfin.zzc());
    }
}
