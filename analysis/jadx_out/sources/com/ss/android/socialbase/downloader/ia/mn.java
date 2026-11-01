package com.ss.android.socialbase.downloader.ia;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

/* loaded from: classes.dex */
public class mn {
    private dq ox;
    private Handler p;
    private Object dq = new Object();

    /* renamed from: d, reason: collision with root package name */
    private Queue<d> f9373d = new ConcurrentLinkedQueue();

    public class d {

        /* renamed from: d, reason: collision with root package name */
        public long f9374d;
        public Runnable dq;

        public d(Runnable runnable, long j) {
            this.dq = runnable;
            this.f9374d = j;
        }
    }

    public class dq extends HandlerThread {
        public dq(String str) {
            super(str);
        }

        @Override // android.os.HandlerThread
        public void onLooperPrepared() {
            super.onLooperPrepared();
            Looper looper = getLooper();
            synchronized (mn.this.dq) {
                mn.this.p = new Handler(looper);
            }
            while (!mn.this.f9373d.isEmpty()) {
                d dVar = (d) mn.this.f9373d.poll();
                if (dVar != null) {
                    mn.this.p.postDelayed(dVar.dq, dVar.f9374d);
                }
            }
        }
    }

    public mn(String str) {
        this.ox = new dq(str);
    }

    public void d() {
        this.ox.quit();
    }

    public void dq() {
        this.ox.start();
    }

    public void dq(Runnable runnable) {
        dq(runnable, 0L);
    }

    public void dq(Runnable runnable, long j) {
        if (this.p == null) {
            synchronized (this.dq) {
                try {
                    if (this.p == null) {
                        this.f9373d.add(new d(runnable, j));
                        return;
                    }
                } finally {
                }
            }
        }
        this.p.postDelayed(runnable, j);
    }
}
