package com.bytedance.sdk.component.no.ox;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public enum d {
    INSTANCE;


    /* renamed from: d, reason: collision with root package name */
    private Map<String, ox> f2012d = new HashMap();

    d() {
    }

    public ox dq(String str) {
        return this.f2012d.get(str);
    }

    public void dq(JSONObject jSONObject) {
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                String next = keys.next();
                jSONObject2.putOpt(next, jSONObject.opt(next));
                ox oxVar = new ox(jSONObject2);
                this.f2012d.put(oxVar.d(), oxVar);
            } catch (JSONException unused) {
            }
        }
    }
}
