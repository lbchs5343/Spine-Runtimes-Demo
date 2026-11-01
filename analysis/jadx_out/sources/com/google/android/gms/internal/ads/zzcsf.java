package com.google.android.gms.internal.ads;

import g.clx;
import g.dcy;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzcsf {

    /* renamed from: a, reason: collision with root package name */
    public volatile boolean f5596a = true;

    /* renamed from: b, reason: collision with root package name */
    public final Executor f5597b;

    /* renamed from: c, reason: collision with root package name */
    public final ScheduledExecutorService f5598c;

    /* renamed from: d, reason: collision with root package name */
    public final dcy f5599d;

    public zzcsf(Executor executor, ScheduledExecutorService scheduledExecutorService, dcy dcyVar) {
        this.f5597b = executor;
        this.f5598c = scheduledExecutorService;
        this.f5599d = dcyVar;
    }

    public final void zze(zzgee zzgeeVar) {
        zzgei.zzr(this.f5599d, new clx(this, 18, zzgeeVar), this.f5597b);
    }

    public final boolean zzf() {
        return this.f5596a;
    }
}
