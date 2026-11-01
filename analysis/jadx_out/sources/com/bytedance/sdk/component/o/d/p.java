package com.bytedance.sdk.component.o.d;

import com.bytedance.sdk.component.o.d.ox;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes.dex */
public class p<T extends ox> {

    /* renamed from: d, reason: collision with root package name */
    private BlockingQueue<T> f2021d = new LinkedBlockingQueue();
    private int dq;

    private p(int i) {
        this.dq = i;
    }

    public static p dq(int i) {
        return new p(i);
    }

    public T dq() {
        return this.f2021d.poll();
    }

    public boolean dq(T t) {
        if (t == null) {
            return false;
        }
        t.dq();
        if (this.f2021d.size() >= this.dq) {
            return false;
        }
        return this.f2021d.offer(t);
    }
}
