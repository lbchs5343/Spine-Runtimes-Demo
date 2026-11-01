package com.bytedance.sdk.openadsdk.core.ia.dq.d;

import android.content.Context;
import com.bytedance.sdk.openadsdk.core.r.io;
import com.bytedance.sdk.openadsdk.core.r.j;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

@com.bytedance.sdk.component.no.d.d
/* loaded from: classes3.dex */
public class no implements com.bytedance.sdk.component.no.dq.dq.ox {

    /* renamed from: d, reason: collision with root package name */
    @com.bytedance.sdk.component.no.d.dq(dq = "context")
    private Context f2942d;

    @com.bytedance.sdk.component.no.d.dq(dq = "material_meta")
    private j dq;

    @com.bytedance.sdk.component.no.d.dq(dq = "convert_from_landing_page")
    private boolean ox;

    @com.bytedance.sdk.component.no.d.dq(dq = "event_tag")
    private String p;

    @com.bytedance.sdk.component.no.d.dq(dq = "wc_miniapp_info")
    private JSONObject s;

    private boolean dq() {
        return (this.dq == null || this.f2942d == null || this.s == null) ? false : true;
    }

    @Override // com.bytedance.sdk.component.no.dq.dq.ox
    public boolean dq(Map<String, Object> map, Map<String, Object> map2, com.bytedance.sdk.component.no.dq.dq dqVar) {
        if (!dq()) {
            dqVar.d(map2);
            return true;
        }
        com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.kk kkVar = new com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.kk(io.dq(this.s), this.f2942d, this.ox, this.p, map2, dqVar);
        kkVar.dq(this.dq);
        if (kkVar.dq(new HashMap())) {
            dqVar.dq(map2);
        } else {
            dqVar.d(map2);
        }
        return true;
    }
}
