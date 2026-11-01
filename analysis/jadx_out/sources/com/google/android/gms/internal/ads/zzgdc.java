package com.google.android.gms.internal.ads;

import g.dcy;
import g.due;
import g.fid;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.RunnableFuture;

/* loaded from: classes3.dex */
public abstract class zzgdc extends AbstractExecutorService implements zzges, AutoCloseable {
    @Override // java.lang.AutoCloseable
    public /* synthetic */ void close() {
        fid.f(this);
    }

    @Override // java.util.concurrent.AbstractExecutorService
    public final RunnableFuture newTaskFor(Runnable runnable, Object obj) {
        return new due(Executors.callable(runnable, obj));
    }

    @Override // java.util.concurrent.AbstractExecutorService
    public final RunnableFuture newTaskFor(Callable callable) {
        return new due(callable);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public final /* synthetic */ Future submit(Runnable runnable) {
        return (dcy) super.submit(runnable);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public final /* synthetic */ Future submit(Runnable runnable, Object obj) {
        return (dcy) super.submit(runnable, obj);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public final /* synthetic */ Future submit(Callable callable) {
        return (dcy) super.submit(callable);
    }

    @Override // com.google.android.gms.internal.ads.zzges
    public final dcy zza(Runnable runnable) {
        return (dcy) super.submit(runnable);
    }

    @Override // com.google.android.gms.internal.ads.zzges
    public final dcy zzb(Callable callable) {
        return (dcy) super.submit(callable);
    }
}
