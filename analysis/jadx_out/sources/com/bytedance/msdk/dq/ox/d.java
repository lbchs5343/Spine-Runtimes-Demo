package com.bytedance.msdk.dq.ox;

import android.content.Context;
import android.text.TextUtils;
import android.util.TypedValue;
import com.bytedance.sdk.openadsdk.f.d.ox.d;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.abn;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class d {
    public static long d(Map<String, Object> map) {
        if (map == null) {
            return 0L;
        }
        try {
            if (map.get(MediationConstant.EXTRA_ADID) != null) {
                return ((Long) map.get(MediationConstant.EXTRA_ADID)).longValue();
            }
            return 0L;
        } catch (Throwable th) {
            th.printStackTrace();
            return 0L;
        }
    }

    private static Map<String, String> d() {
        return com.bytedance.msdk.api.p.o.ia();
    }

    private static JSONArray d(com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar) {
        if (dqVar == null || TextUtils.isEmpty(dqVar.e())) {
            return null;
        }
        try {
            return new JSONArray(dqVar.e());
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static void d(String str) {
        com.bytedance.msdk.api.p.o.d(str);
    }

    public static double dq(Object obj) {
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (!(obj instanceof Float) && !(obj instanceof Double)) {
            try {
                if (obj instanceof String) {
                    return Double.valueOf((String) obj).doubleValue();
                }
                return 0.0d;
            } catch (Exception unused) {
                return 0.0d;
            }
        }
        return ((Double) obj).doubleValue();
    }

    public static int dq(Context context, int i) {
        return (int) TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    public static long dq(Map<String, Object> map) {
        if (map == null) {
            return 0L;
        }
        try {
            if (map.get("creative_id") != null) {
                return ((Long) map.get("creative_id")).longValue();
            }
            return 0L;
        } catch (Throwable th) {
            th.printStackTrace();
            return 0L;
        }
    }

    public static d.dq dq(com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.ox.s.d.d dVar2, boolean z) {
        return dq(dVar, dVar2.ig(), dVar2.f(), dVar2.fw(), dVar2.e(), z);
    }

    public static d.dq dq(com.bytedance.msdk.api.dq.d dVar, String str, String str2, String str3, String str4, boolean z) {
        com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar;
        d.dq ox = new d.dq().p(str).ox(1);
        if (dVar != null) {
            ox.iw(dVar.d()).mn(dVar.k()).d(dVar.ji());
            dqVar = dVar.i();
            if (dqVar != null) {
                ox.iw(dqVar.fw()).dq(dqVar.ia()).p(dqVar.bl()).dq(dqVar.p()).d(dqVar.s()).p(dqVar.cd()).dq(dqVar.kx()).s(dqVar.f()).ox(dqVar.iw());
                String le = dqVar.le();
                if (!TextUtils.isEmpty(le)) {
                    ox.mn(le);
                }
                if (dqVar.i() != 0) {
                    ox.iw(dqVar.i());
                }
            }
            int[] dq = dq(dVar, dqVar);
            if (dq != null && dq.length > 0) {
                ox.dq(dq);
            }
            if (5 == dVar.le() || 9 == dVar.le()) {
                ox.ox(dVar.h());
            }
        } else {
            dqVar = null;
        }
        if (!TextUtils.isEmpty(str4)) {
            ox.ia(str4);
        }
        dq(ox, str2, str3, z, dqVar);
        return ox;
    }

    public static String dq() {
        return com.bytedance.msdk.api.p.o.mn();
    }

    public static String dq(String str, String str2, String str3) {
        JSONArray jSONArray;
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            try {
                if (TextUtils.isEmpty(str)) {
                    jSONArray = new JSONArray();
                } else {
                    try {
                        jSONArray = new JSONArray(str);
                    } catch (JSONException unused) {
                        jSONArray = new JSONArray();
                    }
                }
                int i = 0;
                while (true) {
                    if (i >= jSONArray.length()) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put(abn.EXTRA_UA_APP_NAME, str2);
                        jSONObject.put("value", str3);
                        jSONArray.put(jSONObject);
                        break;
                    }
                    JSONObject optJSONObject = jSONArray.optJSONObject(i);
                    if (optJSONObject != null && str2.equals(optJSONObject.getString(abn.EXTRA_UA_APP_NAME))) {
                        optJSONObject.put("value", str3);
                        break;
                    }
                    i++;
                }
                return jSONArray.toString();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return str;
    }

    public static JSONArray dq(com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar) {
        JSONArray ox = ox(dq());
        try {
            Map<String, String> d2 = d();
            if (d2 != null && d2.size() > 0) {
                for (String str : d2.keySet()) {
                    String str2 = d2.get(str);
                    if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.putOpt(abn.EXTRA_UA_APP_NAME, str);
                        jSONObject.putOpt("value", str2);
                        ox.put(jSONObject);
                    }
                }
            }
            JSONArray d3 = d(dqVar);
            if (d3 != null) {
                for (int i = 0; i < d3.length(); i++) {
                    JSONObject optJSONObject = d3.optJSONObject(i);
                    if (optJSONObject != null && !TextUtils.equals("personal_ads_type", optJSONObject.optString(abn.EXTRA_UA_APP_NAME))) {
                        ox.put(optJSONObject);
                    }
                }
            }
            return ox;
        } catch (Exception e2) {
            e2.printStackTrace();
            return ox;
        }
    }

    public static void dq(d.dq dqVar) {
        if (dqVar != null && com.bytedance.msdk.api.p.o.kk()) {
            try {
                String ox = com.bytedance.msdk.api.p.o.ox("tt_pangle_preview_ad_id");
                String ox2 = com.bytedance.msdk.api.p.o.ox("tt_pangle_preview_creative_id");
                String ox3 = com.bytedance.msdk.api.p.o.ox("tt_pangle_preview_ext");
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "pangle preview adId:" + ox + " creativeId:" + ox2 + " ext" + ox3);
                if (!TextUtils.isEmpty(ox) && !TextUtils.isEmpty(ox2)) {
                    dqVar.dq(ox).d(ox2);
                }
                if (TextUtils.isEmpty(ox3)) {
                    return;
                }
                dqVar.ox(ox3);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    private static void dq(d.dq dqVar, String str, String str2, boolean z, com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar2) {
        JSONObject jSONObject;
        JSONArray dq = dq(dqVar2);
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.putOpt(abn.EXTRA_UA_APP_NAME, "mediation_sdk_version");
            jSONObject2.putOpt("value", com.bytedance.msdk.d.p.d());
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.putOpt(abn.EXTRA_UA_APP_NAME, "mediation_req_type");
            jSONObject3.putOpt("value", "1");
            if (TextUtils.isEmpty(str)) {
                jSONObject = null;
            } else {
                jSONObject = new JSONObject();
                jSONObject.putOpt(abn.EXTRA_UA_APP_NAME, "waterfall_abtest");
                jSONObject.putOpt("value", str);
            }
            dq.put(jSONObject3);
            dq.put(jSONObject2);
            if (jSONObject != null) {
                dq.put(jSONObject);
            }
            if (!TextUtils.isEmpty(str2)) {
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.putOpt(abn.EXTRA_UA_APP_NAME, "m_req_id");
                jSONObject4.putOpt("value", str2);
                dq.put(jSONObject4);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (!z) {
            dq(dqVar);
        }
        com.bytedance.sdk.gromore.init.dq.dq(com.bytedance.msdk.api.p.o.iw());
        if (dqVar != null) {
            dqVar.kk(dq.toString());
        }
    }

    public static boolean dq(com.bytedance.msdk.api.dq.d dVar) {
        if (dVar != null && dVar.wn() != null) {
            Object obj = dVar.wn().get(MediationConstant.BANNER_AUTO_HEIGHT);
            try {
                if (obj instanceof Boolean) {
                    return ((Boolean) obj).booleanValue();
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    public static boolean dq(String str) {
        String ox = ox();
        return (TextUtils.isEmpty(ox) || TextUtils.isEmpty(str) || ox.compareTo(str) < 0) ? false : true;
    }

    private static int[] dq(com.bytedance.msdk.api.dq.d dVar, com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar) {
        if (dqVar != null && dqVar.r() != null && dqVar.r().length > 0) {
            return dqVar.r();
        }
        try {
            Map<String, Object> wn = dVar.wn();
            if (wn != null) {
                return (int[]) wn.get(MediationConstant.PANGLE_VID);
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    private static String ox() {
        try {
            return com.bytedance.sdk.gromore.init.dq.ox();
        } catch (Throwable unused) {
            return "0.0";
        }
    }

    public static String ox(Map<String, Object> map) {
        if (map == null || map.get("request_id") == null) {
            return null;
        }
        return (String) map.get("request_id");
    }

    public static JSONArray ox(String str) {
        JSONArray jSONArray;
        try {
            jSONArray = TextUtils.isEmpty(str) ? new JSONArray() : new JSONArray(str);
        } catch (Exception e2) {
            e2.printStackTrace();
            jSONArray = null;
        }
        return jSONArray == null ? new JSONArray() : jSONArray;
    }
}
