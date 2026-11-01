package com.bytedance.sdk.component.ox.d;

import com.bytedance.sdk.component.ox.d.e;
import g.he;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class q {
    private Runnable ox;
    private String p;
    private ExecutorService s;
    private int dq = 64;

    /* renamed from: d, reason: collision with root package name */
    private int f2146d = 5;
    private final Deque<e.dq> iw = new ArrayDeque();
    private final Deque<e.dq> mn = new ArrayDeque();
    private final Deque<e> ia = new ArrayDeque();

    public q() {
    }

    public q(String str) {
        this.p = str;
    }

    private <T> void dq(Deque<T> deque, T t, boolean z) {
        int d2;
        Runnable runnable;
        synchronized (this) {
            try {
                if (!deque.remove(t)) {
                    throw new AssertionError("Call wasn't in-flight!");
                }
                if (z) {
                    ox();
                }
                d2 = d();
                runnable = this.ox;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (d2 != 0 || runnable == null) {
            return;
        }
        runnable.run();
    }

    private int ox(e.dq dqVar) {
        Iterator<e.dq> it = this.mn.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next().dq().equals(dqVar.dq())) {
                i++;
            }
        }
        return i;
    }

    private void ox() {
        if (this.mn.size() < this.dq && !this.iw.isEmpty()) {
            Iterator<e.dq> it = this.iw.iterator();
            while (it.hasNext()) {
                e.dq next = it.next();
                if (ox(next) < this.f2146d) {
                    it.remove();
                    this.mn.add(next);
                    if (next != null) {
                        next.d();
                    }
                    dq().execute(next);
                }
                if (this.mn.size() >= this.dq) {
                    return;
                }
            }
        }
    }

    public synchronized int d() {
        return this.mn.size() + this.ia.size();
    }

    public synchronized void d(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("max < 1: ".concat(String.valueOf(i)));
        }
        this.f2146d = i;
        ox();
    }

    public void d(e.dq dqVar) {
        dq(this.mn, dqVar, true);
    }

    public void d(e eVar) {
        dq(this.ia, eVar, false);
    }

    public synchronized ExecutorService dq() {
        String str;
        try {
            if (this.s == null) {
                String str2 = this.p;
                if (str2 != null && str2.length() != 0) {
                    str = this.p;
                    this.s = new com.bytedance.sdk.component.o.p.p(0, he.UNDEFINED_ITEM_ID, 20L, TimeUnit.SECONDS, new SynchronousQueue(), com.bytedance.sdk.component.ox.d.dq.ox.dq(str, false));
                }
                str = "net";
                this.s = new com.bytedance.sdk.component.o.p.p(0, he.UNDEFINED_ITEM_ID, 20L, TimeUnit.SECONDS, new SynchronousQueue(), com.bytedance.sdk.component.ox.d.dq.ox.dq(str, false));
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.s;
    }

    public synchronized void dq(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("max < 1: ".concat(String.valueOf(i)));
        }
        this.dq = i;
        ox();
    }

    public synchronized void dq(e.dq dqVar) {
        try {
            if (this.mn.size() >= this.dq || ox(dqVar) >= this.f2146d) {
                this.iw.add(dqVar);
                return;
            }
            this.mn.add(dqVar);
            if (dqVar != null) {
                dqVar.d();
            }
            dq().execute(dqVar);
        } catch (Throwable unused) {
        }
    }

    public synchronized void dq(e eVar) {
        this.ia.add(eVar);
    }
}
