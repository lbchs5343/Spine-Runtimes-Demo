package com.bytedance.sdk.component.dq;

import android.text.TextUtils;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class jy {
    private final Map<String, Object> dq = new ConcurrentHashMap();

    private jy() {
    }

    public static jy dq() {
        return new jy();
    }

    public String d() {
        JSONObject jSONObject = new JSONObject();
        try {
            for (Map.Entry<String, Object> entry : this.dq.entrySet()) {
                jSONObject.put(entry.getKey(), entry.getValue());
            }
            return jSONObject.toString();
        } catch (JSONException unused) {
            return "";
        }
    }

    public jy dq(String str, Object obj) {
        if (!TextUtils.isEmpty(str) && obj != null) {
            this.dq.put(str, obj);
        }
        return this;
    }
}
