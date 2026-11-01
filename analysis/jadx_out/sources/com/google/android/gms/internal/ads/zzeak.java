package com.google.android.gms.internal.ads;

import android.content.Context;
import g.ti;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzeak implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f6741a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f6742b;

    public zzeak(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f6741a = zzhgpVar;
        this.f6742b = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzeaj zzb() {
        Context zza = ((zzchq) this.f6741a).zza();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f6742b.zzb();
        zzeaj zzeajVar = new zzeaj();
        zzeajVar.f6750e = zza;
        zzeajVar.h = ti.f20033a.q.f();
        zzeajVar.f6747b = scheduledExecutorService;
        return zzeajVar;
    }
}
