package com.bytedance.embedapplog;

/* loaded from: classes.dex */
abstract class io<T> {
    private volatile T dq;

    public final T d(Object... objArr) {
        if (this.dq == null) {
            synchronized (this) {
                try {
                    if (this.dq == null) {
                        this.dq = dq(objArr);
                    }
                } finally {
                }
            }
        }
        return this.dq;
    }

    public abstract T dq(Object... objArr);
}
