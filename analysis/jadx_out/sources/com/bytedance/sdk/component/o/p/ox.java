package com.bytedance.sdk.component.o.p;

import com.bytedance.sdk.component.o.dq.mn;
import com.bytedance.sdk.component.o.no;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class ox extends Thread {
    private mn proxy;

    public ox() {
    }

    public ox(Runnable runnable) {
        super(runnable);
    }

    public ox(Runnable runnable, String str) {
        super(runnable, str);
    }

    public ox(String str) {
        super(str);
    }

    public ox(ThreadGroup threadGroup, Runnable runnable) {
        super(threadGroup, runnable);
    }

    public ox(ThreadGroup threadGroup, Runnable runnable, String str) {
        super(threadGroup, runnable, str);
    }

    public ox(ThreadGroup threadGroup, Runnable runnable, String str, long j) {
        super(threadGroup, runnable, str, j);
    }

    public ox(ThreadGroup threadGroup, String str) {
        super(threadGroup, str);
    }

    @Override // java.lang.Thread
    public void interrupt() {
        mn mnVar = this.proxy;
        if (mnVar != null) {
            mnVar.interrupt();
        } else {
            super.interrupt();
        }
    }

    @Override // java.lang.Thread
    public boolean isInterrupted() {
        mn mnVar = this.proxy;
        return mnVar != null ? mnVar.isInterrupted() : super.isInterrupted();
    }

    public boolean isProxyEnable() {
        return no.f2029d.dq(1);
    }

    @Override // java.lang.Thread
    public synchronized void start() {
        try {
            try {
                if (!isProxyEnable()) {
                    super.start();
                    return;
                }
                if (this.proxy == null) {
                    this.proxy = new mn(this);
                }
                this.proxy.start();
            } catch (OutOfMemoryError unused) {
                com.bytedance.sdk.component.o.p.dq.dq("PThread");
                no noVar = no.f2029d;
                noVar.no().schedule(new Runnable() { // from class: com.bytedance.sdk.component.o.p.ox.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ox.super.start();
                    }
                }, noVar.p(), TimeUnit.MILLISECONDS);
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
