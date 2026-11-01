package com.bytedance.msdk.core.d;

import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ox {
    public static void dq(com.bytedance.msdk.d.s sVar, com.bytedance.msdk.api.dq.d dVar, Map<String, Object> map) {
        if (com.bytedance.msdk.core.dq.d().er()) {
            String k = dVar != null ? dVar.k() : null;
            d j = com.bytedance.msdk.core.dq.d().j();
            if (j != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.putOpt("lt_days", Integer.valueOf(j.dq()));
                    jSONObject.putOpt("rule_id", j.ox(k));
                } catch (Exception e2) {
                    com.bytedance.msdk.dq.s.ox.p("AdLoadEventManager", "put 元素 异常：" + e2.getMessage());
                }
                try {
                    jSONObject.putOpt("score", Float.valueOf(com.bytedance.msdk.core.d.no().dq(k)));
                } catch (Exception e3) {
                    com.bytedance.msdk.dq.s.ox.p("AdLoadEventManager", "put 元素异常：" + e3.getMessage());
                }
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.putOpt("dis_c", Integer.valueOf(dq.d(k)));
                    jSONObject2.putOpt("ins_d", Integer.valueOf(dq.s()));
                    jSONObject2.putOpt("act_d", Integer.valueOf(dq.d()));
                    jSONObject2.putOpt("act_times", Integer.valueOf(dq.p()));
                    jSONObject.putOpt("active_target", jSONObject2);
                } catch (Exception e4) {
                    com.bytedance.msdk.dq.s.ox.p("AdLoadEventManager", "put 元素异常：" + e4.getMessage());
                }
                if (dVar != null && dVar.wn() != null) {
                    Map<String, Object> wn = dVar.wn();
                    if (wn.containsKey(MediationConstant.KEY_USE_POLICY)) {
                        try {
                            jSONObject.putOpt("user_enter", wn.get(MediationConstant.KEY_USE_POLICY));
                        } catch (Exception e5) {
                            com.bytedance.msdk.dq.s.ox.p("AdLoadEventManager", "put 元素异常：" + e5.getMessage());
                        }
                    }
                }
                map.put("dynamic_policy", jSONObject);
            }
        }
    }
}
