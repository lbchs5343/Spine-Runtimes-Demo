package com.bytedance.sdk.component.ia.d.d;

import android.os.Handler;
import android.os.Looper;
import com.bytedance.sdk.component.ia.d.d.ox.ox;
import com.bytedance.sdk.component.ia.dq.kk;
import com.bytedance.sdk.component.ia.dq.p;
import com.bytedance.sdk.component.ia.dq.s;
import java.util.Comparator;
import java.util.concurrent.Executor;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public class d implements kk {
    public static final com.bytedance.sdk.component.ia.d.d.dq.dq dq = new com.bytedance.sdk.component.ia.d.d.dq.dq();
    public static final long p = System.currentTimeMillis();
    public static long s = 0;
    private s ia;
    private volatile ox iw;
    private final Comparator<com.bytedance.sdk.component.ia.dq.d> kk;
    private volatile Handler mn;
    private final PriorityBlockingQueue<com.bytedance.sdk.component.ia.dq.d> o;

    /* renamed from: d, reason: collision with root package name */
    public volatile boolean f1888d = false;
    public volatile boolean ox = false;

    public d(s sVar) {
        Comparator<com.bytedance.sdk.component.ia.dq.d> comparator = new Comparator<com.bytedance.sdk.component.ia.dq.d>() { // from class: com.bytedance.sdk.component.ia.d.d.d.1
            @Override // java.util.Comparator
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public int compare(com.bytedance.sdk.component.ia.dq.d dVar, com.bytedance.sdk.component.ia.dq.d dVar2) {
                return d.this.dq(dVar, dVar2);
            }
        };
        this.kk = comparator;
        this.o = new PriorityBlockingQueue<>(8, comparator);
        this.ia = sVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int dq(com.bytedance.sdk.component.ia.dq.d dVar, com.bytedance.sdk.component.ia.dq.d dVar2) {
        long j;
        long j2;
        long j3;
        long j4;
        if (dVar == null) {
            return dVar2 == null ? 0 : -1;
        }
        if (dVar2 == null) {
            return 1;
        }
        if (dVar.s() != dVar2.s()) {
            return dVar.s() - dVar2.s();
        }
        if (dVar.dq() != null) {
            j = dVar.dq().dq();
            j2 = dVar.dq().d();
        } else {
            j = 0;
            j2 = 0;
        }
        if (dVar2.dq() != null) {
            j4 = dVar2.dq().dq();
            j3 = dVar2.dq().d();
        } else {
            j3 = 0;
            j4 = 0;
        }
        if (j == 0 || j4 == 0) {
            return 0;
        }
        long j5 = j - j4;
        if (Math.abs(j5) > 2147483647L) {
            return 0;
        }
        if (j5 != 0) {
            return (int) j5;
        }
        if (j2 == 0 || j3 == 0) {
            return 0;
        }
        return (int) (j2 - j3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(p pVar, long j) {
        ox oxVar = this.iw;
        if (pVar == null || oxVar == null) {
            return;
        }
        com.bytedance.sdk.component.ia.d.d.dq.dq dqVar = dq;
        oxVar.dq(pVar.dq(dqVar.dq(j, this.ia)), true);
        dqVar.o();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0027 A[Catch: Exception -> 0x001a, TRY_LEAVE, TryCatch #0 {Exception -> 0x001a, blocks: (B:38:0x000a, B:40:0x0010, B:13:0x0027, B:21:0x0053), top: B:37:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0043 A[Catch: Exception -> 0x0069, TryCatch #1 {Exception -> 0x0069, blocks: (B:6:0x0002, B:14:0x002d, B:16:0x0043, B:19:0x004d, B:28:0x0059), top: B:5:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void dq(final p pVar, com.bytedance.sdk.component.ia.dq.d dVar) {
        Exception exc;
        long d2;
        final long j;
        AtomicLong i;
        if (pVar != null) {
            try {
                if (pVar.ox()) {
                    if (dVar != null) {
                        try {
                            if (dVar.dq() != null) {
                                d2 = dVar.dq().d();
                                j = d2;
                                if (j == 1) {
                                    s = System.currentTimeMillis();
                                }
                                i = dq.i();
                                com.bytedance.sdk.component.ia.d.ox.d.dq(i, 1, this.ia);
                                if (i.get() == 200) {
                                    try {
                                        if (Looper.getMainLooper() != Looper.myLooper()) {
                                            dq(pVar, j);
                                            return;
                                        }
                                        Executor ia = pVar.ia();
                                        if (ia == null) {
                                            ia = pVar.kk();
                                        }
                                        if (ia != null) {
                                            ia.execute(new com.bytedance.sdk.component.ia.d.s.d("report") { // from class: com.bytedance.sdk.component.ia.d.d.d.2
                                                @Override // java.lang.Runnable
                                                public void run() {
                                                    d.this.dq(pVar, j);
                                                }
                                            });
                                            return;
                                        }
                                    } catch (Exception e2) {
                                        e = e2;
                                        exc = e;
                                        exc.printStackTrace();
                                        return;
                                    }
                                }
                            }
                        } catch (Exception e3) {
                            exc = e3;
                            exc.printStackTrace();
                            return;
                        }
                    }
                    d2 = 0;
                    j = d2;
                    if (j == 1) {
                    }
                    i = dq.i();
                    com.bytedance.sdk.component.ia.d.ox.d.dq(i, 1, this.ia);
                    if (i.get() == 200) {
                    }
                }
            } catch (Exception e4) {
                e = e4;
            }
        }
    }

    @Override // com.bytedance.sdk.component.ia.dq.kk
    public void d() {
        if (this.iw == null || !this.iw.isAlive()) {
            return;
        }
        synchronized (this) {
            try {
                if (this.iw != null && this.iw.isAlive()) {
                    if (this.mn != null) {
                        this.mn.removeCallbacksAndMessages(null);
                    }
                    this.iw.dq(false);
                    this.iw.quitSafely();
                    this.iw = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bytedance.sdk.component.ia.dq.kk
    public void dq() {
        s sVar = this.ia;
        if (sVar == null) {
            return;
        }
        dq(sVar.s());
        ox();
    }

    public void dq(Handler handler) {
        this.mn = handler;
    }

    @Override // com.bytedance.sdk.component.ia.dq.kk
    public void dq(com.bytedance.sdk.component.ia.dq.d dVar) {
        s sVar;
        if (dVar == null || (sVar = this.ia) == null) {
            com.bytedance.sdk.component.ia.d.ox.ox.p("error : log config is null", this.ia);
            return;
        }
        String s2 = sVar.s();
        dVar.dq(System.currentTimeMillis());
        dq(s2);
        p p2 = this.ia.p();
        ox oxVar = this.iw;
        if (oxVar != null) {
            dq(p2, dVar);
            oxVar.dq(dVar, dVar.s() == 4);
        }
    }

    public boolean dq(String str) {
        try {
            if (this.iw != null || com.bytedance.sdk.component.ia.d.dq.dq(str) || this.ia == null) {
                return false;
            }
            synchronized (this) {
                try {
                    if (this.iw != null) {
                        return false;
                    }
                    this.iw = new ox(this.o, this.ia, this);
                    this.iw.start();
                    return true;
                } finally {
                }
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.ia.d.ox.ox.ox(th.getMessage(), this.ia);
            return false;
        }
    }

    @Override // com.bytedance.sdk.component.ia.dq.kk
    public void ox() {
        com.bytedance.sdk.component.ia.d.ox.ox.d("flushMemoryAndDB", this.ia);
        s sVar = this.ia;
        if (sVar == null) {
            com.bytedance.sdk.component.ia.d.ox.ox.d("discard flush config is null", sVar);
            return;
        }
        p p2 = sVar.p();
        if (p2 == null) {
            com.bytedance.sdk.component.ia.d.ox.ox.d("discard flush logDepend is null", this.ia);
            return;
        }
        final ox oxVar = this.iw;
        if (Looper.myLooper() != Looper.getMainLooper()) {
            if (oxVar != null) {
                oxVar.dq(2, "start_child2");
                return;
            }
            return;
        }
        s sVar2 = this.ia;
        if (sVar2 == null) {
            com.bytedance.sdk.component.ia.d.ox.ox.d("discard flush", sVar2);
            return;
        }
        Executor ia = p2.ia();
        if (ia == null) {
            ia = p2.kk();
        }
        if (ia != null) {
            ia.execute(new com.bytedance.sdk.component.ia.d.s.d("flush") { // from class: com.bytedance.sdk.component.ia.d.d.d.3
                @Override // java.lang.Runnable
                public void run() {
                    ox oxVar2 = oxVar;
                    if (oxVar2 != null) {
                        oxVar2.dq(2, "start_child1");
                    }
                }
            });
        } else {
            com.bytedance.sdk.component.ia.d.ox.ox.d("discard flush executor is null", this.ia);
        }
    }

    public PriorityBlockingQueue<com.bytedance.sdk.component.ia.dq.d> p() {
        return this.o;
    }

    public ox s() {
        return this.iw;
    }
}
