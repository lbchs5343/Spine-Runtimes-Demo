package com.bytedance.msdk.s;

import android.text.TextUtils;
import com.bytedance.msdk.ia.bl;
import com.bytedance.msdk.ia.c;
import com.bytedance.msdk.ia.e;
import com.bytedance.msdk.ia.wp;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.ekq;
import java.util.Map;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq implements com.bytedance.sdk.component.ia.d.p.dq.d {
    public static final String ox = UUID.randomUUID().toString();

    /* renamed from: d, reason: collision with root package name */
    public final JSONObject f1246d;
    public final String dq;

    public dq(String str, JSONObject jSONObject) {
        this.dq = str;
        this.f1246d = jSONObject;
    }

    private static void d(p pVar, JSONObject jSONObject) {
        if (pVar != null) {
            if ("media_request".equals(pVar.dq) || "media_fill".equals(pVar.dq) || "media_fill_fail".equals(pVar.dq) || "get_bidding_adm_to_adn".equals(pVar.dq) || "bidding_adm_load".equals(pVar.dq) || "bidding_adm_load_fail".equals(pVar.dq) || "bidding_win_event".equals(pVar.dq) || "media_show_is_ready".equals(pVar.dq) || "media_will_show".equals(pVar.dq) || "media_show".equals(pVar.dq) || "media_show_fail".equals(pVar.dq) || "media_show_listen".equals(pVar.dq) || "media_show_fail_listen".equals(pVar.dq) || "media_click_listen".equals(pVar.dq) || "sdk_init".equals(pVar.dq) || "sdk_init_end".equals(pVar.dq) || "get_config_start".equals(pVar.dq) || "get_config_final".equals(pVar.dq) || "mediation_request".equals(pVar.dq) || "mediation_fill".equals(pVar.dq) || "mediation_request_end".equals(pVar.dq) || "total_load_fail".equals(pVar.dq)) {
                pVar.dq("grouping_params", com.bytedance.msdk.core.f.d.d());
                JSONObject ox2 = com.bytedance.msdk.core.f.d.ox();
                if (ox2 != null) {
                    pVar.dq("user_defined_grouping_params", ox2.toString());
                } else {
                    pVar.dq("user_defined_grouping_params", null);
                }
                com.bytedance.msdk.core.o.p.dq(pVar.ia, pVar.dq, pVar.fw, jSONObject);
            }
        }
    }

    private static void d(JSONObject jSONObject, p pVar) throws JSONException {
        if (jSONObject == null || pVar == null) {
            jSONObject.putOpt("timestamp", Long.valueOf(System.currentTimeMillis()));
            return;
        }
        if (TextUtils.equals(pVar.dq, "sdk_init")) {
            jSONObject.putOpt("timestamp", Long.valueOf(com.bytedance.msdk.api.p.o.d()));
            return;
        }
        if (TextUtils.equals(pVar.dq, "start_up")) {
            jSONObject.putOpt("timestamp", Long.valueOf(com.bytedance.msdk.api.p.o.ox()));
        } else if (pVar.dq() != -1) {
            jSONObject.putOpt("timestamp", Long.valueOf(pVar.dq()));
        } else {
            jSONObject.putOpt("timestamp", Long.valueOf(System.currentTimeMillis()));
        }
    }

    public static JSONObject dq(p pVar, JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.putOpt("device_info", wp.dq());
            if (pVar != null) {
                jSONObject2.putOpt("type", pVar.dq);
                jSONObject2.putOpt("link_id", pVar.f1272d);
                jSONObject2.putOpt(MediationConstant.EXTRA_ADN_NAME, pVar.ox);
                jSONObject2.putOpt("ad_sdk_version", pVar.p);
                jSONObject2.putOpt("rit_cpm", pVar.mn);
                jSONObject2.putOpt("mediation_rit", pVar.iw);
                jSONObject2.putOpt("adtype", Integer.valueOf(pVar.fw));
                jSONObject2.putOpt("error_msg", pVar.no);
                jSONObject2.putOpt("error_code", Integer.valueOf(pVar.q));
                jSONObject2.putOpt("creative_id", pVar.ig);
                jSONObject2.putOpt("exchange_rate", pVar.i);
                jSONObject2.putOpt("msdk_session_id", ox);
                jSONObject2.putOpt("is_trusteeship_monetize", Integer.valueOf(com.bytedance.msdk.core.dq.d().dq()));
                String d2 = com.bytedance.msdk.core.mp.dq.dq().d(com.bytedance.msdk.core.dq.d().mp());
                if (d2 != null) {
                    jSONObject2.putOpt("app_abtest", d2);
                }
                dq(jSONObject2, pVar);
                ox(jSONObject2, pVar);
                d(pVar, jSONObject);
                if (!"total_load_fail".equalsIgnoreCase(pVar.dq) && !"adapter_request_fail".equalsIgnoreCase(pVar.dq)) {
                    jSONObject2.putOpt("req_id", TextUtils.isEmpty(pVar.s) ? pVar.f1272d + "_" + pVar.iw : pVar.s);
                }
                jSONObject2.putOpt("country", com.bytedance.msdk.core.dq.d().ia());
                com.bytedance.msdk.core.no.dq dq = com.bytedance.msdk.core.dq.d().dq(MediationConstant.ADN_PANGLE);
                if (dq != null) {
                    jSONObject2.putOpt(PluginConstants.KEY_APP_ID, dq.dq());
                } else {
                    jSONObject2.putOpt(PluginConstants.KEY_APP_ID, com.bytedance.msdk.core.d.no().ig());
                }
                long j = pVar.kk;
                if (j != 0) {
                    jSONObject2.putOpt("waterfall_id", Long.valueOf(j));
                }
                if (!TextUtils.isEmpty(pVar.o)) {
                    jSONObject2.putOpt("version", pVar.o);
                }
                Map<String, Object> map = pVar.le;
                if (map != null && map.size() > 0) {
                    for (String str : pVar.le.keySet()) {
                        Object obj = pVar.le.get(str);
                        if (!TextUtils.isEmpty(str) && obj != null) {
                            jSONObject2.putOpt(str, obj);
                        }
                    }
                }
            }
            jSONObject2.putOpt("event_extra", jSONObject != null ? jSONObject.toString() : null);
            jSONObject2.putOpt("app_version", c.ox());
            jSONObject2.putOpt("conn_type", Integer.valueOf(e.s()));
            d(jSONObject2, pVar);
            jSONObject2.putOpt("mediation_sdk_version", com.bytedance.msdk.d.p.d());
            jSONObject2.putOpt(PluginConstants.KEY_PLUGIN_VERSION, com.bytedance.msdk.d.p.p());
            try {
                jSONObject2.put("device_score", Double.parseDouble(com.bytedance.sdk.openadsdk.core.wp.dq.dq().dq("DeviceRate", "bytebench_level")));
                return jSONObject2;
            } catch (NumberFormatException unused) {
                jSONObject2.put("device_score", -1);
                return jSONObject2;
            }
        } catch (Throwable th) {
            try {
                dq(jSONObject2, th, pVar);
            } catch (Throwable unused2) {
            }
        }
    }

    private static void dq(JSONObject jSONObject, p pVar) throws JSONException {
        if (jSONObject == null || pVar == null) {
            return;
        }
        int i = pVar.gh;
        if (i != -1) {
            jSONObject.putOpt(ekq.EXTRA_PERMISSION_RESULT, Integer.valueOf(i));
        }
        int i2 = pVar.r;
        if (i2 != -1) {
            jSONObject.putOpt("status_code", Integer.valueOf(i2));
        }
        String str = pVar.f1273f;
        if (str != null) {
            jSONObject.putOpt("show_sort", str);
        }
        String str2 = pVar.jy;
        if (str2 != null) {
            jSONObject.putOpt("load_sort", str2);
        }
        String str3 = pVar.mp;
        if (str3 != null) {
            jSONObject.putOpt("req_bidding_type", str3);
        }
        jSONObject.putOpt(MediationConstant.KEY_GM_PRIME_RIT, pVar.ia);
    }

    private static void dq(JSONObject jSONObject, Throwable th, p pVar) throws JSONException {
        if (jSONObject != null && th != null) {
            String optString = jSONObject.optString("event_extra");
            if (!TextUtils.isEmpty(optString)) {
                JSONObject jSONObject2 = new JSONObject(optString);
                jSONObject2.putOpt("err_msg_comm", th.toString());
                jSONObject.putOpt("event_extra", jSONObject2.toString());
            }
        }
        if (pVar == null || th == null) {
            return;
        }
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.putOpt("comm_eventId", pVar.le.get("event_id"));
        jSONObject3.putOpt("err_msg_comm", th.toString());
        bl.dq(jSONObject3);
    }

    private static void ox(JSONObject jSONObject, p pVar) throws JSONException {
        if (jSONObject == null || pVar == null) {
            return;
        }
        if ("media_fill_fail".equals(pVar.dq) || "media_fill".equals(pVar.dq) || "bidding_adm_load".equals(pVar.dq) || "bidding_adm_load_fail".equals(pVar.dq) || "mediation_fill".equals(pVar.dq) || "mediation_request_end".equals(pVar.dq) || "mediation_video_cached".equals(pVar.dq) || "get_config_final".equals(pVar.dq) || "sdk_init_end".equals(pVar.dq) || "sdk_backstage".equals(pVar.dq) || "mediation_request".equals(pVar.dq) || "return_bidding_result".equals(pVar.dq)) {
            jSONObject.putOpt(MediationConstant.EXTRA_DURATION, Long.valueOf(pVar.cd));
        }
    }

    @Override // com.bytedance.sdk.component.ia.d.p.dq.d
    public long d() {
        JSONObject jSONObject = this.f1246d;
        if (jSONObject == null) {
            return 0L;
        }
        JSONObject optJSONObject = jSONObject.has("params") ? this.f1246d.optJSONObject("params") : this.f1246d;
        if (optJSONObject == null) {
            return 0L;
        }
        String optString = optJSONObject.optString("event_extra");
        if (TextUtils.isEmpty(optString)) {
            return 0L;
        }
        try {
            return new JSONObject(optString).optLong("eventIndex");
        } catch (JSONException unused) {
            return 0L;
        }
    }

    @Override // com.bytedance.sdk.component.ia.d.p.dq.d
    public long dq() {
        JSONObject jSONObject = this.f1246d;
        if (jSONObject == null) {
            return 0L;
        }
        JSONObject optJSONObject = jSONObject.has("params") ? this.f1246d.optJSONObject("params") : this.f1246d;
        if (optJSONObject != null) {
            return optJSONObject.optLong("timestamp");
        }
        return 0L;
    }

    @Override // com.bytedance.sdk.component.ia.d.p.dq.d
    public JSONObject dq(String str) {
        return this.f1246d;
    }

    public String ox() {
        if (TextUtils.isEmpty(this.dq) || this.f1246d == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("localId", this.dq);
            jSONObject.putOpt("event", this.f1246d);
        } catch (Throwable unused) {
        }
        return jSONObject.toString();
    }

    public String toString() {
        return "AdEvent{localId='" + this.dq + "', event=" + this.f1246d + '}';
    }
}
