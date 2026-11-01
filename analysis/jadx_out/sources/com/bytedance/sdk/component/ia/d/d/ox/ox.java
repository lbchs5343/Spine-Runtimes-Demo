package com.bytedance.sdk.component.ia.d.d.ox;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import com.bytedance.sdk.component.ia.d.dq.s;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class ox extends HandlerThread implements Handler.Callback {
    private static int ig = 10;
    private static int mp = 200;
    private volatile int cd;

    /* renamed from: d, reason: collision with root package name */
    private volatile boolean f1898d;
    protected s dq;

    /* renamed from: f, reason: collision with root package name */
    private final String f1899f;
    private final String fw;
    private volatile String gh;
    private final com.bytedance.sdk.component.ia.dq.s i;
    private final long ia;
    private volatile int iw;
    private final String jy;
    private com.bytedance.sdk.component.ia.d.dq.d k;
    private final long kk;
    private final com.bytedance.sdk.component.ia.d.d.d le;
    private final AtomicInteger mn;
    private final List<com.bytedance.sdk.component.ia.dq.d> no;
    private volatile Handler o;
    private final Object ox;
    private p p;
    private final String q;
    private final HashMap<String, List<com.bytedance.sdk.component.ia.dq.d>> r;
    private final PriorityBlockingQueue<com.bytedance.sdk.component.ia.dq.d> s;

    public ox(PriorityBlockingQueue<com.bytedance.sdk.component.ia.dq.d> priorityBlockingQueue, com.bytedance.sdk.component.ia.dq.s sVar, com.bytedance.sdk.component.ia.d.d.d dVar) {
        super(sVar.s() + "_log");
        this.f1898d = true;
        this.ox = new Object();
        this.mn = new AtomicInteger(0);
        this.ia = PushUIConfig.dismissTime;
        this.kk = 5000000000L;
        this.no = new ArrayList();
        this.q = "after_upload";
        this.jy = "dispatch_new_event";
        this.f1899f = "notify_least_once";
        this.fw = "prepare_upload";
        this.cd = 0;
        this.gh = "DEFAULT";
        this.r = new HashMap<>();
        this.s = priorityBlockingQueue;
        this.i = sVar;
        this.le = dVar;
        this.dq = new com.bytedance.sdk.component.ia.d.dq.ox(sVar);
        this.p = new p(sVar, dVar);
    }

    private void d(int i, String str) {
        this.cd = i;
        this.gh = str;
    }

    private void d(String str) {
        if (ox() || this.o == null || this.o.hasMessages(1)) {
            return;
        }
        this.o.sendEmptyMessage(1);
    }

    private void d(List<com.bytedance.sdk.component.ia.dq.d> list, String str) {
        this.no.addAll(list);
        this.no.size();
        com.bytedance.sdk.component.ia.dq.p p = this.i.p();
        if (p != null && p.ig() != null) {
            ig = p.ig().p();
        }
        if (this.no.size() < ig) {
            o();
            return;
        }
        if (this.o.hasMessages(11)) {
            this.o.removeMessages(11);
        }
        ArrayList arrayList = new ArrayList(this.no);
        this.no.clear();
        dq(arrayList, false, "max_size_dispatch");
    }

    private boolean d(com.bytedance.sdk.component.ia.dq.d dVar) {
        p pVar;
        com.bytedance.sdk.component.ia.dq.s sVar;
        if (com.bytedance.sdk.component.ia.d.ox.dq.dq(this.i) && (sVar = this.i) != null && sVar.ox()) {
            com.bytedance.sdk.component.ia.d.ox.ox.d("prepared upload cancel meet delay before init set。" + com.bytedance.sdk.component.ia.d.ox.dq.ox(dVar, this.i), this.i);
            return true;
        }
        if (kk()) {
            com.bytedance.sdk.component.ia.d.ox.ox.d("prepared upload cancel meet busy:" + com.bytedance.sdk.component.ia.d.ox.dq.d(this.iw), this.i);
            com.bytedance.sdk.component.ia.d.ox.d.dq(com.bytedance.sdk.component.ia.d.d.d.dq.dq(), 1, this.i);
            if (this.s.size() == 0) {
                if (this.o.hasMessages(2) || (pVar = this.p) == null) {
                    dq(false);
                } else {
                    pVar.dq();
                }
            }
            return true;
        }
        return false;
    }

    private void dq(com.bytedance.sdk.component.ia.dq.d dVar) {
        this.mn.set(0);
        if (this.le.f1888d) {
            d(5, "new_busy");
            this.iw = 5;
        } else if (this.le.ox) {
            d(6, "new_error");
            this.iw = 7;
        } else {
            d(7, "new_event");
            this.iw = 4;
        }
        com.bytedance.sdk.component.ia.d.ox.d.dq(com.bytedance.sdk.component.ia.d.d.d.dq.jy(), 1, this.i);
        this.dq.dq(dVar, this.iw);
        com.bytedance.sdk.component.ia.d.ox.dq.dq(this.iw, dVar, this.i);
        com.bytedance.sdk.component.ia.d.ox.dq.ia(dVar, this.i);
    }

    private void dq(com.bytedance.sdk.component.ia.dq.d dVar, int i) {
        this.mn.set(0);
        com.bytedance.sdk.component.ia.d.p.dq dqVar = (com.bytedance.sdk.component.ia.d.p.dq) dVar;
        int no = dqVar.no();
        if (i == 0) {
            d(1, dqVar.o());
            this.iw = no;
            if (this.iw != 6) {
                com.bytedance.sdk.component.ia.d.ox.d.dq(com.bytedance.sdk.component.ia.d.d.d.dq.ia(), 1, this.i);
                ox(dVar);
                return;
            }
            return;
        }
        if (no == 1) {
            this.iw = 1;
            d(2, dqVar.o());
            ox(dVar);
        } else if (no == 2) {
            ia();
            this.iw = 2;
            d(3, dqVar.o());
            ox(dVar);
        }
    }

    private void dq(String str) {
        if (this.no.size() != 0) {
            o();
        } else {
            d(str);
        }
    }

    private void dq(List<com.bytedance.sdk.component.ia.dq.d> list, int i) {
        com.bytedance.sdk.component.ia.d.ox.dq.dq(list, this.s.size(), this.i);
        com.bytedance.sdk.component.ia.dq.d dVar = list.get(0);
        if (dVar == null) {
            com.bytedance.sdk.component.ia.d.ox.ox.ox("_error", "adLogEvent is null", this.i);
            return;
        }
        if (list.size() > 1 || com.bytedance.sdk.component.ia.d.ox.dq.d(this.i) || com.bytedance.sdk.component.ia.d.ox.dq.p(this.i)) {
            com.bytedance.sdk.component.ia.d.ox.ox.dq("PADLT", "Batch report（ local or stats ）", this.i);
            if (dVar.p() != 0 || dVar.s() != 2 || i != 4) {
                dq(list, "batchRead");
                return;
            } else if (dVar.d() == 3) {
                dq(list, "version_v3_batch");
                return;
            } else {
                d(list, "batchOptimize");
                return;
            }
        }
        if (dVar.s() == 1) {
            dq(list, "highPriority");
            com.bytedance.sdk.component.ia.d.ox.ox.dq("PADLT", "Single high priority （ applog ）", this.i);
            return;
        }
        if (dVar.p() == 0 && dVar.s() == 2) {
            if (dVar.d() == 3) {
                dq(list, "version_v3_single_directly");
                return;
            } else {
                d(list, "singleOptimize");
                return;
            }
        }
        if (dVar.p() == 1) {
            com.bytedance.sdk.component.ia.d.ox.ox.dq("PADLT", "Stats batch report （ stats ）", this.i);
            dq(list, "stats_directly");
        } else if (dVar.p() == 3) {
            dq(list, "adType_v3_directly");
        } else if (dVar.p() == 2) {
            com.bytedance.sdk.component.ia.d.ox.ox.dq("PADLT", "Single high priority （ stats ）", this.i);
            dq(list, "other_directly");
        }
    }

    private void dq(List<com.bytedance.sdk.component.ia.dq.d> list, String str) {
        dq(list, false, str);
    }

    private void dq(List<com.bytedance.sdk.component.ia.dq.d> list, boolean z, String str) {
        this.p.dq(list, z, str, this.iw, this.ox, this.k);
        if (z) {
            return;
        }
        no();
    }

    private boolean dq(int i) {
        return i >= 4 && this.p.dq.get() == 0 && !this.le.f1888d && !this.le.ox;
    }

    private void ia() {
        if (this.s.size() >= 100) {
            for (int i = 0; i < 100; i++) {
                com.bytedance.sdk.component.ia.dq.d poll = this.s.poll();
                if (!(poll instanceof com.bytedance.sdk.component.ia.d.p.dq)) {
                    if (poll != null) {
                        dq(poll);
                    } else {
                        com.bytedance.sdk.component.ia.d.ox.ox.ox("event == null", this.i);
                    }
                }
            }
        }
    }

    private void iw() {
        while (ox()) {
            try {
                com.bytedance.sdk.component.ia.dq.d poll = this.s.poll(60000L, TimeUnit.MILLISECONDS);
                int size = this.s.size();
                if (poll instanceof com.bytedance.sdk.component.ia.d.p.dq) {
                    dq(poll, size);
                } else if (poll == null) {
                    int incrementAndGet = this.mn.incrementAndGet();
                    if (dq(incrementAndGet)) {
                        mn();
                        return;
                    } else if (incrementAndGet < 4) {
                        com.bytedance.sdk.component.ia.d.ox.ox.d("flush once begin; timeoutCount:" + incrementAndGet, this.i);
                        this.iw = 1;
                        d(4, "batch_once");
                        ox(null);
                    }
                } else {
                    dq(poll);
                    ox(poll);
                }
            } catch (Throwable th) {
                th.printStackTrace();
                com.bytedance.sdk.component.ia.d.ox.ox.ox("run exception:" + th.getMessage(), this.i);
                com.bytedance.sdk.component.ia.d.ox.d.dq(com.bytedance.sdk.component.ia.d.d.d.dq.s(), 1, this.i);
            }
        }
    }

    private boolean kk() {
        if (this.le.f1888d) {
            return this.iw == 4 || this.iw == 7 || this.iw == 6 || this.iw == 5 || this.iw == 2;
        }
        return false;
    }

    private void mn() {
        com.bytedance.sdk.component.ia.d.ox.d.dq(com.bytedance.sdk.component.ia.d.d.d.dq.kk(), 1, this.i);
        dq(false);
        this.le.d();
        com.bytedance.sdk.component.ia.d.ox.ox.d("exit log thread", this.i);
    }

    private void no() {
        long nanoTime;
        dq("after_upload");
        com.bytedance.sdk.component.ia.d.ox.dq.d(this.iw);
        if (this.iw == 2) {
            synchronized (this.ox) {
                try {
                    long nanoTime2 = System.nanoTime();
                    this.ox.wait(PushUIConfig.dismissTime);
                    nanoTime = System.nanoTime() - nanoTime2;
                    if (!this.le.f1888d) {
                        boolean z = this.le.ox;
                    }
                } catch (InterruptedException e2) {
                    com.bytedance.sdk.component.ia.d.ox.ox.ox("wait exception:" + e2.getMessage(), this.i);
                    e2.printStackTrace();
                } finally {
                }
                if (nanoTime < 5000000000L && 5000000000L - nanoTime >= 50000000) {
                    if (!this.le.f1888d && !this.le.ox) {
                        com.bytedance.sdk.component.ia.d.ox.ox.d("afterUpload meet notifyRunOnce flush memory db again", this.i);
                        com.bytedance.sdk.component.ia.d.ox.d.dq(com.bytedance.sdk.component.ia.d.d.d.dq.p(), 1, this.i);
                        dq(2, "continue");
                        return;
                    }
                    com.bytedance.sdk.component.ia.d.ox.ox.ox("afterUpload wait serverBusy", this.i);
                    return;
                }
                com.bytedance.sdk.component.ia.d.ox.ox.ox("afterUpload wait timeout", this.i);
            }
        }
    }

    private void o() {
        com.bytedance.sdk.component.ia.dq.p p = this.i.p();
        if (this.s.size() != 0) {
            this.no.size();
            return;
        }
        dq(false);
        if (this.o.hasMessages(11)) {
            this.o.removeMessages(11);
        }
        if (this.o.hasMessages(1)) {
            this.o.removeMessages(1);
        }
        long j = mp;
        if (p != null && p.ig() != null) {
            j = p.ig().ox();
        }
        this.o.sendEmptyMessageDelayed(11, j);
        this.no.size();
    }

    private void ox(com.bytedance.sdk.component.ia.dq.d dVar) {
        if (d(dVar)) {
            return;
        }
        boolean dq = dq(this.iw, this.le.f1888d, "needUpload check", dVar);
        if (dq) {
            List<com.bytedance.sdk.component.ia.dq.d> dq2 = this.dq.dq(this.iw, dVar, this.cd + "_" + this.gh);
            if (this.iw == 2 || this.iw == 1) {
                String dq3 = com.bytedance.sdk.component.ia.d.ox.dq.dq(dq2);
                if (com.bytedance.sdk.component.ia.d.ox.dq.dq(dq2, this.r.get(dq3), this.i)) {
                    this.r.clear();
                    this.k = this.dq.dq(-3, dq2);
                    com.bytedance.sdk.component.ia.d.ox.ox.ox("_delete", "flush_memory_db or batch_once meet repeat, so force delete", this.i);
                    dq("prepare_upload");
                    return;
                }
                if (!TextUtils.isEmpty(dq3)) {
                    this.r.put(dq3, dq2);
                }
            } else {
                this.r.clear();
            }
            if (dq2 == null || dq2.size() == 0) {
                com.bytedance.sdk.component.ia.d.ox.ox.d("_opt", "prepare upload result -> need true, no event need upload", this.i);
                dq("prepare_upload");
                dq = false;
            } else {
                com.bytedance.sdk.component.ia.d.ox.ox.d("_opt", "prepare upload result -> need true, size=" + dq2.size(), this.i);
                dq(dq2, this.iw);
            }
        } else {
            com.bytedance.sdk.component.ia.d.ox.ox.d("_opt", "prepare upload result -> need false", this.i);
            this.r.clear();
            dq("prepare_upload");
        }
        com.bytedance.sdk.component.ia.d.ox.ox.dq("_opt", "loop  needupload:" + dq, this.i);
    }

    private void p() {
        s();
        dq(1, "busy_error");
    }

    private void s() {
        if (!isAlive()) {
            this.le.dq(this.i.s());
        } else {
            if (ox()) {
                return;
            }
            dq(6, "quit");
        }
    }

    public Handler d() {
        return this.o;
    }

    public s dq() {
        return this.dq;
    }

    public void dq(int i, String str) {
        try {
            boolean dq = dq(i, this.le.f1888d, str + " check", null);
            com.bytedance.sdk.component.ia.d.ox.ox.d("notify runOnce check: " + dq + " " + com.bytedance.sdk.component.ia.d.ox.dq.d(i) + " from" + str, this.i);
            if (i != 6 && !dq) {
                return;
            }
            com.bytedance.sdk.component.ia.d.p.dq dqVar = new com.bytedance.sdk.component.ia.d.p.dq();
            dqVar.d(i);
            dqVar.ox(str);
            this.s.add(dqVar);
            d("notify_least_once");
        } catch (Throwable th) {
            com.bytedance.sdk.component.ia.d.ox.ox.ox(th.getMessage(), this.i);
        }
    }

    public void dq(com.bytedance.sdk.component.ia.dq.d dVar, boolean z) {
        if (dVar == null) {
            return;
        }
        if (!z) {
            this.s.add(dVar);
            d("dispatch_new_event");
        } else {
            if (this.o == null) {
                com.bytedance.sdk.component.ia.d.ox.ox.ox("other thread handler is null，ignore is true", this.i);
                return;
            }
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(dVar);
            dq(arrayList, true, "ignore_result_dispatch");
        }
    }

    public void dq(boolean z) {
        this.f1898d = z;
    }

    public boolean dq(int i, boolean z, String str, com.bytedance.sdk.component.ia.dq.d dVar) {
        com.bytedance.sdk.component.ia.dq.s sVar = this.i;
        if (sVar == null) {
            return false;
        }
        com.bytedance.sdk.component.ia.dq.p p = sVar.p();
        if (p != null && p.dq(this.i.getContext())) {
            return this.dq.dq(i, z, str, dVar);
        }
        com.bytedance.sdk.component.ia.d.ox.ox.ox("AdThread NET IS NOT AVAILABLE!!!", this.i);
        return false;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int i = message.what;
        try {
        } catch (Throwable th) {
            com.bytedance.sdk.component.ia.d.ox.ox.ox("error:" + th.getMessage(), this.i);
        }
        if (i == 1) {
            dq(true);
            iw();
        } else {
            if (i != 2 && i != 3) {
                if (i == 11) {
                    ArrayList arrayList = new ArrayList(this.no);
                    this.no.clear();
                    dq(arrayList, false, "timeout_dispatch");
                }
                return true;
            }
            p();
        }
        return true;
    }

    @Override // android.os.HandlerThread
    public void onLooperPrepared() {
        super.onLooperPrepared();
        this.o = new Handler(getLooper(), this);
        this.le.dq(this.o);
        this.o.sendEmptyMessage(1);
    }

    public boolean ox() {
        return this.f1898d;
    }
}
