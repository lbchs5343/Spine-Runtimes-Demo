package com.bytedance.sdk.openadsdk.core.component.dq;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.openvk.component.video.api.ox.p;
import com.bykv.vk.openvk.component.video.api.s.dq;
import com.bytedance.sdk.openadsdk.core.h;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.nh;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.h.mn;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class dq {
    private static volatile dq dq;

    /* renamed from: d, reason: collision with root package name */
    private final h f2510d = wp.dq();

    private dq() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(com.bytedance.sdk.openadsdk.core.r.dq dqVar, Context context, com.bytedance.sdk.openadsdk.f.d.ox.d dVar, long j, com.bytedance.sdk.openadsdk.r.dq.d.dq.ox oxVar, com.bytedance.sdk.openadsdk.core.r.d dVar2) {
        if (dqVar.d() == null || dqVar.d().isEmpty()) {
            oxVar.dq(-3, o.dq(-3));
            dVar2.dq(-3);
            com.bytedance.sdk.openadsdk.core.r.d.dq(dVar2);
            return;
        }
        List<j> d2 = dqVar.d();
        ArrayList arrayList = new ArrayList(d2.size());
        Iterator<j> it = d2.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            j next = it.next();
            if (next.xo()) {
                arrayList.add(new ox(context, next, 6, dVar));
            }
            if (!j.dq(next) || com.bytedance.sdk.openadsdk.h.o.dq(next)) {
                if (!TextUtils.isEmpty(pa.dq(next))) {
                    if (wp.d().p(String.valueOf(c.kk(next))) && wp.d().qz()) {
                        if (pa.q(next) != null) {
                            pa.q(next).s(1);
                        }
                        if (pa.q(next) != null) {
                            pa.q(next).s(1);
                        }
                        p dq2 = pa.dq(4, next);
                        dq2.dq("material_meta", next);
                        dq2.dq("ad_slot", Integer.valueOf(dVar != null ? dVar.k() : 0));
                        com.bytedance.sdk.openadsdk.core.video.p.d.dq(dq2, (dq.InterfaceC0005dq) null);
                    }
                }
            }
        }
        if (!arrayList.isEmpty()) {
            com.bytedance.sdk.openadsdk.core.ig.ox.d(d2.get(0), c.d(dVar.k()), j);
            oxVar.dq(arrayList);
        } else {
            oxVar.dq(-4, o.dq(-4));
            dVar2.dq(-4);
            com.bytedance.sdk.openadsdk.core.r.d.dq(dVar2);
        }
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

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(com.bytedance.sdk.openadsdk.core.r.dq dqVar, Context context, com.bytedance.sdk.openadsdk.f.d.ox.d dVar, long j, com.bytedance.sdk.openadsdk.r.dq.d.dq.d dVar2, com.bytedance.sdk.openadsdk.core.r.d dVar3) {
        if (dqVar.d() == null || dqVar.d().isEmpty()) {
            dVar2.dq(-3, o.dq(-3));
            dVar3.dq(-3);
            com.bytedance.sdk.openadsdk.core.r.d.dq(dVar3);
            return;
        }
        List<j> d2 = dqVar.d();
        ArrayList arrayList = new ArrayList(d2.size());
        Iterator<j> it = d2.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            j next = it.next();
            if (next.xo()) {
                arrayList.add(new d(context, next, 9, dVar));
            }
            if (!TextUtils.isEmpty(pa.dq(next))) {
                if (wp.d().p(String.valueOf(c.kk(next))) && wp.d().qz()) {
                    if (pa.q(next) != null) {
                        pa.q(next).s(1);
                    }
                    if (pa.jy(next) != null) {
                        pa.jy(next).s(1);
                    }
                    p dq2 = pa.dq(4, next);
                    dq2.dq("material_meta", next);
                    dq2.dq("ad_slot", Integer.valueOf(dVar != null ? dVar.k() : 0));
                    com.bytedance.sdk.openadsdk.core.video.p.d.dq(dq2, (dq.InterfaceC0005dq) null);
                }
            }
        }
        if (!arrayList.isEmpty()) {
            com.bytedance.sdk.openadsdk.core.ig.ox.d(d2.get(0), c.d(dVar.k()), j);
            dVar2.dq(arrayList);
        } else {
            dVar2.dq(-4, o.dq(-4));
            dVar3.dq(-4);
            com.bytedance.sdk.openadsdk.core.r.d.dq(dVar3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(com.bytedance.sdk.openadsdk.core.r.dq dqVar, Context context, com.bytedance.sdk.openadsdk.f.d.ox.d dVar, long j, com.bytedance.sdk.openadsdk.r.dq.d.dq.ox oxVar, com.bytedance.sdk.openadsdk.core.r.d dVar2) {
        if (dqVar.d() == null || dqVar.d().isEmpty()) {
            oxVar.dq(-3, o.dq(-3));
            dVar2.dq(-3);
            com.bytedance.sdk.openadsdk.core.r.d.dq(dVar2);
            return;
        }
        List<j> d2 = dqVar.d();
        ArrayList arrayList = new ArrayList(d2.size());
        Iterator<j> it = d2.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            j next = it.next();
            if (next.xo()) {
                arrayList.add(new ox(context, next, 5, dVar));
            }
            if (!j.dq(next) || com.bytedance.sdk.openadsdk.h.o.dq(next)) {
                if (!TextUtils.isEmpty(pa.dq(next))) {
                    if (wp.d().p(String.valueOf(c.kk(next))) && wp.d().qz()) {
                        if (pa.q(next) != null) {
                            pa.q(next).s(1);
                        }
                        if (pa.jy(next) != null) {
                            pa.jy(next).s(1);
                        }
                        p dq2 = pa.dq(4, next);
                        dq2.dq("material_meta", next);
                        dq2.dq("ad_slot", Integer.valueOf(dVar != null ? dVar.k() : 0));
                        com.bytedance.sdk.openadsdk.core.video.p.d.dq(dq2, (dq.InterfaceC0005dq) null);
                    }
                }
            }
        }
        if (!arrayList.isEmpty()) {
            com.bytedance.sdk.openadsdk.core.ig.ox.d(d2.get(0), c.d(dVar.k()), j);
            oxVar.dq(arrayList);
        } else {
            oxVar.dq(-4, o.dq(-4));
            dVar2.dq(-4);
            com.bytedance.sdk.openadsdk.core.r.d.dq(dVar2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void d(final Context context, final com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final com.bytedance.sdk.openadsdk.r.dq.d.dq.ox oxVar) {
        final long currentTimeMillis = System.currentTimeMillis();
        nh nhVar = new nh();
        if (oxVar != 0 && (oxVar instanceof com.bytedance.sdk.openadsdk.core.dq.d)) {
            nhVar.kk = ((com.bytedance.sdk.openadsdk.core.dq.d) oxVar).d();
        }
        this.f2510d.dq(dVar, nhVar, 6, new h.d() { // from class: com.bytedance.sdk.openadsdk.core.component.dq.dq.2
            @Override // com.bytedance.sdk.openadsdk.core.h.d
            public void dq(int i, String str, com.bytedance.sdk.openadsdk.core.r.d dVar2) {
                oxVar.dq(i, str);
                dVar2.dq(i);
                com.bytedance.sdk.openadsdk.core.r.d.dq(dVar2);
            }

            @Override // com.bytedance.sdk.openadsdk.core.h.d
            public void dq(final com.bytedance.sdk.openadsdk.core.r.dq dqVar, final com.bytedance.sdk.openadsdk.core.r.d dVar2) {
                mn.d(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.dq.dq.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                        dq.this.d(dqVar, context, dVar, currentTimeMillis, oxVar, dVar2);
                    }
                });
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void dq(final Context context, final com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final com.bytedance.sdk.openadsdk.r.dq.d.dq.d dVar2) {
        final long currentTimeMillis = System.currentTimeMillis();
        nh nhVar = new nh();
        if (dVar2 != 0 && (dVar2 instanceof com.bytedance.sdk.openadsdk.core.dq.d)) {
            nhVar.kk = ((com.bytedance.sdk.openadsdk.core.dq.d) dVar2).d();
        }
        this.f2510d.dq(dVar, nhVar, 9, new h.d() { // from class: com.bytedance.sdk.openadsdk.core.component.dq.dq.3
            @Override // com.bytedance.sdk.openadsdk.core.h.d
            public void dq(int i, String str, com.bytedance.sdk.openadsdk.core.r.d dVar3) {
                dVar2.dq(i, str);
                dVar3.dq(i);
                com.bytedance.sdk.openadsdk.core.r.d.dq(dVar3);
            }

            @Override // com.bytedance.sdk.openadsdk.core.h.d
            public void dq(final com.bytedance.sdk.openadsdk.core.r.dq dqVar, final com.bytedance.sdk.openadsdk.core.r.d dVar3) {
                mn.d(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.dq.dq.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                        dq.this.dq(dqVar, context, dVar, currentTimeMillis, dVar2, dVar3);
                    }
                });
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void dq(final Context context, final com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final com.bytedance.sdk.openadsdk.r.dq.d.dq.ox oxVar) {
        final long currentTimeMillis = System.currentTimeMillis();
        nh nhVar = new nh();
        if (oxVar != 0 && (oxVar instanceof com.bytedance.sdk.openadsdk.core.dq.d)) {
            nhVar.kk = ((com.bytedance.sdk.openadsdk.core.dq.d) oxVar).d();
        }
        this.f2510d.dq(dVar, nhVar, 5, new h.d() { // from class: com.bytedance.sdk.openadsdk.core.component.dq.dq.1
            @Override // com.bytedance.sdk.openadsdk.core.h.d
            public void dq(int i, String str, com.bytedance.sdk.openadsdk.core.r.d dVar2) {
                oxVar.dq(i, str);
                dVar2.dq(i);
                com.bytedance.sdk.openadsdk.core.r.d.dq(dVar2);
            }

            @Override // com.bytedance.sdk.openadsdk.core.h.d
            public void dq(final com.bytedance.sdk.openadsdk.core.r.dq dqVar, final com.bytedance.sdk.openadsdk.core.r.d dVar2) {
                mn.d(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.dq.dq.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        dq.this.dq(dqVar, context, dVar, currentTimeMillis, oxVar, dVar2);
                    }
                });
            }
        });
    }
}
