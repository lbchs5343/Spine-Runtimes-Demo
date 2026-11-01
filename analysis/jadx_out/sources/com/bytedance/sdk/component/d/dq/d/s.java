package com.bytedance.sdk.component.d.dq.d;

/* loaded from: classes.dex */
public abstract class s implements Runnable {

    /* renamed from: d, reason: collision with root package name */
    protected final String f1835d;

    public s(String str, Object... objArr) {
        this.f1835d = o.dq(str, objArr);
    }

    public abstract void d();

    @Override // java.lang.Runnable
    public final void run() {
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName("csj_" + this.f1835d);
        try {
            d();
        } finally {
            Thread.currentThread().setName(name);
        }
    }
}
