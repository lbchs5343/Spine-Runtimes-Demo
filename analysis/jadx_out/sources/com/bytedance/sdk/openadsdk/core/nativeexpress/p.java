package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.openvk.component.video.api.s.dq;
import com.bytedance.sdk.component.adexpress.dq.d.mn;
import com.bytedance.sdk.openadsdk.core.h;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.ji;
import com.bytedance.sdk.openadsdk.core.r.nh;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.r.vf;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public class p {
    private com.bytedance.sdk.openadsdk.f.d.ox.d dq;
    private dq ia;
    private List<j> iw;
    private List<j> mn;
    private Context ox;
    private com.bytedance.sdk.openadsdk.r.dq.d.dq.iw p;
    private final AtomicBoolean s = new AtomicBoolean(false);
    private int kk = 5;
    private ScheduledFuture<?> o = null;
    private ScheduledFuture<?> no = null;
    private AtomicBoolean ig = new AtomicBoolean(false);

    /* renamed from: d, reason: collision with root package name */
    private final com.bytedance.sdk.openadsdk.core.h f3257d = com.bytedance.sdk.openadsdk.core.wp.dq();

    public static class d implements dq {
        private final dq dq;

        public d(dq dqVar) {
            this.dq = dqVar;
        }

        @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.p.dq
        public void dq() {
            com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.p.d.2
                @Override // java.lang.Runnable
                public void run() {
                    d.this.dq.dq();
                }
            });
        }

        @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.p.dq
        public void dq(final List<j> list) {
            com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.p.d.1
                @Override // java.lang.Runnable
                public void run() {
                    d.this.dq.dq(list);
                }
            });
        }
    }

    public interface dq {
        void dq();

        void dq(List<j> list);
    }

    private p(Context context) {
        if (context != null) {
            this.ox = context.getApplicationContext();
        } else {
            this.ox = com.bytedance.sdk.openadsdk.core.wp.getContext();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        List<j> list = this.iw;
        if (list != null) {
            list.clear();
        }
        List<j> list2 = this.mn;
        if (list2 != null) {
            list2.clear();
        }
        dq(true);
        d(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(final long j) {
        com.bytedance.sdk.openadsdk.core.no.dq.dq(this.mn, new mn.dq() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.p.3
            @Override // com.bytedance.sdk.component.adexpress.dq.d.mn.dq
            public void d() {
                p.this.ox(j);
            }

            @Override // com.bytedance.sdk.component.adexpress.dq.d.mn.dq
            public void dq() {
                p.this.ox(j);
            }
        });
    }

    private void d(boolean z) {
        try {
            ScheduledFuture<?> scheduledFuture = this.no;
            if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                return;
            }
            this.no.cancel(z);
        } catch (Throwable unused) {
        }
    }

    public static p dq(Context context) {
        return new p(context);
    }

    private com.bytedance.sdk.openadsdk.f.d.d.jy dq(j jVar) {
        boolean z = pa.q(jVar) != null;
        int i = this.kk;
        if (i == 1) {
            return z ? new com.bytedance.sdk.openadsdk.core.bannerexpress.ox(this.ox, jVar, this.dq) : new com.bytedance.sdk.openadsdk.core.bannerexpress.d(this.ox, jVar, this.dq);
        }
        if (i == 5) {
            return z ? new e(this.ox, jVar, this.dq) : new i(this.ox, jVar, this.dq);
        }
        if (i == 9) {
            return new le(this.ox, jVar, this.dq);
        }
        com.bytedance.sdk.component.utils.ig.d("ExpressAdLoadManager", "not support adslog:" + this.kk);
        return null;
    }

    private List<com.bytedance.sdk.openadsdk.f.d.d.jy> dq() {
        if (this.kk != 5) {
            ArrayList arrayList = new ArrayList(this.mn.size());
            Iterator<j> it = this.mn.iterator();
            while (it.hasNext()) {
                com.bytedance.sdk.openadsdk.f.d.d.jy dq2 = dq(it.next());
                if (dq2 != null) {
                    arrayList.add(dq2);
                }
            }
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (j jVar : this.mn) {
            if (jVar != null) {
                if (jVar.ur() == null || TextUtils.isEmpty(jVar.ur().dq())) {
                    arrayList2.add(jVar);
                } else {
                    vf ur = jVar.ur();
                    List list = (List) linkedHashMap.get(ur.dq());
                    if (list == null) {
                        list = new CopyOnWriteArrayList();
                        linkedHashMap.put(ur.dq(), list);
                    }
                    list.add(jVar);
                }
            }
        }
        ArrayList arrayList3 = new ArrayList(linkedHashMap.size() + arrayList2.size());
        if (linkedHashMap.size() > 0) {
            Iterator it2 = linkedHashMap.entrySet().iterator();
            while (it2.hasNext()) {
                List list2 = (List) ((Map.Entry) it2.next()).getValue();
                if (list2.size() > 1) {
                    arrayList3.add(new wp(this.ox, list2, this.dq));
                } else if (list2.size() == 1) {
                    arrayList2.add(list2.get(0));
                }
            }
            linkedHashMap.clear();
        }
        if (arrayList2.size() > 0) {
            Iterator it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                com.bytedance.sdk.openadsdk.f.d.d.jy dq3 = dq((j) it3.next());
                if (dq3 != null) {
                    arrayList3.add(dq3);
                }
            }
            arrayList2.clear();
        }
        return arrayList3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(final int i) {
        com.bytedance.sdk.openadsdk.core.gh.ig.dq().s(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.p.6
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                com.bytedance.sdk.openadsdk.core.gh.dq.ox iw = com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq(p.this.kk).ox(p.this.dq.mn()).iw((p.this.iw == null || p.this.iw.size() <= 0) ? "" : c.mp((j) p.this.iw.get(0)));
                iw.d(i).mn(com.bytedance.sdk.openadsdk.core.o.dq(i));
                return iw;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(int i, String str) {
        if (this.s.getAndSet(false)) {
            com.bytedance.sdk.openadsdk.r.dq.d.dq.iw iwVar = this.p;
            if (iwVar != null) {
                iwVar.dq(i, str);
            }
            dq dqVar = this.ia;
            if (dqVar != null) {
                dqVar.dq();
            }
            d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(final long j) {
        this.ig.set(false);
        if (this.s.getAndSet(false)) {
            com.bytedance.sdk.openadsdk.h.mn.d(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.p.2
                @Override // java.lang.Runnable
                public void run() {
                    if (p.this.mn == null || p.this.mn.size() <= 0) {
                        if (p.this.p != null) {
                            p.this.p.dq(108, com.bytedance.sdk.openadsdk.core.o.dq(108));
                            p.this.dq(108);
                        }
                        if (p.this.ia != null) {
                            p.this.ia.dq();
                        }
                        p.this.d();
                        return;
                    }
                    if (p.this.p != null) {
                        p pVar = p.this;
                        if (pVar.dq((List<j>) pVar.mn)) {
                            p.this.s(j);
                        } else {
                            p.this.d(j);
                        }
                    }
                    if (p.this.ia != null) {
                        p.this.ia.dq(p.this.mn);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        if (this.iw == null) {
            return;
        }
        String s = (dVar == null || !(dVar.k() == 3 || dVar.k() == 4)) ? null : com.bytedance.sdk.openadsdk.h.kk.s();
        for (j jVar : this.iw) {
            com.bytedance.sdk.openadsdk.core.video.ox.dq.d(jVar);
            if (jVar.xo() && jVar.oh() != null && !jVar.oh().isEmpty()) {
                for (ji jiVar : jVar.oh()) {
                    if (!TextUtils.isEmpty(jiVar.dq())) {
                        com.bytedance.sdk.openadsdk.core.le.s.dq().ox().dq(new com.bytedance.sdk.openadsdk.mp.d(jiVar.dq(), jiVar.mn()), com.bytedance.sdk.openadsdk.core.le.dq.dq.d(), jiVar.d(), jiVar.ox(), s);
                    }
                }
            }
            if (!TextUtils.isEmpty(pa.dq(jVar))) {
                if (com.bytedance.sdk.openadsdk.core.wp.d().p(String.valueOf(c.kk(jVar))) && com.bytedance.sdk.openadsdk.core.wp.d().qz()) {
                    com.bykv.vk.openvk.component.video.api.ox.p dq2 = pa.dq(4, jVar);
                    dq2.dq("material_meta", jVar);
                    dq2.dq("ad_slot", Integer.valueOf(dVar != null ? dVar.k() : 0));
                    com.bytedance.sdk.openadsdk.core.video.p.d.dq(dq2, (dq.InterfaceC0005dq) null);
                }
            }
        }
    }

    private void dq(final com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final long j) {
        if (dVar == null) {
            return;
        }
        nh nhVar = new nh();
        nhVar.mn = 2;
        Object obj = this.p;
        if (obj != null && (obj instanceof com.bytedance.sdk.openadsdk.core.dq.d)) {
            nhVar.kk = ((com.bytedance.sdk.openadsdk.core.dq.d) obj).d();
        }
        this.f3257d.dq(dVar, nhVar, this.kk, new h.d() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.p.1
            @Override // com.bytedance.sdk.openadsdk.core.h.d
            public void dq(int i, String str, com.bytedance.sdk.openadsdk.core.r.d dVar2) {
                p.this.dq(i, str);
                dVar2.dq(i);
                com.bytedance.sdk.openadsdk.core.r.d.dq(dVar2);
            }

            @Override // com.bytedance.sdk.openadsdk.core.h.d
            public void dq(com.bytedance.sdk.openadsdk.core.r.dq dqVar, com.bytedance.sdk.openadsdk.core.r.d dVar2) {
                if (dqVar.d() == null || dqVar.d().isEmpty()) {
                    p.this.dq(-3, com.bytedance.sdk.openadsdk.core.o.dq(-3));
                    dVar2.dq(-3);
                    com.bytedance.sdk.openadsdk.core.r.d.dq(dVar2);
                } else {
                    p.this.iw = new CopyOnWriteArrayList(dqVar.d());
                    p.this.mn = new CopyOnWriteArrayList(dqVar.d());
                    p.this.dq(dVar);
                    p.this.dq(j);
                }
            }
        });
    }

    private void dq(boolean z) {
        try {
            ScheduledFuture<?> scheduledFuture = this.o;
            if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                return;
            }
            com.bytedance.sdk.component.utils.ig.p("ExpressAdLoadManager", "CheckValidFutureTask-->cancel......success=".concat(String.valueOf(this.o.cancel(z))));
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean dq(List<j> list) {
        if (list != null && list.size() != 0) {
            Iterator<j> it = list.iterator();
            while (it.hasNext()) {
                if (com.bytedance.sdk.openadsdk.core.ugeno.kk.kk(it.next())) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox(final long j) {
        if (this.ig.get()) {
            return;
        }
        this.ig.set(true);
        com.bytedance.sdk.openadsdk.h.mn.d(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.p.4
            @Override // java.lang.Runnable
            public void run() {
                p.this.p(j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(long j) {
        List<com.bytedance.sdk.openadsdk.f.d.d.jy> dq2 = dq();
        if (dq2.isEmpty()) {
            this.p.dq(104, com.bytedance.sdk.openadsdk.core.o.dq(104));
            dq(104);
        } else {
            com.bytedance.sdk.openadsdk.core.ig.ox.d(this.mn.get(0), c.d(this.dq.k()), j);
            this.p.dq(dq2);
        }
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s(final long j) {
        com.bytedance.sdk.openadsdk.core.ugeno.kk.dq(this.mn, new q() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.p.5
            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.q
            public void d() {
                p.this.ox(j);
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.q
            public void dq() {
                p.this.ox(j);
            }
        });
    }

    public void dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, int i, com.bytedance.sdk.openadsdk.r.dq.d.dq.iw iwVar, int i2) {
        dq(dVar, i, iwVar, null, i2);
    }

    public void dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, int i, com.bytedance.sdk.openadsdk.r.dq.d.dq.iw iwVar, dq dqVar, int i2) {
        long currentTimeMillis = System.currentTimeMillis();
        if (this.s.get()) {
            com.bytedance.sdk.component.utils.ig.p("ExpressAdLoadManager", "express ad is loading...");
            return;
        }
        this.kk = i;
        this.s.set(true);
        this.dq = dVar;
        this.p = iwVar;
        this.ia = dqVar;
        dq(dVar, currentTimeMillis);
    }
}
