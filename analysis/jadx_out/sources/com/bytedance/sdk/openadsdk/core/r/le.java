package com.bytedance.sdk.openadsdk.core.r;

import android.text.TextUtils;
import g.abn;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class le {
    public Map<String, dq> dq = new HashMap();

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        public String f3486d;
        public int dq;
        public String ox;
        public String p;

        public dq(JSONObject jSONObject) {
            try {
                this.dq = jSONObject.optInt("type");
                this.f3486d = jSONObject.optString(abn.EXTRA_URL);
                this.ox = jSONObject.optString("pid");
                this.p = jSONObject.optString("ecom_live_params");
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        public boolean d() {
            return 3 == this.dq ? !TextUtils.isEmpty(this.p) : !TextUtils.isEmpty(this.f3486d);
        }

        public JSONObject dq() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("type", this.dq);
                jSONObject.put(abn.EXTRA_URL, this.f3486d);
                jSONObject.put("pid", this.ox);
                jSONObject.put("ecom_live_params", this.p);
                return jSONObject;
            } catch (JSONException e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    public le(JSONObject jSONObject) {
        try {
            JSONObject optJSONObject = jSONObject.optJSONObject("sub_convert_link");
            if (optJSONObject != null) {
                Iterator<String> keys = optJSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    dq dqVar = new dq(optJSONObject.optJSONObject(next));
                    if (dqVar.d()) {
                        this.dq.put(next, dqVar);
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static int d(j jVar, String str) {
        dq dqVar;
        le dq2 = dq(jVar);
        if (dq2 == null || (dqVar = dq2.dq.get(str)) == null) {
            return 0;
        }
        return dqVar.dq;
    }

    private static le dq(j jVar) {
        if (jVar == null) {
            return null;
        }
        return jVar.rh();
    }

    public static boolean dq(j jVar, String str) {
        le dq2 = dq(jVar);
        return (dq2 == null || !dq2.dq.containsKey(str) || TextUtils.isEmpty(ox(jVar, str))) ? false : true;
    }

    public static String ox(j jVar, String str) {
        dq dqVar;
        le dq2 = dq(jVar);
        return (dq2 == null || (dqVar = dq2.dq.get(str)) == null) ? "" : dqVar.f3486d;
    }

    public static String p(j jVar, String str) {
        dq dqVar;
        le dq2 = dq(jVar);
        return (dq2 == null || (dqVar = dq2.dq.get(str)) == null) ? "" : dqVar.ox;
    }

    public static String s(j jVar, String str) {
        dq dqVar;
        le dq2 = dq(jVar);
        return (dq2 == null || (dqVar = dq2.dq.get(str)) == null) ? "" : dqVar.p;
    }

    public void dq(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            for (Map.Entry<String, dq> entry : this.dq.entrySet()) {
                jSONObject2.put(entry.getKey(), entry.getValue().dq());
            }
            jSONObject.put("sub_convert_link", jSONObject2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
