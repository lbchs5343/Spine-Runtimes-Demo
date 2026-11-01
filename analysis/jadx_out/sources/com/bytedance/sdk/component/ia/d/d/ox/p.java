package com.bytedance.sdk.component.ia.d.d.ox;

import android.os.Handler;
import android.os.Message;
import com.bytedance.sdk.component.ia.dq.o;
import com.bytedance.sdk.component.ia.dq.s;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class p {

    /* renamed from: d, reason: collision with root package name */
    private ox f1900d;
    private final com.bytedance.sdk.component.ia.d.d.d ia;
    private final s mn;
    private volatile long ox = 0;
    private volatile long p = 0;
    private final AtomicInteger s = new AtomicInteger(0);
    private final AtomicInteger iw = new AtomicInteger(0);
    public final AtomicInteger dq = new AtomicInteger(0);

    public p(s sVar, com.bytedance.sdk.component.ia.d.d.d dVar) {
        this.mn = sVar;
        this.ia = dVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(List<com.bytedance.sdk.component.ia.dq.d> list, boolean z, long j, int i, Object obj) {
        d dq;
        try {
            com.bytedance.sdk.component.ia.dq.d dVar = list.get(0);
            com.bytedance.sdk.component.ia.d.ox.d.dq(com.bytedance.sdk.component.ia.d.d.d.dq.wp(), 1, this.mn);
            if (dVar.p() == 0) {
                dq = com.bytedance.sdk.component.ia.d.d.ia().dq(list);
                dq(dq, list);
                if (dq != null) {
                    com.bytedance.sdk.component.ia.d.ox.dq.dq(list, dq.p, this.mn);
                }
            } else {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONArray jSONArray = new JSONArray();
                    Iterator<com.bytedance.sdk.component.ia.dq.d> it = list.iterator();
                    while (it.hasNext()) {
                        jSONArray.put(it.next().mn());
                    }
                    jSONObject.put("stats_list", jSONArray);
                } catch (Exception e2) {
                    com.bytedance.sdk.component.ia.d.ox.ox.ox("json exception:" + e2.getMessage(), this.mn);
                }
                dq = com.bytedance.sdk.component.ia.d.d.ia().dq(jSONObject);
            }
            d dVar2 = dq;
            this.dq.decrementAndGet();
            dq(z, dVar2, list, j, obj, i);
        } catch (Throwable th) {
            com.bytedance.sdk.component.ia.d.ox.ox.ox("inner exception:" + th.getMessage(), this.mn);
            com.bytedance.sdk.component.ia.d.ox.d.dq(com.bytedance.sdk.component.ia.d.d.d.dq.s(), 1, this.mn);
            this.dq.decrementAndGet();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00eb A[Catch: all -> 0x0025, TryCatch #0 {all -> 0x0025, blocks: (B:6:0x0009, B:8:0x0021, B:20:0x00eb, B:21:0x00ee, B:28:0x003e, B:30:0x004c, B:32:0x004e, B:34:0x005b, B:36:0x005d, B:38:0x0069, B:39:0x006c, B:40:0x0071, B:42:0x0077, B:44:0x007d, B:46:0x008b, B:47:0x008e, B:49:0x0094, B:50:0x0097, B:51:0x00b8, B:53:0x00c6, B:55:0x00c8, B:57:0x00d5, B:59:0x00d7, B:61:0x00e3, B:62:0x00e6, B:63:0x0129), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void dq(int i, List<com.bytedance.sdk.component.ia.dq.d> list, long j, Object obj, int i2) {
        ox oxVar = this.f1900d;
        synchronized (obj) {
            try {
                if (list == null || oxVar == null) {
                    return;
                }
                Handler d2 = oxVar.d();
                com.bytedance.sdk.component.ia.d.ox.dq.dq(i, list, j, this.mn);
                oxVar.dq().dq(i, list);
                com.bytedance.sdk.component.ia.dq.p p = this.mn.p();
                if (p != null) {
                    p.ig();
                }
                if (i != -2) {
                    if (i != -1) {
                        if (i != 0) {
                            if (i != 200) {
                                if (i == 509) {
                                    this.ia.f1888d = true;
                                    this.ia.ox = false;
                                    if (d2.hasMessages(2)) {
                                        return;
                                    }
                                    if (System.currentTimeMillis() - this.ox < 30000) {
                                        return;
                                    }
                                    this.ox = System.currentTimeMillis();
                                    if (d2.hasMessages(3)) {
                                        d2.removeMessages(3);
                                    }
                                    dq(2, 30000L, d2);
                                }
                                if (i2 == 2) {
                                    obj.notify();
                                }
                                if (this.ia != null) {
                                    com.bytedance.sdk.component.ia.d.ox.ox.dq("upload thread reuse or close --> run:" + oxVar.ox() + " queueSize:" + this.ia.p().size() + " message:" + com.bytedance.sdk.component.ia.d.ox.dq.d(i2), this.mn);
                                    return;
                                }
                                return;
                            }
                        }
                    }
                    if (this.ia.f1888d || this.ia.ox) {
                        this.ia.f1888d = false;
                        this.ia.ox = false;
                        if (d2.hasMessages(2)) {
                            d2.removeMessages(2);
                        }
                        if (d2.hasMessages(3)) {
                            d2.removeMessages(3);
                        }
                        this.p = 0L;
                        this.ox = 0L;
                        this.s.set(0);
                        this.iw.set(0);
                        com.bytedance.sdk.component.ia.d.ox.d.dq(com.bytedance.sdk.component.ia.d.d.d.dq.iw(), 1, this.mn);
                        oxVar.dq(2, "handle_result");
                    }
                    if (i2 == 2) {
                    }
                    if (this.ia != null) {
                    }
                }
                this.ia.f1888d = false;
                this.ia.ox = true;
                if (d2.hasMessages(3)) {
                    return;
                }
                if (System.currentTimeMillis() - this.p < 15000) {
                    return;
                }
                this.p = System.currentTimeMillis();
                if (d2.hasMessages(2)) {
                    d2.removeMessages(2);
                }
                dq(3, 15000L, d2);
                if (i2 == 2) {
                }
                if (this.ia != null) {
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void dq(d dVar, List<com.bytedance.sdk.component.ia.dq.d> list) {
        if (dVar == null || !dVar.dq) {
            return;
        }
        List<com.bytedance.sdk.component.ia.dq.ox> dq = com.bytedance.sdk.component.ia.d.dq.dq();
        if (list == null || dq == null || dq.size() == 0) {
            return;
        }
        for (com.bytedance.sdk.component.ia.dq.d dVar2 : list) {
            if (dVar2.s() == 1) {
                String dq2 = com.bytedance.sdk.component.ia.d.ox.dq.dq(dVar2, this.mn);
                String iw = com.bytedance.sdk.component.ia.d.ox.dq.iw(dVar2, this.mn);
                for (com.bytedance.sdk.component.ia.dq.ox oxVar : dq) {
                    if (oxVar != null) {
                        oxVar.dq(dq2, iw);
                    }
                }
            }
        }
    }

    private void dq(final List<com.bytedance.sdk.component.ia.dq.d> list, final boolean z, final long j, final int i, final Object obj) {
        com.bytedance.sdk.component.ia.dq.p p = this.mn.p();
        if (p != null) {
            Executor kk = p.kk();
            if (list.get(0).s() == 1) {
                kk = p.ia();
            }
            Executor executor = kk;
            if (executor == null) {
                return;
            }
            this.dq.incrementAndGet();
            executor.execute(new com.bytedance.sdk.component.ia.d.s.d("csj_log_upload") { // from class: com.bytedance.sdk.component.ia.d.d.ox.p.1
                @Override // java.lang.Runnable
                public void run() {
                    p.this.d(list, z, j, i, obj);
                }
            });
        }
    }

    private void dq(List<com.bytedance.sdk.component.ia.dq.d> list, final boolean z, final long j, final Object obj, final int i) {
        this.dq.incrementAndGet();
        com.bytedance.sdk.component.ia.d.ox.d.dq(com.bytedance.sdk.component.ia.d.d.d.dq.wp(), 1, this.mn);
        try {
            this.mn.o().dq(list, new o() { // from class: com.bytedance.sdk.component.ia.d.d.ox.p.2
                @Override // com.bytedance.sdk.component.ia.dq.o
                public void dq(List<dq> list2) {
                    try {
                        p.this.dq.decrementAndGet();
                        if (list2 == null || list2.size() == 0) {
                            return;
                        }
                        int size = list2.size();
                        for (int i2 = 0; i2 < size; i2++) {
                            dq dqVar = list2.get(i2);
                            if (dqVar != null) {
                                p.this.dq(z, dqVar.dq(), dqVar.d(), j, obj, i);
                            }
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            });
        } catch (Exception e2) {
            com.bytedance.sdk.component.ia.d.ox.ox.ox("outer exception：" + e2.getMessage(), this.mn);
            com.bytedance.sdk.component.ia.d.ox.d.dq(com.bytedance.sdk.component.ia.d.d.d.dq.s(), 1, this.mn);
            this.dq.decrementAndGet();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(boolean z, d dVar, List<com.bytedance.sdk.component.ia.dq.d> list, long j, Object obj, int i) {
        if (z) {
            return;
        }
        if (dVar == null) {
            dq(-1, list, j, obj, i);
            return;
        }
        int i2 = dVar.f1896d;
        if (dVar.s) {
            i2 = -1;
        } else if (i2 < 0) {
            i2 = -2;
        }
        if (i2 == 510 || i2 == 511) {
            i2 = -2;
        }
        int i3 = (dVar.dq || ((i2 < 500 || i2 >= 509) && i2 <= 513)) ? i2 : -2;
        if (list != null) {
            list.size();
            this.dq.get();
        }
        dq(i3, list, j, obj, i);
    }

    public void dq() {
        this.ia.f1888d = false;
        this.p = 0L;
        this.ox = 0L;
        this.s.set(0);
        this.iw.set(0);
    }

    public void dq(int i, long j, Handler handler) {
        if (handler == null) {
            com.bytedance.sdk.component.ia.d.ox.ox.ox("mHandler == null", this.mn);
            return;
        }
        Message obtain = Message.obtain();
        obtain.what = i;
        if (i == 2) {
            handler.sendMessageDelayed(obtain, (((this.s.incrementAndGet() - 1) % 4) + 1) * j);
        } else if (i == 3) {
            handler.sendMessageDelayed(obtain, (((this.iw.incrementAndGet() - 1) % 4) + 1) * j);
        } else {
            com.bytedance.sdk.component.ia.d.ox.ox.ox("sendMonitorMessage error state", this.mn);
        }
    }

    public void dq(List<com.bytedance.sdk.component.ia.dq.d> list, boolean z, String str, int i, Object obj, com.bytedance.sdk.component.ia.d.dq.d dVar) {
        this.f1900d = this.ia.s();
        long currentTimeMillis = System.currentTimeMillis();
        com.bytedance.sdk.component.ia.d.ox.dq.dq(list, i, str, this.mn);
        if (this.mn.o() != null) {
            dq(list, z, currentTimeMillis, obj, i);
        } else {
            com.bytedance.sdk.component.ia.d.ox.dq.dq(list, str, dVar);
            dq(list, z, currentTimeMillis, i, obj);
        }
    }
}
