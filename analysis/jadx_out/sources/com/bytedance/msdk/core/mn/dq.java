package com.bytedance.msdk.core.mn;

import java.util.LinkedList;
import java.util.Queue;

/* loaded from: classes.dex */
public class dq {
    private static volatile dq dq;

    /* renamed from: d, reason: collision with root package name */
    private long f957d;
    private long ox;
    private final Queue<Long> p = new LinkedList();

    private dq() {
    }

    public static dq dq() {
        if (dq == null) {
            synchronized (dq.class) {
                try {
                    if (dq == null) {
                        dq = new dq();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    public boolean d() {
        synchronized (dq.class) {
            try {
                if (this.f957d > 0 && this.ox > 0) {
                    long currentTimeMillis = System.currentTimeMillis();
                    if (this.p.size() >= this.f957d) {
                        while (this.p.size() > this.f957d) {
                            this.p.poll();
                        }
                        if (Math.abs(currentTimeMillis - this.p.peek().longValue()) <= this.ox) {
                            return true;
                        }
                        this.p.poll();
                        this.p.offer(Long.valueOf(currentTimeMillis));
                    } else {
                        this.p.offer(Long.valueOf(currentTimeMillis));
                    }
                    return false;
                }
                return false;
            } finally {
            }
        }
    }

    public void dq(long j, long j2) {
        synchronized (dq.class) {
            try {
                if (this.f957d == j) {
                    if (this.ox != j2) {
                    }
                }
                this.f957d = j;
                this.ox = j2;
                this.p.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean ox() {
        synchronized (dq.class) {
            try {
                if (this.f957d > 0 && this.ox > 0) {
                    long currentTimeMillis = System.currentTimeMillis();
                    if (this.p.size() >= this.f957d) {
                        while (this.p.size() > this.f957d) {
                            this.p.poll();
                        }
                        if (Math.abs(currentTimeMillis - this.p.peek().longValue()) <= this.ox) {
                            return true;
                        }
                    }
                    return false;
                }
                return false;
            } finally {
            }
        }
    }
}
