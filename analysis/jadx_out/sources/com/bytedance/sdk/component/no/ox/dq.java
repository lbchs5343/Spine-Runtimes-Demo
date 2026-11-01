package com.bytedance.sdk.component.no.ox;

import g.abn;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private String f2013d;
    private String dq;
    private int ox;
    private final Map<String, String> p = new HashMap();
    private List<C0123dq> s = new ArrayList();
    private final List<C0123dq> iw = new ArrayList();
    private final List<C0123dq> mn = new ArrayList();

    /* renamed from: com.bytedance.sdk.component.no.ox.dq$dq, reason: collision with other inner class name */
    public static class C0123dq {

        /* renamed from: d, reason: collision with root package name */
        private String f2014d;
        private String dq;

        public C0123dq(String str, String str2) {
            this.dq = str;
            this.f2014d = str2;
        }

        public String d() {
            return this.f2014d;
        }

        public String dq() {
            return this.dq;
        }
    }

    public dq(JSONObject jSONObject) {
        dq(jSONObject);
    }

    public String d() {
        return this.f2013d;
    }

    public String dq() {
        return this.dq;
    }

    public void dq(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        this.dq = jSONObject.optString(abn.EXTRA_UA_APP_NAME);
        this.ox = jSONObject.optInt("index");
        this.f2013d = jSONObject.optString("scheme");
        JSONObject optJSONObject = jSONObject.optJSONObject("params");
        Iterator<String> keys = optJSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            this.p.put(next, optJSONObject.optString(next));
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("next");
        if (optJSONArray != null) {
            for (int i = 0; i < optJSONArray.length(); i++) {
                JSONObject optJSONObject2 = optJSONArray.optJSONObject(i);
                if (optJSONObject2 != null) {
                    this.s.add(new C0123dq(optJSONObject2.optString(abn.EXTRA_UA_APP_NAME), optJSONObject2.optString("condition")));
                }
            }
        } else {
            JSONObject optJSONObject3 = jSONObject.optJSONObject("next");
            if (optJSONObject3 != null) {
                this.s.add(new C0123dq(optJSONObject3.optString(abn.EXTRA_UA_APP_NAME), optJSONObject3.optString("condition")));
            }
        }
        JSONObject optJSONObject4 = jSONObject.optJSONObject("callback");
        if (optJSONObject4 == null) {
            optJSONObject4 = new JSONObject();
        }
        JSONArray optJSONArray2 = optJSONObject4.optJSONArray("success");
        if (optJSONArray2 == null) {
            optJSONArray2 = new JSONArray();
        }
        for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
            JSONObject optJSONObject5 = optJSONArray2.optJSONObject(i2);
            if (optJSONObject5 != null) {
                this.iw.add(new C0123dq(optJSONObject5.optString(abn.EXTRA_UA_APP_NAME), optJSONObject5.optString("condition")));
            }
        }
        JSONArray optJSONArray3 = optJSONObject4.optJSONArray("fail");
        if (optJSONArray3 == null) {
            optJSONArray3 = new JSONArray();
        }
        for (int i3 = 0; i3 < optJSONArray3.length(); i3++) {
            JSONObject optJSONObject6 = optJSONArray3.optJSONObject(i3);
            if (optJSONObject6 != null) {
                this.mn.add(new C0123dq(optJSONObject6.optString(abn.EXTRA_UA_APP_NAME), optJSONObject6.optString("condition")));
            }
        }
    }

    public List<C0123dq> iw() {
        return this.mn;
    }

    public Map<String, String> ox() {
        return this.p;
    }

    public List<C0123dq> p() {
        return this.s;
    }

    public List<C0123dq> s() {
        return this.iw;
    }
}
