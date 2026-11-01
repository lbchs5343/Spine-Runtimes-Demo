package com.bytedance.sdk.component.o.d;

import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.MessageQueue;
import com.bytedance.sdk.component.utils.e;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private Handler f2018d;
    private final p<d> dq;
    private Handler ox;

    /* renamed from: com.bytedance.sdk.component.o.d.dq$dq, reason: collision with other inner class name */
    public static class C0124dq {
        private static final dq dq = new dq();
    }

    private dq() {
        this.dq = p.dq(2);
    }

    private d d(e.dq dqVar, String str) {
        HandlerThread handlerThread = new HandlerThread(str);
        handlerThread.start();
        return new d(handlerThread, dqVar);
    }

    public static dq dq() {
        return C0124dq.dq;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(final Handler handler, final Handler handler2) {
        MessageQueue queue;
        boolean isIdle;
        if (Build.VERSION.SDK_INT >= 23) {
            queue = handler.getLooper().getQueue();
            isIdle = queue.isIdle();
            if (!isIdle) {
                handler2.postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.o.d.dq.1
                    @Override // java.lang.Runnable
                    public void run() {
                        dq.this.dq(handler, handler2);
                    }
                }, 1000L);
            } else {
                handler.removeCallbacksAndMessages(null);
                handler.getLooper().quit();
            }
        }
    }

    public Handler d() {
        if (this.f2018d == null) {
            synchronized (dq.class) {
                try {
                    if (this.f2018d == null) {
                        this.f2018d = dq("csj_io_handler");
                    }
                } finally {
                }
            }
        }
        return this.f2018d;
    }

    public e dq(e.dq dqVar, final String str) {
        d dq = this.dq.dq();
        if (dq == null) {
            return d(dqVar, str);
        }
        dq.dq(dqVar);
        dq.post(new Runnable() { // from class: com.bytedance.sdk.component.o.d.dq.2
            @Override // java.lang.Runnable
            public void run() {
                Thread.currentThread().setName(str);
            }
        });
        return dq;
    }

    public e dq(String str) {
        return dq((e.dq) null, str);
    }

    public boolean dq(e eVar) {
        if (!(eVar instanceof d)) {
            return false;
        }
        d dVar = (d) eVar;
        if (this.dq.dq((p<d>) dVar)) {
            return true;
        }
        dVar.d();
        return true;
    }

    public Handler ox() {
        if (this.ox == null) {
            synchronized (dq.class) {
                try {
                    if (this.ox == null) {
                        this.ox = dq("csj_main_handler");
                    }
                } finally {
                }
            }
        }
        return this.ox;
    }
}
