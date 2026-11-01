package com.bytedance.sdk.component.ox.d;

import android.os.Bundle;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.component.ox.d.dq.d.mn;
import g.he;
import java.lang.ref.Reference;
import java.net.Socket;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class o {
    static final /* synthetic */ boolean ox = true;
    private static final Executor p = new com.bytedance.sdk.component.o.p.p(0, he.UNDEFINED_ITEM_ID, 20, TimeUnit.SECONDS, new SynchronousQueue(), com.bytedance.sdk.component.ox.d.dq.ox.dq("OkHttp ConnectionPool", true));

    /* renamed from: d, reason: collision with root package name */
    boolean f2139d;
    final com.bytedance.sdk.component.ox.d.dq.d.p dq;
    private long ia;
    private long iw;
    private final Runnable kk;
    private List<String> mn;
    private final Deque<com.bytedance.sdk.component.ox.d.dq.d.ox> o;
    private int s;

    public o() {
        this(5, 5L, TimeUnit.MINUTES);
    }

    public o(int i, long j, TimeUnit timeUnit) {
        this.kk = new Runnable() { // from class: com.bytedance.sdk.component.ox.d.o.1
            @Override // java.lang.Runnable
            public void run() {
                while (true) {
                    long dq = o.this.dq(System.nanoTime());
                    if (dq == -1) {
                        return;
                    }
                    if (dq > 0) {
                        long j2 = dq / C.MICROS_PER_SECOND;
                        long j3 = dq - (C.MICROS_PER_SECOND * j2);
                        synchronized (o.this) {
                            try {
                                o.this.wait(j2, (int) j3);
                            } catch (InterruptedException unused) {
                            }
                        }
                    }
                }
            }
        };
        this.o = new ArrayDeque();
        this.dq = new com.bytedance.sdk.component.ox.d.dq.d.p();
        this.s = i;
        this.iw = timeUnit.toNanos(j);
        if (j <= 0) {
            throw new IllegalArgumentException("keepAliveDuration <= 0: ".concat(String.valueOf(j)));
        }
    }

    private int dq(com.bytedance.sdk.component.ox.d.dq.d.ox oxVar, long j) {
        List<Reference<com.bytedance.sdk.component.ox.d.dq.d.mn>> list = oxVar.p;
        int i = 0;
        while (i < list.size()) {
            Reference<com.bytedance.sdk.component.ox.d.dq.d.mn> reference = list.get(i);
            if (reference.get() != null) {
                i++;
            } else {
                com.bytedance.sdk.component.ox.d.dq.mn.s.d().dq("A connection to " + oxVar.dq().dq().dq() + " was leaked. Did you forget to close a response body?", ((mn.dq) reference).dq);
                list.remove(i);
                oxVar.dq = true;
                if (list.isEmpty()) {
                    oxVar.s = j - this.iw;
                    return 0;
                }
            }
        }
        return list.size();
    }

    private boolean ox(com.bytedance.sdk.component.ox.d.dq.d.ox oxVar) {
        try {
            List<String> list = this.mn;
            if (list != null && !list.isEmpty() && oxVar.dq() != null && oxVar.dq().dq() != null && oxVar.dq().dq().dq() != null && oxVar.dq().dq().dq().mn() != null) {
                String mn = oxVar.dq().dq().dq().mn();
                if (!TextUtils.isEmpty(mn)) {
                    if (this.mn.contains(mn)) {
                        return true;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public boolean d(com.bytedance.sdk.component.ox.d.dq.d.ox oxVar) {
        if (!ox && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        if (oxVar.dq || this.s == 0) {
            this.o.remove(oxVar);
            return true;
        }
        notifyAll();
        return false;
    }

    public long dq(long j) {
        try {
            synchronized (this) {
                try {
                    com.bytedance.sdk.component.ox.d.dq.d.ox oxVar = null;
                    long j2 = Long.MIN_VALUE;
                    int i = 0;
                    int i2 = 0;
                    for (com.bytedance.sdk.component.ox.d.dq.d.ox oxVar2 : this.o) {
                        if (dq(oxVar2, j) > 0) {
                            i2++;
                        } else {
                            i++;
                            long j3 = j - oxVar2.s;
                            if (this.ia > 0 && ox(oxVar2)) {
                                j3 -= this.ia;
                            }
                            if (j3 > j2) {
                                oxVar = oxVar2;
                                j2 = j3;
                            }
                        }
                    }
                    long j4 = this.iw;
                    if (j2 < j4 && i <= this.s) {
                        if (i > 0) {
                            return j4 - j2;
                        }
                        if (i2 > 0) {
                            return j4;
                        }
                        this.f2139d = false;
                        return -1L;
                    }
                    this.o.remove(oxVar);
                    com.bytedance.sdk.component.ox.d.dq.ox.dq(oxVar.ox());
                    return 0L;
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (OutOfMemoryError unused) {
            return this.iw;
        }
    }

    public com.bytedance.sdk.component.ox.d.dq.d.ox dq(dq dqVar, com.bytedance.sdk.component.ox.d.dq.d.mn mnVar, op opVar) {
        if (!ox && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        for (com.bytedance.sdk.component.ox.d.dq.d.ox oxVar : this.o) {
            if (oxVar.dq(dqVar, opVar)) {
                if (mnVar != null) {
                    mnVar.dq(oxVar, true);
                }
                return oxVar;
            }
        }
        return null;
    }

    public Socket dq(dq dqVar, com.bytedance.sdk.component.ox.d.dq.d.mn mnVar) {
        if (!ox && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        for (com.bytedance.sdk.component.ox.d.dq.d.ox oxVar : this.o) {
            if (oxVar.dq(dqVar, null) && oxVar.s() && oxVar != mnVar.d()) {
                return mnVar.dq(oxVar);
            }
        }
        return null;
    }

    public void dq(Bundle bundle) {
        if (bundle != null) {
            try {
                if (bundle.containsKey("max_idle_cnt")) {
                    int i = bundle.getInt("max_idle_cnt");
                    if (i <= 5) {
                        i = this.s;
                    }
                    this.s = i;
                }
                if (bundle.containsKey("max_idle_time")) {
                    long j = bundle.getLong("max_idle_time");
                    this.iw = j > 5 ? TimeUnit.MINUTES.toNanos(j) : this.iw;
                }
                if (bundle.containsKey("white_hosts") && bundle.containsKey("white_extra_idle_time")) {
                    this.mn = bundle.getStringArrayList("white_hosts");
                    long j2 = bundle.getLong("white_extra_idle_time");
                    this.ia = j2 > 0 ? TimeUnit.MINUTES.toNanos(j2) : 0L;
                }
            } catch (Throwable unused) {
            }
        }
    }

    public void dq(com.bytedance.sdk.component.ox.d.dq.d.ox oxVar) {
        if (!ox && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        if (!this.f2139d) {
            this.f2139d = true;
            p.execute(this.kk);
        }
        this.o.add(oxVar);
    }
}
