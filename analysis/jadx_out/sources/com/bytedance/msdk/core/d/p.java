package com.bytedance.msdk.core.d;

import android.text.TextUtils;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class p {

    /* renamed from: d, reason: collision with root package name */
    private final String f850d;
    private final String dq;
    private final String p;
    private String[] s;
    private final Map<String, Float> ox = new ConcurrentHashMap();
    private final Map<String, s> iw = new ConcurrentHashMap();

    public p(String str, String str2, JSONObject jSONObject) {
        this.dq = str;
        this.f850d = str2;
        this.p = jSONObject.optString("symbol");
        JSONArray optJSONArray = jSONObject.optJSONArray("score_fit_type");
        if (optJSONArray != null && optJSONArray.length() > 0) {
            this.s = new String[optJSONArray.length()];
            for (int i = 0; i < optJSONArray.length(); i++) {
                String optString = optJSONArray.optString(i);
                if (!TextUtils.isEmpty(optString)) {
                    this.s[i] = optString;
                    JSONObject optJSONObject = jSONObject.optJSONObject(optString);
                    if (optJSONObject != null && optJSONObject.length() > 0) {
                        JSONArray optJSONArray2 = optJSONObject.optJSONArray("range");
                        JSONArray optJSONArray3 = optJSONObject.optJSONArray("value");
                        if (optJSONArray2 != null && optJSONArray2.length() > 0 && optJSONArray3 != null && optJSONArray3.length() > 0) {
                            this.iw.put(optString, new s(optString, optJSONArray2, optJSONArray3));
                        }
                    }
                }
            }
        }
        JSONObject optJSONObject2 = jSONObject.optJSONObject("rule_exc_mode");
        if (optJSONObject2 == null || optJSONObject2.length() <= 0) {
            return;
        }
        Iterator<String> keys = optJSONObject2.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            this.ox.put(next, Float.valueOf((float) optJSONObject2.optDouble(next, 0.0d)));
        }
    }

    public Map<String, Float> d() {
        return this.ox;
    }

    public String dq() {
        return this.dq;
    }

    public String[] ox() {
        return this.s;
    }

    public String p() {
        return this.p;
    }

    public Map<String, s> s() {
        return this.iw;
    }
}
