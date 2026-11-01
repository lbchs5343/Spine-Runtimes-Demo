package com.bytedance.sdk.component.o;

import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

/* loaded from: classes.dex */
public class ia<V> extends FutureTask<V> implements Comparable<ia<V>> {

    /* renamed from: d, reason: collision with root package name */
    private int f2026d;
    private int dq;

    public ia(Runnable runnable, V v, int i, int i2) {
        super(runnable, v);
        this.dq = i == -1 ? 5 : i;
        this.f2026d = i2;
    }

    public ia(Callable<V> callable, int i, int i2) {
        super(callable);
        this.dq = i == -1 ? 5 : i;
        this.f2026d = i2;
    }

    public int dq() {
        return this.dq;
    }

    @Override // java.lang.Comparable
    /* renamed from: dq, reason: merged with bridge method [inline-methods] */
    public int compareTo(ia iaVar) {
        if (dq() < iaVar.dq()) {
            return 1;
        }
        return dq() > iaVar.dq() ? -1 : 0;
    }
}
