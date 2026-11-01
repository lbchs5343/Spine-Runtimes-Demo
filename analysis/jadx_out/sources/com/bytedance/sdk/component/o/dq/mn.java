package com.bytedance.sdk.component.o.dq;

import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.o.no;

/* loaded from: classes.dex */
public final class mn extends Thread {

    /* renamed from: d, reason: collision with root package name */
    private volatile boolean f2023d;
    private volatile Thread dq;
    private final Thread ox;

    public mn(Thread thread) {
        this.ox = thread;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq() {
        Thread currentThread = Thread.currentThread();
        String name = currentThread.getName();
        try {
            d ox = no.f2029d.ox();
            String name2 = this.ox.getName();
            if (ox != null) {
                name2 = ox.dq(name2);
            }
            currentThread.setName(name2);
            this.dq = currentThread;
            currentThread.setPriority(this.ox.getPriority());
            this.ox.run();
            currentThread.setName(name);
        } catch (Throwable th) {
            currentThread.setName(name);
            throw th;
        }
    }

    @Override // java.lang.Thread
    public void interrupt() {
        if (this.dq != null) {
            this.dq.interrupt();
        }
    }

    @Override // java.lang.Thread
    public boolean isInterrupted() {
        if (this.dq != null) {
            return this.dq.isInterrupted();
        }
        return true;
    }

    @Override // java.lang.Thread
    public synchronized void start() {
        if (this.f2023d) {
            return;
        }
        this.f2023d = true;
        no.f2029d.o().execute(new com.bytedance.sdk.component.o.ox.ox(new kk(this.ox.getName()) { // from class: com.bytedance.sdk.component.o.dq.mn.1
            @Override // java.lang.Runnable
            public void run() {
                mn.this.dq();
            }
        }));
    }
}
