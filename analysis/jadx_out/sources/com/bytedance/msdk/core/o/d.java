package com.bytedance.msdk.core.o;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class d extends dq {
    private static volatile d p;
    protected final Map<String, String> ox;

    private d() {
        super("label_v_v_s_3");
        this.ox = new ConcurrentHashMap();
        d();
    }

    public static d p() {
        if (p == null) {
            synchronized (d.class) {
                try {
                    if (p == null) {
                        p = new d();
                    }
                } finally {
                }
            }
        }
        return p;
    }

    @Override // com.bytedance.msdk.core.o.dq
    public boolean d(String str, JSONObject jSONObject, Map<String, Object> map) {
        try {
            Object obj = map.get("user_label_value");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject.put(str, jSONObject2);
            jSONObject2.putOpt("label_info", dq(obj != null ? (com.bytedance.msdk.core.no.p) obj : null));
            jSONObject2.putOpt("ecpm_ttl", Integer.valueOf(com.bytedance.msdk.core.dq.d().uh()));
            jSONObject2.putOpt("rule_id", map.get("rule_id"));
            jSONObject2.putOpt("group_type", map.get("group_type"));
            jSONObject2.putOpt("rule_in_use", map.get("rule_in_use"));
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.putOpt(MediationConstant.KEY_ECPM, map.get(MediationConstant.KEY_ECPM));
            jSONObject3.putOpt("timestamp", String.valueOf(System.currentTimeMillis()));
            jSONObject2.putOpt("ecpm_info", jSONObject3);
            jSONObject2.putOpt("refresh_time", map.get("refresh_time"));
            return true;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    @Override // com.bytedance.msdk.core.o.dq
    public Map<String, String> dq() {
        return this.ox;
    }

    @Override // com.bytedance.msdk.core.o.dq
    public JSONObject dq(com.bytedance.msdk.core.no.p pVar) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.putOpt("label_name", pVar != null ? pVar.dq() : "-1");
            jSONObject.putOpt("label_id", pVar != null ? Integer.valueOf(pVar.ox()) : "-1");
            jSONObject.putOpt("label_version", pVar != null ? pVar.p() : "-1");
            return jSONObject;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public void dq(String str, int i, double d2) {
        if (!com.bytedance.msdk.core.dq.d().by() || TextUtils.isEmpty(str)) {
            return;
        }
        dq(3, str, i, d2);
    }

    @Override // com.bytedance.msdk.core.o.dq
    public void dq(String str, int i, String str2) {
        if (i == 3) {
            this.ox.put(str, str2);
        }
    }

    @Override // com.bytedance.msdk.core.o.dq
    public void dq(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        com.bytedance.msdk.dq.s.ox.d("DynamicLabelValueManagerAbs", "readCacheFromSp-SP_NAME_V3，cpmKey:" + str + "，type_value_timestamp:" + str2);
        if (str.startsWith("cpm_key_")) {
            this.ox.put(str, str2);
        }
    }

    public void ox(String str, JSONObject jSONObject, Map<String, Object> map) {
        if (!com.bytedance.msdk.core.dq.d().by() || TextUtils.isEmpty(str) || jSONObject == null) {
            return;
        }
        try {
            jSONObject.putOpt("rule_id", map.get("rule_id"));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }
}
