package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import g.cvb;
import g.czz;
import g.dnz;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class zzcze extends zzdcc {

    /* renamed from: a, reason: collision with root package name */
    public boolean f5830a;

    /* renamed from: b, reason: collision with root package name */
    public long f5831b;

    /* renamed from: c, reason: collision with root package name */
    public ScheduledFuture f5832c;

    /* renamed from: d, reason: collision with root package name */
    public final cvb f5833d;

    /* renamed from: e, reason: collision with root package name */
    public long f5834e;

    /* renamed from: f, reason: collision with root package name */
    public long f5835f;

    /* renamed from: g, reason: collision with root package name */
    public ScheduledFuture f5836g;
    public final ScheduledExecutorService h;
    public long i;

    public zzcze(ScheduledExecutorService scheduledExecutorService, cvb cvbVar) {
        super(Collections.EMPTY_SET);
        this.f5834e = -1L;
        this.f5835f = -1L;
        this.i = -1L;
        this.f5831b = -1L;
        this.f5830a = false;
        this.h = scheduledExecutorService;
        this.f5833d = cvbVar;
    }

    public final synchronized void j(long j) {
        try {
            ScheduledFuture scheduledFuture = this.f5836g;
            if (scheduledFuture != null && !scheduledFuture.isDone()) {
                this.f5836g.cancel(false);
            }
            ((czz) this.f5833d).getClass();
            this.f5834e = SystemClock.elapsedRealtime() + j;
            this.f5836g = this.h.schedule(new dnz(this, 0), j, TimeUnit.MILLISECONDS);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void k(long j) {
        try {
            ScheduledFuture scheduledFuture = this.f5832c;
            if (scheduledFuture != null && !scheduledFuture.isDone()) {
                this.f5832c.cancel(false);
            }
            ((czz) this.f5833d).getClass();
            this.f5835f = SystemClock.elapsedRealtime() + j;
            this.f5832c = this.h.schedule(new dnz(this, 1), j, TimeUnit.MILLISECONDS);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zza() {
        this.f5830a = false;
        j(0L);
    }

    public final synchronized void zzb() {
        try {
            if (this.f5830a) {
                return;
            }
            ScheduledFuture scheduledFuture = this.f5836g;
            if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                this.i = -1L;
            } else {
                this.f5836g.cancel(false);
                long j = this.f5834e;
                ((czz) this.f5833d).getClass();
                this.i = j - SystemClock.elapsedRealtime();
            }
            ScheduledFuture scheduledFuture2 = this.f5832c;
            if (scheduledFuture2 == null || scheduledFuture2.isCancelled()) {
                this.f5831b = -1L;
            } else {
                this.f5832c.cancel(false);
                long j2 = this.f5835f;
                ((czz) this.f5833d).getClass();
                this.f5831b = j2 - SystemClock.elapsedRealtime();
            }
            this.f5830a = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzc() {
        try {
            if (this.f5830a) {
                if (this.i > 0 && this.f5836g.isCancelled()) {
                    j(this.i);
                }
                if (this.f5831b > 0 && this.f5832c.isCancelled()) {
                    k(this.f5831b);
                }
                this.f5830a = false;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzd(int i) {
        if (i > 0) {
            long millis = TimeUnit.SECONDS.toMillis(i);
            if (this.f5830a) {
                long j = this.i;
                if (j <= 0 || millis >= j) {
                    millis = j;
                }
                this.i = millis;
                return;
            }
            ((czz) this.f5833d).getClass();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j2 = this.f5834e;
            if (elapsedRealtime > j2 || j2 - elapsedRealtime > millis) {
                j(millis);
            }
        }
    }

    public final synchronized void zze(int i) {
        if (i > 0) {
            long millis = TimeUnit.SECONDS.toMillis(i);
            if (this.f5830a) {
                long j = this.f5831b;
                if (j <= 0 || millis >= j) {
                    millis = j;
                }
                this.f5831b = millis;
                return;
            }
            ((czz) this.f5833d).getClass();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j2 = this.f5835f;
            if (elapsedRealtime > j2 || j2 - elapsedRealtime > millis) {
                k(millis);
            }
        }
    }
}
