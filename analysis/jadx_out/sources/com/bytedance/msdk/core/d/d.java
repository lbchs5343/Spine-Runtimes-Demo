package com.bytedance.msdk.core.d;

import android.text.TextUtils;
import com.bytedance.msdk.ia.le;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.tn;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class d {
    private int dq;

    /* renamed from: d, reason: collision with root package name */
    private final Map<String, Float> f848d = new ConcurrentHashMap();
    private final Map<String, p> ox = new ConcurrentHashMap();

    public d(JSONObject jSONObject) {
        JSONArray optJSONArray;
        if (jSONObject != null) {
            this.dq = jSONObject.optInt("lt_days");
            JSONObject optJSONObject = jSONObject.optJSONObject("estimate");
            if (optJSONObject != null && optJSONObject.length() > 0) {
                Iterator<String> keys = optJSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    this.f848d.put(next, Float.valueOf((float) optJSONObject.optDouble(next)));
                }
            }
            JSONObject optJSONObject2 = jSONObject.optJSONObject("rule_excs");
            if (optJSONObject2 == null || optJSONObject2.length() == 0) {
                return;
            }
            Iterator<String> keys2 = optJSONObject2.keys();
            while (keys2.hasNext()) {
                String next2 = keys2.next();
                JSONObject optJSONObject3 = optJSONObject2.optJSONObject(next2);
                if (optJSONObject3 != null && (optJSONArray = optJSONObject3.optJSONArray("prime_rits")) != null && optJSONArray.length() > 0) {
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        String optString = optJSONArray.optString(i);
                        this.ox.put(optString, new p(next2, optString, optJSONObject3));
                    }
                }
            }
        }
    }

    private float dq(String str, float f2, float f3) {
        if (f3 == -1.0f) {
            return f2;
        }
        str.getClass();
        switch (str) {
            case "*":
                return f3 * f2;
            case "+":
                return f3 + f2;
            case "max":
                return Math.max(f2, f3);
            case "min":
                return Math.min(f2, f3);
            default:
                return f3;
        }
    }

    public p d(String str) {
        return this.ox.get(str);
    }

    public float dq(String str) {
        p pVar = this.ox.get(str);
        float f2 = -1.0f;
        if (pVar != null) {
            Map<String, Float> d2 = pVar.d();
            String p = pVar.p();
            if (d2 != null) {
                if (d2.containsKey("lt_x_times")) {
                    Float f3 = d2.get("lt_x_times");
                    int d3 = dq.d();
                    if (f3 != null) {
                        f2 = dq(p, f3.floatValue() * d3, -1.0f);
                    }
                }
                if (d2.containsKey("active_duration")) {
                    Float f4 = d2.get("active_duration");
                    long iw = dq.iw();
                    if (f4 != null) {
                        f2 = dq(p, f4.floatValue() * iw, f2);
                    }
                }
                if (d2.containsKey("active_count")) {
                    Float f5 = d2.get("active_count");
                    int p2 = dq.p();
                    if (f5 != null) {
                        f2 = dq(p, f5.floatValue() * p2, f2);
                    }
                }
                if (d2.containsKey("show_period")) {
                    Float f6 = d2.get("show_period");
                    long ia = dq.ia(str);
                    if (f6 != null) {
                        f2 = dq(p, f6.floatValue() * ia, f2);
                    }
                }
                if (d2.containsKey("show_count")) {
                    Float f7 = d2.get("show_count");
                    int p3 = dq.p(str);
                    if (f7 != null) {
                        f2 = dq(p, f7.floatValue() * p3, f2);
                    }
                }
                if (d2.containsKey("dislike_count")) {
                    Float f8 = d2.get("dislike_count");
                    int d4 = dq.d(str);
                    if (f8 != null) {
                        f2 = dq(p, f8.floatValue() * d4, f2);
                    }
                }
                if (d2.containsKey("click_count")) {
                    Float f9 = d2.get("click_count");
                    int iw2 = dq.iw(str);
                    if (f9 != null) {
                        f2 = dq(p, f9.floatValue() * iw2, f2);
                    }
                }
                if (d2.containsKey("install_days")) {
                    Float f10 = d2.get("install_days");
                    int s = dq.s();
                    if (f10 != null) {
                        f2 = dq(p, f10.floatValue() * s, f2);
                    }
                }
                if (!this.f848d.isEmpty()) {
                    for (Map.Entry<String, Float> entry : this.f848d.entrySet()) {
                        if (entry != null) {
                            String key = entry.getKey();
                            float floatValue = entry.getValue().floatValue();
                            Float f11 = d2.get(key);
                            if (f11 != null) {
                                f2 = dq(p, f11.floatValue() * floatValue, f2);
                            }
                        }
                    }
                }
            }
        }
        return f2;
    }

    public int dq() {
        return this.dq;
    }

    public JSONObject dq(String str, le leVar) {
        s sVar;
        if (!com.bytedance.msdk.core.dq.d().er() || str == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        if (TextUtils.isEmpty(str)) {
            return jSONObject;
        }
        float dq = dq(str);
        p pVar = this.ox.get(str);
        if (pVar != null) {
            Map<String, s> s = pVar.s();
            String[] ox = pVar.ox();
            if (s != null && !s.isEmpty() && ox != null && ox.length > 0) {
                for (String str2 : ox) {
                    if (!TextUtils.isEmpty(str2) && (sVar = s.get(str2)) != null) {
                        try {
                            jSONObject.putOpt(str2, Integer.valueOf(sVar.dq(dq)));
                        } catch (Exception e2) {
                            StringBuilder o = tn.o("calculateRangeByScore计算异常：(tableName：", str2, ",primeRit:", str, "），");
                            o.append(e2.getMessage());
                            com.bytedance.msdk.dq.s.ox.p("", o.toString());
                        }
                    }
                }
            }
        }
        leVar.put(MediationConstant.KEY_GM_POLICY, jSONObject);
        leVar.put("adl_scr", Float.valueOf(dq));
        com.bytedance.msdk.core.d.no().dq(str, dq);
        return jSONObject;
    }

    public String ox(String str) {
        p d2;
        if (str == null || (d2 = d(str)) == null) {
            return null;
        }
        return d2.dq();
    }
}
