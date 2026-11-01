package com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq;

import android.content.Context;
import com.bytedance.sdk.openadsdk.core.d.dq.d.p;
import com.bytedance.sdk.openadsdk.core.r.j;
import java.util.Map;

/* loaded from: classes3.dex */
public class d implements com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq {

    /* renamed from: d, reason: collision with root package name */
    private j f2950d;
    private Context dq;
    private Map<String, Object> iw;
    private String ox;
    private com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq p;
    private com.bytedance.sdk.component.no.dq.dq s;

    public d(com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq dqVar, Context context, j jVar, String str, Map<String, Object> map, com.bytedance.sdk.component.no.dq.dq dqVar2) {
        this.p = dqVar;
        this.dq = context;
        this.f2950d = jVar;
        this.ox = str;
        this.s = dqVar2;
        this.iw = map;
    }

    @Override // com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq
    public boolean dq(final Map<String, Object> map) {
        if (!com.bytedance.sdk.openadsdk.core.d.dq.d.p.dq(this.f2950d, false)) {
            com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq dqVar = this.p;
            return dqVar != null && dqVar.dq(map);
        }
        if (com.bytedance.sdk.openadsdk.core.ugeno.kk.s(this.f2950d)) {
            com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq dqVar2 = this.p;
            return dqVar2 != null && dqVar2.dq(map);
        }
        if (com.bytedance.sdk.openadsdk.core.ugeno.kk.p(this.f2950d)) {
            com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq dqVar3 = this.p;
            return dqVar3 != null && dqVar3.dq(map);
        }
        new com.bytedance.sdk.openadsdk.core.d.dq.d.p(this.f2950d, this.dq).dq(this.ox).dq(new p.dq() { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.d.1
            @Override // com.bytedance.sdk.openadsdk.core.d.dq.d.p.dq
            public void dq() {
                if (d.this.p.dq(map)) {
                    return;
                }
                d.this.s.d(d.this.iw);
            }
        });
        return true;
    }
}
