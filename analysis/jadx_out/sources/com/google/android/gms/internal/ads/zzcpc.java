package com.google.android.gms.internal.ads;

import g.cvb;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzcpc implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f5475a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f5476b;

    public zzcpc(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f5475a = zzhgpVar;
        this.f5476b = zzhgpVar2;
    }

    public static zzcze zzc(ScheduledExecutorService scheduledExecutorService, cvb cvbVar) {
        return new zzcze(scheduledExecutorService, cvbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzcze zzb() {
        return zzc((ScheduledExecutorService) this.f5475a.zzb(), (cvb) this.f5476b.zzb());
    }
}
