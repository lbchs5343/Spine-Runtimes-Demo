package com.bytedance.sdk.openadsdk.core.ia.dq.d;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashSet;
import java.util.Map;
import org.json.JSONObject;

@com.bytedance.sdk.component.no.d.d
/* loaded from: classes3.dex */
public class jy implements com.bytedance.sdk.component.no.dq.dq.ox {

    /* renamed from: d, reason: collision with root package name */
    @com.bytedance.sdk.component.no.d.dq(dq = "log_extra")
    private String f2937d;

    @com.bytedance.sdk.component.no.d.dq(dq = TTDownloadField.TT_LABEL)
    private String dq;

    @com.bytedance.sdk.component.no.d.dq(dq = "material_meta")
    private j ox;

    private JSONObject dq(Map<String, Object> map) {
        JSONObject jSONObject = new JSONObject();
        try {
            HashSet hashSet = new HashSet();
            hashSet.add(TTDownloadField.TT_LABEL);
            hashSet.add(MediationConstant.EXTRA_ADID);
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
        return (TextUtils.isEmpty(this.dq) || TextUtils.isEmpty(this.f2937d) || this.ox == null) ? false : true;
    }

    @Override // com.bytedance.sdk.component.no.dq.dq.ox
    public boolean dq(Map<String, Object> map, Map<String, Object> map2, com.bytedance.sdk.component.no.dq.dq dqVar) {
        if (!dq()) {
            com.bytedance.sdk.component.utils.ig.p("UChain_ReportEventAction", "ifHasAllRequiredParam = false");
            dqVar.d(map2);
            return false;
        }
        JSONObject dq = dq(map);
        com.bytedance.sdk.openadsdk.core.ig.ox.d(this.ox, c.d(this.ox), this.dq, dq);
        dqVar.dq(map2);
        return true;
    }
}
