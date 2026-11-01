package com.bykv.vk.openvk.preload.geckox;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import com.bykv.vk.openvk.preload.geckox.ig.dq;
import com.bykv.vk.openvk.preload.geckox.ig.s;
import com.bykv.vk.openvk.preload.geckox.s.d.d.iw;
import com.bykv.vk.openvk.preload.geckox.s.ia;
import com.bykv.vk.openvk.preload.geckox.s.mn;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes.dex */
public final class ox {
    p ox;
    File p;
    private final List<String> s = new ArrayList();
    com.bykv.vk.openvk.preload.geckox.o.d dq = new com.bykv.vk.openvk.preload.geckox.o.d();

    /* renamed from: d, reason: collision with root package name */
    Queue<String> f663d = new LinkedBlockingQueue();

    public ox(p pVar) {
        this.ox = pVar;
        File file = pVar.q;
        this.p = file;
        file.mkdirs();
        p pVar2 = this.ox;
        dq(com.bykv.vk.openvk.preload.geckox.s.s.class, com.bykv.vk.openvk.preload.geckox.q.ox.dq(pVar2));
        dq(com.bykv.vk.openvk.preload.geckox.s.p.class, com.bykv.vk.openvk.preload.geckox.q.ox.dq(pVar2));
        dq(com.bykv.vk.openvk.preload.geckox.s.dq.d.ox.class, com.bykv.vk.openvk.preload.geckox.q.ox.d(pVar2.dq));
        dq(com.bykv.vk.openvk.preload.geckox.s.dq.d.d.class, new com.bykv.vk.openvk.preload.d.d.dq() { // from class: com.bykv.vk.openvk.preload.geckox.q.ox.8
            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void dq(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar3, Throwable th) {
                super.dq(dVar, pVar3, th);
                com.bykv.vk.openvk.preload.geckox.q.dq.d dq = d.dq(pVar3.iw).dq(((s) ((Pair) dVar.d(ia.class)).second).s());
                dq.kk = false;
                dq.ig = SystemClock.uptimeMillis();
                dq.gh = th.getMessage();
            }

            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void ox(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar3) {
                super.ox(dVar, pVar3);
                d.dq(pVar3.iw).dq(((s) ((Pair) dVar.d(ia.class)).second).s()).kk = true;
            }
        });
        dq(com.bykv.vk.openvk.preload.geckox.s.dq.d.p.class, new com.bykv.vk.openvk.preload.d.d.dq() { // from class: com.bykv.vk.openvk.preload.geckox.q.ox.9
            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void dq(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar3, Throwable th) {
                super.dq(dVar, pVar3, th);
                com.bykv.vk.openvk.preload.geckox.q.dq.d dq = d.dq(pVar3.iw).dq(((s) ((Pair) dVar.d(ia.class)).second).s());
                dq.o = false;
                dq.mp = SystemClock.uptimeMillis();
                dq.r = th.getMessage();
            }

            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void ox(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar3) {
                super.ox(dVar, pVar3);
                com.bykv.vk.openvk.preload.geckox.q.dq.d dq = d.dq(pVar3.iw).dq(((s) ((Pair) dVar.d(ia.class)).second).s());
                dq.o = true;
                dq.mp = SystemClock.uptimeMillis();
            }
        });
        dq(com.bykv.vk.openvk.preload.geckox.s.dq.d.dq.class, new com.bykv.vk.openvk.preload.d.d.dq() { // from class: com.bykv.vk.openvk.preload.geckox.q.ox.10
            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void dq(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar3, Throwable th) {
                super.dq(dVar, pVar3, th);
                com.bykv.vk.openvk.preload.geckox.q.dq.d dq = d.dq(pVar3.iw).dq(((s) ((Pair) dVar.d(ia.class)).second).s());
                dq.o = false;
                dq.q = SystemClock.uptimeMillis();
                dq.r = th.getMessage();
            }

            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void ox(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar3) {
                super.ox(dVar, pVar3);
                com.bykv.vk.openvk.preload.geckox.q.dq.d dq = d.dq(pVar3.iw).dq(((s) ((Pair) dVar.d(ia.class)).second).s());
                dq.o = true;
                dq.q = SystemClock.uptimeMillis();
            }
        });
        dq(com.bykv.vk.openvk.preload.geckox.s.dq.d.s.class, new com.bykv.vk.openvk.preload.d.d.dq() { // from class: com.bykv.vk.openvk.preload.geckox.q.ox.3
            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void dq(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar3, Throwable th) {
                super.dq(dVar, pVar3, th);
                com.bykv.vk.openvk.preload.geckox.q.dq.d dq = d.dq(pVar3.iw).dq(((s) ((Pair) dVar.d(ia.class)).second).s());
                dq.no = false;
                dq.i = th.getMessage();
                dq.jy = SystemClock.uptimeMillis();
            }

            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void ox(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar3) {
                super.ox(dVar, pVar3);
                com.bykv.vk.openvk.preload.geckox.q.dq.d dq = d.dq(pVar3.iw).dq(((s) ((Pair) dVar.d(ia.class)).second).s());
                dq.no = true;
                dq.jy = SystemClock.uptimeMillis();
            }
        });
        dq(com.bykv.vk.openvk.preload.geckox.s.dq.dq.d.class, com.bykv.vk.openvk.preload.geckox.q.ox.dq(pVar2.dq));
        dq(com.bykv.vk.openvk.preload.geckox.s.dq.dq.dq.class, new com.bykv.vk.openvk.preload.d.d.dq() { // from class: com.bykv.vk.openvk.preload.geckox.q.ox.11
            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void dq(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar3, Throwable th) {
                super.dq(dVar, pVar3, th);
                com.bykv.vk.openvk.preload.geckox.q.dq.d dq = d.dq(pVar3.iw).dq(((s) ((Pair) dVar.d(mn.class)).second).s());
                dq.bl = false;
                dq.kx = SystemClock.uptimeMillis();
                dq.op = th.getMessage();
            }

            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void ox(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar3) {
                super.ox(dVar, pVar3);
                com.bykv.vk.openvk.preload.geckox.q.dq.d dq = d.dq(pVar3.iw).dq(((s) ((Pair) dVar.d(mn.class)).second).s());
                dq.bl = true;
                dq.kx = SystemClock.uptimeMillis();
            }
        });
        dq(com.bykv.vk.openvk.preload.geckox.s.dq.dq.ox.class, new com.bykv.vk.openvk.preload.d.d.dq() { // from class: com.bykv.vk.openvk.preload.geckox.q.ox.2
            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void dq(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar3, Throwable th) {
                super.dq(dVar, pVar3, th);
                com.bykv.vk.openvk.preload.geckox.q.dq.d dq = d.dq(pVar3.iw).dq(((s) ((Pair) dVar.d(mn.class)).second).s());
                dq.n = false;
                dq.h = SystemClock.uptimeMillis();
                dq.ir = th.getMessage();
            }

            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void ox(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar3) {
                super.ox(dVar, pVar3);
                com.bykv.vk.openvk.preload.geckox.q.dq.d dq = d.dq(pVar3.iw).dq(((s) ((Pair) dVar.d(mn.class)).second).s());
                dq.n = true;
                dq.h = SystemClock.uptimeMillis();
            }
        });
        dq(com.bykv.vk.openvk.preload.geckox.s.d.d.ox.class, com.bykv.vk.openvk.preload.geckox.q.ox.d(pVar2.dq));
        dq(com.bykv.vk.openvk.preload.geckox.s.d.d.d.class, new com.bykv.vk.openvk.preload.d.d.dq() { // from class: com.bykv.vk.openvk.preload.geckox.q.ox.8
            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void dq(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar3, Throwable th) {
                super.dq(dVar, pVar3, th);
                com.bykv.vk.openvk.preload.geckox.q.dq.d dq = d.dq(pVar3.iw).dq(((s) ((Pair) dVar.d(ia.class)).second).s());
                dq.kk = false;
                dq.ig = SystemClock.uptimeMillis();
                dq.gh = th.getMessage();
            }

            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void ox(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar3) {
                super.ox(dVar, pVar3);
                d.dq(pVar3.iw).dq(((s) ((Pair) dVar.d(ia.class)).second).s()).kk = true;
            }
        });
        dq(com.bykv.vk.openvk.preload.geckox.s.d.d.p.class, new com.bykv.vk.openvk.preload.d.d.dq() { // from class: com.bykv.vk.openvk.preload.geckox.q.ox.9
            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void dq(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar3, Throwable th) {
                super.dq(dVar, pVar3, th);
                com.bykv.vk.openvk.preload.geckox.q.dq.d dq = d.dq(pVar3.iw).dq(((s) ((Pair) dVar.d(ia.class)).second).s());
                dq.o = false;
                dq.mp = SystemClock.uptimeMillis();
                dq.r = th.getMessage();
            }

            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void ox(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar3) {
                super.ox(dVar, pVar3);
                com.bykv.vk.openvk.preload.geckox.q.dq.d dq = d.dq(pVar3.iw).dq(((s) ((Pair) dVar.d(ia.class)).second).s());
                dq.o = true;
                dq.mp = SystemClock.uptimeMillis();
            }
        });
        dq(com.bykv.vk.openvk.preload.geckox.s.d.d.dq.class, new com.bykv.vk.openvk.preload.d.d.dq() { // from class: com.bykv.vk.openvk.preload.geckox.q.ox.10
            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void dq(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar3, Throwable th) {
                super.dq(dVar, pVar3, th);
                com.bykv.vk.openvk.preload.geckox.q.dq.d dq = d.dq(pVar3.iw).dq(((s) ((Pair) dVar.d(ia.class)).second).s());
                dq.o = false;
                dq.q = SystemClock.uptimeMillis();
                dq.r = th.getMessage();
            }

            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void ox(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar3) {
                super.ox(dVar, pVar3);
                com.bykv.vk.openvk.preload.geckox.q.dq.d dq = d.dq(pVar3.iw).dq(((s) ((Pair) dVar.d(ia.class)).second).s());
                dq.o = true;
                dq.q = SystemClock.uptimeMillis();
            }
        });
        dq(iw.class, new com.bykv.vk.openvk.preload.d.d.dq() { // from class: com.bykv.vk.openvk.preload.geckox.q.ox.5
            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void d(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar3) {
                super.d(dVar, pVar3);
                com.bykv.vk.openvk.preload.geckox.q.dq.d dq = d.dq(pVar3.iw).dq(((s) ((Pair) dVar.d(ia.class)).second).s());
                dq.no = true;
                dq.jy = SystemClock.uptimeMillis();
            }

            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void dq(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar3, Throwable th) {
                super.dq(dVar, pVar3, th);
                com.bykv.vk.openvk.preload.geckox.q.dq.d dq = d.dq(pVar3.iw).dq(((s) ((Pair) dVar.d(ia.class)).second).s());
                dq.no = false;
                dq.jy = SystemClock.uptimeMillis();
                dq.i = th.getMessage();
            }

            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void ox(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar3) {
                super.ox(dVar, pVar3);
            }

            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void ox(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar3, Throwable th) {
                super.ox(dVar, pVar3, th);
                com.bykv.vk.openvk.preload.geckox.q.dq.d dq = d.dq(pVar3.iw).dq(((s) ((Pair) dVar.d(ia.class)).second).s());
                dq.no = false;
                dq.jy = SystemClock.uptimeMillis();
                dq.ir = th.getMessage();
            }
        });
        dq(com.bykv.vk.openvk.preload.geckox.s.d.dq.d.class, com.bykv.vk.openvk.preload.geckox.q.ox.dq(pVar2.dq));
        dq(com.bykv.vk.openvk.preload.geckox.s.d.dq.dq.class, new com.bykv.vk.openvk.preload.d.d.dq() { // from class: com.bykv.vk.openvk.preload.geckox.q.ox.11
            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void dq(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar3, Throwable th) {
                super.dq(dVar, pVar3, th);
                com.bykv.vk.openvk.preload.geckox.q.dq.d dq = d.dq(pVar3.iw).dq(((s) ((Pair) dVar.d(mn.class)).second).s());
                dq.bl = false;
                dq.kx = SystemClock.uptimeMillis();
                dq.op = th.getMessage();
            }

            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void ox(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar3) {
                super.ox(dVar, pVar3);
                com.bykv.vk.openvk.preload.geckox.q.dq.d dq = d.dq(pVar3.iw).dq(((s) ((Pair) dVar.d(mn.class)).second).s());
                dq.bl = true;
                dq.kx = SystemClock.uptimeMillis();
            }
        });
        dq(com.bykv.vk.openvk.preload.geckox.s.d.dq.p.class, new com.bykv.vk.openvk.preload.d.d.dq() { // from class: com.bykv.vk.openvk.preload.geckox.q.ox.4
            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void d(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar3) {
                super.d(dVar, pVar3);
                com.bykv.vk.openvk.preload.geckox.q.dq.d dq = d.dq(pVar3.iw).dq(((s) ((Pair) dVar.d(mn.class)).second).s());
                dq.n = true;
                dq.h = SystemClock.uptimeMillis();
            }

            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void dq(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar3, Throwable th) {
                super.dq(dVar, pVar3, th);
                com.bykv.vk.openvk.preload.geckox.q.dq.d dq = d.dq(pVar3.iw).dq(((s) ((Pair) dVar.d(mn.class)).second).s());
                dq.n = false;
                dq.h = SystemClock.uptimeMillis();
                dq.ir = th.getMessage();
            }

            @Override // com.bykv.vk.openvk.preload.d.d.dq
            public final <T> void ox(com.bykv.vk.openvk.preload.d.d<T> dVar, com.bykv.vk.openvk.preload.d.p pVar3, Throwable th) {
                super.ox(dVar, pVar3, th);
                com.bykv.vk.openvk.preload.geckox.q.dq.d dq = d.dq(pVar3.iw).dq(((s) ((Pair) dVar.d(mn.class)).second).s());
                dq.n = false;
                dq.h = SystemClock.uptimeMillis();
                dq.ir = th.getMessage();
            }
        });
    }

    private void dq(Class<? extends com.bykv.vk.openvk.preload.d.p<?, ?>> cls, com.bykv.vk.openvk.preload.d.d.dq dqVar) {
        this.dq.dq(cls, dqVar);
    }

    public final boolean dq() {
        p pVar = this.ox;
        List<String> list = pVar.iw;
        List<String> list2 = pVar.s;
        if (list == null || list.isEmpty() || list2 == null || list2.isEmpty()) {
            return false;
        }
        for (String str : list2) {
            Iterator<String> it = list.iterator();
            boolean z = false;
            while (it.hasNext()) {
                if (TextUtils.equals(str, it.next())) {
                    z = true;
                }
            }
            if (!z) {
                return false;
            }
        }
        return true;
    }

    public final boolean dq(Map<String, List<dq.ox>> map) {
        if (map.isEmpty()) {
            return true;
        }
        List<String> list = this.ox.s;
        for (Map.Entry<String, List<dq.ox>> entry : map.entrySet()) {
            Iterator<String> it = list.iterator();
            boolean z = false;
            while (it.hasNext()) {
                if (TextUtils.equals(it.next(), entry.getKey())) {
                    z = true;
                }
            }
            if (!z) {
                return false;
            }
        }
        return true;
    }
}
