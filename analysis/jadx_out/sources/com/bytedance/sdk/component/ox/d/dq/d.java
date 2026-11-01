package com.bytedance.sdk.component.ox.d.dq;

/* loaded from: classes.dex */
public abstract class d implements Runnable {

    /* renamed from: d, reason: collision with root package name */
    protected final String f2045d;

    public d(String str, Object... objArr) {
        this.f2045d = ox.dq(str, objArr);
    }

    public abstract void ox();

    @Override // java.lang.Runnable
    public final void run() {
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName("csj_" + this.f2045d);
        try {
            ox();
        } finally {
            Thread.currentThread().setName(name);
        }
    }
}
