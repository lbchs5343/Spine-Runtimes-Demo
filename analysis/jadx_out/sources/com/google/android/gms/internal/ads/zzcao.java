package com.google.android.gms.internal.ads;

import g.dcy;
import g.ti;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes3.dex */
public class zzcao implements dcy {

    /* renamed from: b, reason: collision with root package name */
    public final zzgfa f5136b = zzgfa.zze();

    @Override // g.dcy
    public final void addListener(Runnable runnable, Executor executor) {
        this.f5136b.addListener(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return this.f5136b.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws ExecutionException, InterruptedException {
        return this.f5136b.get();
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return this.f5136b.get(j, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f5136b.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f5136b.isDone();
    }

    public void zza(Object obj) {
        zzc(obj);
    }

    public final boolean zzc(Object obj) {
        boolean zzc = this.f5136b.zzc(obj);
        if (!zzc) {
            ti.f20033a.f20034ab.zzv(new IllegalStateException("Provided SettableFuture with multiple values."), "SettableFuture");
        }
        return zzc;
    }

    public final boolean zzd(Throwable th) {
        boolean zzd = this.f5136b.zzd(th);
        if (!zzd) {
            ti.f20033a.f20034ab.zzv(new IllegalStateException("Provided SettableFuture with multiple values."), "SettableFuture");
        }
        return zzd;
    }
}
