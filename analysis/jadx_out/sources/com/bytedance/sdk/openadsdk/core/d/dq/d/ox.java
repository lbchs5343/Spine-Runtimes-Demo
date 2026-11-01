package com.bytedance.sdk.openadsdk.core.d.dq.d;

import android.content.Context;
import com.bytedance.sdk.openadsdk.core.d.dq.d.p;
import com.bytedance.sdk.openadsdk.core.r.j;
import java.util.Map;

/* loaded from: classes3.dex */
public class ox extends com.bytedance.sdk.openadsdk.core.d.dq.dq {
    private com.bytedance.sdk.openadsdk.core.d.p iw;
    private String s;

    public ox() {
    }

    public ox(j jVar, Context context, com.bytedance.sdk.openadsdk.core.d.p pVar) {
        this.dq = jVar;
        this.f2787d = context;
        this.iw = pVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.d.dq.dq
    public int dq(final Map<String, Object> map, final com.bytedance.sdk.openadsdk.core.d.dq.ox oxVar) {
        if (com.bytedance.sdk.openadsdk.core.ugeno.kk.p(this.dq) || com.bytedance.sdk.openadsdk.core.ugeno.kk.s(this.dq) || !p.dq(this.dq, false)) {
            return 0;
        }
        return new p(this.dq, this.f2787d).dq(this.s).dq(new p.dq() { // from class: com.bytedance.sdk.openadsdk.core.d.dq.d.ox.1
            @Override // com.bytedance.sdk.openadsdk.core.d.dq.d.p.dq
            public void dq() {
                try {
                    if (ox.this.iw == null || ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) ox.this.iw.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(map, oxVar) != 0) {
                        return;
                    }
                    ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) ox.this.iw.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).dq(map, oxVar);
                    ((com.bytedance.sdk.openadsdk.core.d.dq.ox.ox) ox.this.iw.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.ox.class)).dq(map, oxVar);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        });
    }

    public void dq(String str) {
        this.s = str;
    }
}
