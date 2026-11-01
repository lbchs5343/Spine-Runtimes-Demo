package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public final class zzcrf implements zzcya, zzaym {

    /* renamed from: a, reason: collision with root package name */
    public final zzcyj f5572a;

    /* renamed from: b, reason: collision with root package name */
    public final AtomicBoolean f5573b = new AtomicBoolean();

    /* renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f5574c = new AtomicBoolean();

    /* renamed from: d, reason: collision with root package name */
    public final zzfet f5575d;

    /* renamed from: e, reason: collision with root package name */
    public final zzcxe f5576e;

    public zzcrf(zzfet zzfetVar, zzcxe zzcxeVar, zzcyj zzcyjVar) {
        this.f5575d = zzfetVar;
        this.f5576e = zzcxeVar;
        this.f5572a = zzcyjVar;
    }

    public final void f() {
        if (this.f5573b.compareAndSet(false, true)) {
            this.f5576e.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaym
    public final void zzdp(zzayl zzaylVar) {
        if (this.f5575d.zze == 1 && zzaylVar.zzj) {
            f();
        }
        if (zzaylVar.zzj && this.f5574c.compareAndSet(false, true)) {
            this.f5572a.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcya
    public final synchronized void zzs() {
        if (this.f5575d.zze != 1) {
            f();
        }
    }
}
