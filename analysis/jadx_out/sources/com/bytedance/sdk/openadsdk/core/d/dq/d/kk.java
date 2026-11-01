package com.bytedance.sdk.openadsdk.core.d.dq.d;

import android.content.Context;
import com.bytedance.sdk.openadsdk.core.d.dq.d.o;
import com.bytedance.sdk.openadsdk.core.d.dq.dq.d;
import com.bytedance.sdk.openadsdk.core.r.j;
import java.util.Map;

/* loaded from: classes3.dex */
public class kk extends com.bytedance.sdk.openadsdk.core.d.dq.dq {
    private com.bytedance.sdk.openadsdk.core.d.p iw;
    com.bytedance.sdk.openadsdk.core.d.dq.dq.iw s = new com.bytedance.sdk.openadsdk.core.d.dq.dq.iw();

    public kk() {
    }

    public kk(j jVar, Context context, com.bytedance.sdk.openadsdk.core.d.p pVar) {
        this.iw = pVar;
        this.dq = jVar;
        this.f2787d = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(Map<String, Object> map, com.bytedance.sdk.openadsdk.core.d.dq.ox oxVar) {
        com.bytedance.sdk.openadsdk.core.d.p pVar = this.iw;
        if (pVar != null) {
            final com.bytedance.sdk.openadsdk.core.d.dq.dq.iw d2 = ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) pVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).d();
            final d.dq dq = d2.dq();
            com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.d.dq.d.kk.2
                @Override // java.lang.Runnable
                public void run() {
                    d.dq dqVar = dq;
                    if (dqVar != null) {
                        dqVar.dq(((com.bytedance.sdk.openadsdk.core.d.dq.dq) kk.this).p, d2.p());
                    }
                }
            });
            if (((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) this.iw.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).dq(map, oxVar) == 0) {
                ((com.bytedance.sdk.openadsdk.core.d.dq.ox.ox) this.iw.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.ox.class)).dq(map, oxVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox(Map<String, Object> map, com.bytedance.sdk.openadsdk.core.d.dq.ox oxVar) {
        com.bytedance.sdk.openadsdk.core.d.p pVar = this.iw;
        if (pVar == null || ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) pVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(map, oxVar) != 0) {
            return;
        }
        ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) this.iw.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).dq(map, oxVar);
        ((com.bytedance.sdk.openadsdk.core.d.dq.ox.ox) this.iw.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.ox.class)).dq(map, oxVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.d.dq.dq
    public int dq(final Map<String, Object> map, final com.bytedance.sdk.openadsdk.core.d.dq.ox oxVar) {
        if (!new o(this.dq, this.f2787d).dq(this.s.no()).dq(this.s.kk()).d(this.s.ox()).dq(new o.dq() { // from class: com.bytedance.sdk.openadsdk.core.d.dq.d.kk.1
            @Override // com.bytedance.sdk.openadsdk.core.d.dq.d.o.dq
            public void d() {
                kk.this.ox(map, oxVar);
            }

            @Override // com.bytedance.sdk.openadsdk.core.d.dq.d.o.dq
            public void dq() {
                kk.this.d(map, oxVar);
            }
        })) {
            return 0;
        }
        o.dq(true);
        return 1;
    }

    public void dq(int i) {
        this.s.d(i);
    }

    public void dq(String str) {
        this.s.dq(str);
    }

    public void dq(boolean z) {
        this.s.d(z);
    }
}
