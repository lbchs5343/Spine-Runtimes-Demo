package com.bytedance.sdk.openadsdk.core.p.d;

import android.text.TextUtils;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.mn;
import com.bytedance.sdk.openadsdk.h.mn;
import java.lang.ref.PhantomReference;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class p implements com.bytedance.sdk.openadsdk.core.p.d.dq {

    /* renamed from: d, reason: collision with root package name */
    static ReferenceQueue<Object> f3358d = new ReferenceQueue<>();
    HashMap<Object, dq> dq = new HashMap<>();
    private int ox;

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        String f3364d;
        String dq;

        public dq(String str, String str2) {
            this.dq = str;
            this.f3364d = str2;
        }
    }

    public p(int i) {
        this.ox = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.d.dq
    public void d(final com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final j jVar) {
        if (TextUtils.isEmpty(dVar.wp())) {
            if (jVar.ix() <= 0) {
                jVar.p((System.currentTimeMillis() + 10500000) / 1000);
            }
            mn.ox(new kk("PreloadStrategyRecovery-onNetworkResponse") { // from class: com.bytedance.sdk.openadsdk.core.p.d.p.2
                @Override // java.lang.Runnable
                public void run() {
                    System.currentTimeMillis();
                    mn.dq dq2 = com.bytedance.sdk.openadsdk.core.p.p.d.dq(p.this.ox);
                    if (((dq2 != null ? dq2.kk() : 0) & 1) == 1) {
                        com.bytedance.sdk.openadsdk.core.p.ox.p.dq(p.this.ox).dq(dVar, jVar, false);
                        System.currentTimeMillis();
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.d.dq
    public void d(String str) {
        System.currentTimeMillis();
        for (Reference<? extends Object> poll = f3358d.poll(); poll != null; poll = f3358d.poll()) {
            dq dqVar = this.dq.get(poll);
            if (dqVar != null) {
                com.bytedance.sdk.openadsdk.core.p.ox.p.dq(this.ox).dq(dqVar.dq, dqVar.f3364d, false);
            }
        }
        com.bytedance.sdk.openadsdk.core.p.ox.p.dq(this.ox).d(str);
        System.currentTimeMillis();
        com.bytedance.sdk.openadsdk.core.p.ox.p.dq(this.ox).ox(str);
        System.currentTimeMillis();
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.d.dq
    public void dq(final com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final j jVar) {
        if (TextUtils.isEmpty(dVar.wp())) {
            if (jVar.ix() <= 0) {
                jVar.p((System.currentTimeMillis() + 10500000) / 1000);
            }
            com.bytedance.sdk.openadsdk.h.mn.ox(new kk("PreloadStrategyRecovery-onNetworkResponse") { // from class: com.bytedance.sdk.openadsdk.core.p.d.p.1
                @Override // java.lang.Runnable
                public void run() {
                    System.currentTimeMillis();
                    com.bytedance.sdk.openadsdk.core.p.ox.p.dq(p.this.ox).dq(dVar, jVar, false);
                    System.currentTimeMillis();
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.d.dq
    public void dq(final com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final j jVar, final Object obj, final boolean z) {
        final String mn = dVar.mn();
        com.bytedance.sdk.openadsdk.h.mn.ox(new kk("PreloadStrategyRecovery-onLoad") { // from class: com.bytedance.sdk.openadsdk.core.p.d.p.4
            @Override // java.lang.Runnable
            public void run() {
                System.currentTimeMillis();
                if (jVar.sp() != 0) {
                    p.this.dq.put(new PhantomReference(obj, p.f3358d), new dq(mn, jVar.xq()));
                }
                if (z) {
                    return;
                }
                mn.dq dq2 = com.bytedance.sdk.openadsdk.core.p.p.d.dq(p.this.ox);
                if (((dq2 != null ? dq2.kk() : 0) & 2) == 2) {
                    com.bytedance.sdk.openadsdk.core.p.ox.p.dq(p.this.ox).dq(dVar, jVar, true);
                    System.currentTimeMillis();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.d.dq
    public void dq(final String str, final j jVar) {
        com.bytedance.sdk.openadsdk.h.mn.ox(new kk("PreloadStrategyRecovery-onShow") { // from class: com.bytedance.sdk.openadsdk.core.p.d.p.5
            @Override // java.lang.Runnable
            public void run() {
                System.currentTimeMillis();
                com.bytedance.sdk.openadsdk.core.p.ox.p.dq(p.this.ox).dq(str, jVar.xq());
                System.currentTimeMillis();
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.d.dq
    public boolean dq(String str) {
        return !com.bytedance.sdk.openadsdk.core.p.ox.p.dq(this.ox).p(str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.d.dq
    public j ox(String str) {
        System.currentTimeMillis();
        j dq2 = com.bytedance.sdk.openadsdk.core.p.ox.p.dq(this.ox).dq(str, true);
        System.currentTimeMillis();
        return dq2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.d.dq
    public void ox(final com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final j jVar) {
        if (TextUtils.isEmpty(dVar.wp())) {
            if (jVar.ix() <= 0) {
                jVar.p((System.currentTimeMillis() + 10500000) / 1000);
            }
            com.bytedance.sdk.openadsdk.h.mn.ox(new kk("PreloadStrategyRecovery-onNetworkResponse") { // from class: com.bytedance.sdk.openadsdk.core.p.d.p.3
                @Override // java.lang.Runnable
                public void run() {
                    System.currentTimeMillis();
                    com.bytedance.sdk.openadsdk.core.p.ox.p.dq(p.this.ox).dq(dVar.mn(), jVar.xq(), false);
                    System.currentTimeMillis();
                }
            });
        }
    }
}
