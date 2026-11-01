package com.google.android.gms.internal.ads;

import g.dcy;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes3.dex */
public final class zzfix implements dcy {

    /* renamed from: a, reason: collision with root package name */
    public final dcy f7909a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f7910b;

    /* renamed from: c, reason: collision with root package name */
    public final String f7911c;

    public zzfix(Object obj, String str, dcy dcyVar) {
        this.f7910b = obj;
        this.f7911c = str;
        this.f7909a = dcyVar;
    }

    @Override // g.dcy
    public final void addListener(Runnable runnable, Executor executor) {
        this.f7909a.addListener(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return this.f7909a.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws InterruptedException, ExecutionException {
        return this.f7909a.get();
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return this.f7909a.get(j, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f7909a.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f7909a.isDone();
    }

    public final String toString() {
        return this.f7911c + "@" + System.identityHashCode(this);
    }

    public final Object zza() {
        return this.f7910b;
    }

    public final String zzb() {
        return this.f7911c;
    }
}
