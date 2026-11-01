package com.bytedance.sdk.openadsdk.core.ia.dq.d;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.r.j;
import java.util.HashMap;
import java.util.Map;

@com.bytedance.sdk.component.no.d.d
/* loaded from: classes3.dex */
public class o implements com.bytedance.sdk.component.no.dq.dq.ox {

    /* renamed from: d, reason: collision with root package name */
    @com.bytedance.sdk.component.no.d.dq(dq = "context")
    private Context f2943d;

    @com.bytedance.sdk.component.no.d.dq(dq = "material_meta")
    private j dq;

    @com.bytedance.sdk.component.no.d.dq(dq = "view")
    private View iw;

    @com.bytedance.sdk.component.no.d.dq(dq = "handle_chain_data")
    private Map<String, Object> mn;

    @com.bytedance.sdk.component.no.d.dq(dq = "event_tag")
    private String ox;

    @com.bytedance.sdk.component.no.d.dq(dq = "dpa_tag")
    private String p;

    @com.bytedance.sdk.component.no.d.dq(dq = "live_saas_interaction_type")
    private int s = -1;

    private boolean dq() {
        return (this.dq == null || this.f2943d == null) ? false : true;
    }

    @Override // com.bytedance.sdk.component.no.dq.dq.ox
    public boolean dq(Map<String, Object> map, Map<String, Object> map2, com.bytedance.sdk.component.no.dq.dq dqVar) {
        if (!dq()) {
            dqVar.d(map2);
            return true;
        }
        com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.iw iwVar = new com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.iw(this.dq, this.f2943d, this.ox, this.p);
        int i = this.s;
        if (i != -1) {
            iwVar.dq(i);
        }
        iwVar.dq(this.iw);
        iwVar.d(this.mn);
        if (new com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.d(new com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.s(iwVar, this.dq, dqVar, map2, this.ox), this.f2943d, this.dq, this.ox, map2, dqVar).dq(new HashMap())) {
            dqVar.dq(map2);
            return false;
        }
        dqVar.d(map2);
        return false;
    }
}
