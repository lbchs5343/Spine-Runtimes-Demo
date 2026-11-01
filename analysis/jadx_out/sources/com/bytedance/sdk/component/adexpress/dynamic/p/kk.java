package com.bytedance.sdk.component.adexpress.dynamic.p;

import g.awf;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class kk {
    public static String d(String str, String str2) {
        if (!com.bytedance.sdk.component.adexpress.p.dq()) {
            return dq.dq(str);
        }
        if (str.indexOf(46) < 0) {
            str = str.concat(".png");
        }
        return awf.i(str2, "static/images/", str);
    }

    public static String dq(String str) {
        JSONObject optJSONObject;
        JSONObject pa = com.bytedance.sdk.component.adexpress.d.pa(str);
        if (pa == null || (optJSONObject = pa.optJSONObject("values")) == null) {
            return null;
        }
        return optJSONObject.optString("data");
    }

    public static String dq(String str, String str2) {
        JSONObject optJSONObject;
        JSONObject pa = com.bytedance.sdk.component.adexpress.d.pa(str);
        if (pa == null || (optJSONObject = pa.optJSONObject("values")) == null) {
            return null;
        }
        return optJSONObject.optString(str2);
    }

    public static JSONObject dq(String str, JSONObject jSONObject, JSONObject jSONObject2) {
        JSONObject pa = com.bytedance.sdk.component.adexpress.d.pa(str);
        if (pa == null) {
            return null;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        return dq(jSONObject2, pa.optJSONObject("themeValues"), jSONObject);
    }

    public static JSONObject dq(JSONArray jSONArray) {
        JSONObject optJSONObject;
        if (jSONArray == null || jSONArray.length() <= 0 || (optJSONObject = jSONArray.optJSONObject(0)) == null) {
            return null;
        }
        return optJSONObject.optJSONObject("values");
    }

    public static JSONObject dq(JSONObject... jSONObjectArr) {
        JSONObject jSONObject = new JSONObject();
        for (JSONObject jSONObject2 : jSONObjectArr) {
            if (jSONObject2 != null) {
                Iterator<String> keys = jSONObject2.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    try {
                        jSONObject.put(next, jSONObject2.opt(next));
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }
        return jSONObject;
    }

    public static void dq(String str, JSONObject jSONObject) {
        JSONObject pa = com.bytedance.sdk.component.adexpress.d.pa(str);
        if (pa == null) {
            return;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        JSONObject optJSONObject = pa.optJSONObject("values");
        if (optJSONObject == null) {
            return;
        }
        dq(optJSONObject, jSONObject);
    }

    private static void dq(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject2 == null) {
            jSONObject2 = new JSONObject();
        }
        if (jSONObject == null) {
            return;
        }
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            if (!jSONObject2.has(next)) {
                try {
                    jSONObject2.put(next, jSONObject.opt(next));
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }
}
