package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import g.cvb;
import g.czz;
import g.ti;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class zzcok implements zzazf {

    /* renamed from: c, reason: collision with root package name */
    public final ScheduledExecutorService f5442c;

    /* renamed from: e, reason: collision with root package name */
    public final cvb f5444e;

    /* renamed from: f, reason: collision with root package name */
    public ScheduledFuture f5445f;

    /* renamed from: a, reason: collision with root package name */
    public long f5440a = -1;

    /* renamed from: b, reason: collision with root package name */
    public long f5441b = -1;

    /* renamed from: d, reason: collision with root package name */
    public Runnable f5443d = null;

    /* renamed from: g, reason: collision with root package name */
    public boolean f5446g = false;

    public zzcok(ScheduledExecutorService scheduledExecutorService, cvb cvbVar) {
        this.f5442c = scheduledExecutorService;
        this.f5444e = cvbVar;
        ti.f20033a.p.zzc(this);
    }

    public final synchronized void h() {
        try {
            if (this.f5446g) {
                return;
            }
            ScheduledFuture scheduledFuture = this.f5445f;
            if (scheduledFuture == null || scheduledFuture.isDone()) {
                this.f5441b = -1L;
            } else {
                this.f5445f.cancel(true);
                long j = this.f5440a;
                ((czz) this.f5444e).getClass();
                this.f5441b = j - SystemClock.elapsedRealtime();
            }
            this.f5446g = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzazf
    public final void zza(boolean z) {
        ScheduledFuture scheduledFuture;
        if (!z) {
            h();
            return;
        }
        synchronized (this) {
            try {
                if (this.f5446g) {
                    if (this.f5441b > 0 && (scheduledFuture = this.f5445f) != null && scheduledFuture.isCancelled()) {
                        this.f5445f = this.f5442c.schedule(this.f5443d, this.f5441b, TimeUnit.MILLISECONDS);
                    }
                    this.f5446g = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized void zzd(int i, Runnable runnable) {
        this.f5443d = runnable;
        ((czz) this.f5444e).getClass();
        long j = i;
        this.f5440a = SystemClock.elapsedRealtime() + j;
        this.f5445f = this.f5442c.schedule(runnable, j, TimeUnit.MILLISECONDS);
    }
}
