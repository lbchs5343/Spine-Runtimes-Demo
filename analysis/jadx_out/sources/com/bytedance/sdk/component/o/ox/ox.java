package com.bytedance.sdk.component.o.ox;

/* loaded from: classes.dex */
public class ox implements Runnable {
    final Runnable dq;

    public ox(Runnable runnable) {
        this.dq = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.dq.run();
    }
}
