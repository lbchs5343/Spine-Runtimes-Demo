package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.SystemClock;
import java.util.concurrent.TimeoutException;

/* loaded from: classes3.dex */
public final class zzlj {

    /* renamed from: a, reason: collision with root package name */
    public boolean f8784a;

    /* renamed from: b, reason: collision with root package name */
    public Object f8785b;

    /* renamed from: c, reason: collision with root package name */
    public final Looper f8786c;

    /* renamed from: d, reason: collision with root package name */
    public final zzli f8787d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f8788e;

    /* renamed from: f, reason: collision with root package name */
    public final zzlh f8789f;

    /* renamed from: g, reason: collision with root package name */
    public int f8790g;
    public boolean h;

    public zzlj(zzlh zzlhVar, zzli zzliVar, zzbv zzbvVar, int i, zzdc zzdcVar, Looper looper) {
        this.f8789f = zzlhVar;
        this.f8787d = zzliVar;
        this.f8786c = looper;
    }

    public final int zza() {
        return this.f8790g;
    }

    public final Looper zzb() {
        return this.f8786c;
    }

    public final zzli zzc() {
        return this.f8787d;
    }

    public final zzlj zzd() {
        zzdb.zzf(!this.f8788e);
        this.f8788e = true;
        this.f8789f.zzm(this);
        return this;
    }

    public final zzlj zze(Object obj) {
        zzdb.zzf(!this.f8788e);
        this.f8785b = obj;
        return this;
    }

    public final zzlj zzf(int i) {
        zzdb.zzf(!this.f8788e);
        this.f8790g = i;
        return this;
    }

    public final Object zzg() {
        return this.f8785b;
    }

    public final synchronized void zzh(boolean z) {
        this.h = z | this.h;
        this.f8784a = true;
        notifyAll();
    }

    public final synchronized boolean zzi(long j) throws InterruptedException, TimeoutException {
        try {
            zzdb.zzf(this.f8788e);
            zzdb.zzf(this.f8786c.getThread() != Thread.currentThread());
            long elapsedRealtime = SystemClock.elapsedRealtime() + j;
            while (!this.f8784a) {
                if (j <= 0) {
                    throw new TimeoutException("Message delivery timed out.");
                }
                wait(j);
                j = elapsedRealtime - SystemClock.elapsedRealtime();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.h;
    }

    public final synchronized boolean zzj() {
        return false;
    }
}
