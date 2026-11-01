package com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq;

import com.bytedance.sdk.openadsdk.core.r.j;
import java.util.Map;

/* loaded from: classes3.dex */
public class s implements com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq f2970d;
    private j dq;
    private com.bytedance.sdk.component.no.dq.dq ox;
    private Map<String, Object> p;
    private String s;

    public s(com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq dqVar, j jVar, com.bytedance.sdk.component.no.dq.dq dqVar2, Map<String, Object> map, String str) {
        this.dq = jVar;
        this.f2970d = dqVar;
        this.ox = dqVar2;
        this.p = map;
        this.s = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq
    public boolean dq(final Map<String, Object> map) {
        int dq = com.bytedance.sdk.openadsdk.core.live.d.dq().dq(this.dq, new com.bytedance.sdk.openadsdk.core.live.dq.ox() { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.s.1
            @Override // com.bytedance.sdk.openadsdk.core.live.dq.ox
            public void dq() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.live.dq.ox
            public void dq(int i) {
                if (s.this.f2970d == null || !s.this.f2970d.dq(map)) {
                    s.this.ox.d(s.this.p);
                }
            }
        }, this.s);
        if (dq == 1 || dq == 2) {
            return true;
        }
        com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq dqVar = this.f2970d;
        return dqVar != null && dqVar.dq(map);
    }
}
