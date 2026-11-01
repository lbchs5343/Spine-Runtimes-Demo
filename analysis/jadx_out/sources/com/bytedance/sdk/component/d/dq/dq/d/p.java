package com.bytedance.sdk.component.d.dq.dq.d;

import com.bytedance.sdk.component.d.dq.dq.d.dq;
import g.he;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class p extends com.bytedance.sdk.component.d.dq.p {
    private ExecutorService dq;

    /* renamed from: d, reason: collision with root package name */
    private final Deque<dq.C0113dq> f1840d = new ArrayDeque();
    private final Deque<dq.C0113dq> ox = new ArrayDeque();
    private final Deque<dq> p = new ArrayDeque();
    private AtomicInteger s = new AtomicInteger(64);

    public p() {
        if (this.dq == null) {
            this.dq = new com.bytedance.sdk.component.o.p.p(0, he.UNDEFINED_ITEM_ID, 20L, TimeUnit.SECONDS, new SynchronousQueue(), new ThreadFactory() { // from class: com.bytedance.sdk.component.d.dq.dq.d.p.1
                @Override // java.util.concurrent.ThreadFactory
                public Thread newThread(Runnable runnable) {
                    com.bytedance.sdk.component.o.p.ox oxVar = new com.bytedance.sdk.component.o.p.ox(runnable, "systemHttp Dispatcher");
                    oxVar.setDaemon(false);
                    oxVar.setPriority(10);
                    return oxVar;
                }
            });
        }
    }

    private <T> void dq(Deque<T> deque, T t, boolean z) {
        synchronized (this) {
            try {
                deque.remove(t);
                if (z) {
                    ox();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void ox() {
        if (this.ox.size() < dq() && !this.f1840d.isEmpty()) {
            Iterator<dq.C0113dq> it = this.f1840d.iterator();
            while (it.hasNext()) {
                dq.C0113dq next = it.next();
                it.remove();
                this.ox.add(next);
                if (next != null) {
                    next.dq();
                }
                d().submit(next);
                if (this.ox.size() >= dq()) {
                    return;
                }
            }
        }
    }

    @Override // com.bytedance.sdk.component.d.dq.p
    public ExecutorService d() {
        return this.dq;
    }

    @Override // com.bytedance.sdk.component.d.dq.p
    public void d(int i) {
    }

    public void d(dq.C0113dq c0113dq) {
        dq(this.ox, c0113dq, true);
    }

    public void d(dq dqVar) {
        dq(this.p, dqVar, false);
    }

    @Override // com.bytedance.sdk.component.d.dq.p
    public int dq() {
        return this.s.get();
    }

    @Override // com.bytedance.sdk.component.d.dq.p
    public void dq(int i) {
        this.s.set(i);
    }

    public synchronized void dq(dq.C0113dq c0113dq) {
        try {
            if (this.ox.size() >= dq()) {
                this.f1840d.add(c0113dq);
                return;
            }
            this.ox.add(c0113dq);
            if (c0113dq != null) {
                c0113dq.dq();
            }
            d().submit(c0113dq);
        } catch (Throwable unused) {
        }
    }

    public synchronized void dq(dq dqVar) {
        this.p.add(dqVar);
    }
}
