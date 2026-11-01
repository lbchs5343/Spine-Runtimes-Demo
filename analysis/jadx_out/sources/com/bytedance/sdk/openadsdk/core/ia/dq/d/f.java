package com.bytedance.sdk.openadsdk.core.ia.dq.d;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.r.j;
import java.util.HashSet;
import java.util.Map;
import org.json.JSONObject;

@com.bytedance.sdk.component.no.d.d
/* loaded from: classes3.dex */
public class f implements com.bytedance.sdk.component.no.dq.dq.ox {

    /* renamed from: d, reason: collision with root package name */
    @com.bytedance.sdk.component.no.d.dq(dq = "log_extra")
    private String f2926d;

    @com.bytedance.sdk.component.no.d.dq(dq = "type")
    private String dq;

    @com.bytedance.sdk.component.no.d.dq(dq = "material_meta")
    private j ox;

    private JSONObject dq(Map<String, Object> map) {
        JSONObject jSONObject = new JSONObject();
        try {
            HashSet hashSet = new HashSet();
            hashSet.add("type");
            hashSet.add("log_extra");
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                if (!hashSet.contains(entry.getKey())) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
            }
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    private boolean dq() {
        return (TextUtils.isEmpty(this.dq) || TextUtils.isEmpty(this.f2926d)) ? false : true;
    }

    @Override // com.bytedance.sdk.component.no.dq.dq.ox
    public boolean dq(Map<String, Object> map, Map<String, Object> map2, com.bytedance.sdk.component.no.dq.dq dqVar) {
        if (!dq()) {
            com.bytedance.sdk.component.utils.ig.p("UChain_ReportStatsAction", "ifHasAllRequiredParam = false");
            dqVar.d(map2);
            return false;
        }
        final JSONObject dq = dq(map);
        final int ia = c.ia(this.ox);
        com.bytedance.sdk.openadsdk.core.gh.ig.dq().d(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.d.f.1
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq(f.this.dq).ia(f.this.f2926d).dq(ia).d(dq.toString());
            }
        }, this.dq);
        dqVar.dq(map2);
        return true;
    }
}
