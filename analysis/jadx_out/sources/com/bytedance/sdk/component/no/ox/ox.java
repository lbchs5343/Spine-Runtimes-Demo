package com.bytedance.sdk.component.no.ox;

import android.text.TextUtils;
import com.bytedance.sdk.component.no.ox.dq;
import g.cgd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ox {

    /* renamed from: d, reason: collision with root package name */
    private String f2015d;
    private String dq;
    private JSONObject iw;
    private boolean ox;
    private final Map<String, dq> p = new HashMap();
    private dq s;

    public ox(JSONObject jSONObject) {
        this.ox = false;
        String next = jSONObject.keys().next();
        this.f2015d = next;
        JSONObject optJSONObject = jSONObject.optJSONObject(next);
        this.dq = optJSONObject.optString("version");
        boolean optBoolean = optJSONObject.optBoolean("lazyLoad");
        this.ox = optBoolean;
        if (optBoolean) {
            this.iw = optJSONObject;
        } else {
            dq(optJSONObject);
        }
    }

    private List<dq> dq(JSONObject jSONObject, Map<String, Object> map, List<dq.C0123dq> list) {
        dq dq;
        ArrayList arrayList = new ArrayList();
        if (!list.isEmpty()) {
            for (dq.C0123dq c0123dq : list) {
                if (c0123dq != null && (dq = dq(c0123dq.dq())) != null && dq(c0123dq.d(), jSONObject, map)) {
                    arrayList.add(dq);
                }
            }
        }
        return arrayList;
    }

    private void dq(JSONObject jSONObject) {
        JSONArray optJSONArray = jSONObject.optJSONArray("events");
        for (int i = 0; i < optJSONArray.length(); i++) {
            dq dqVar = new dq(optJSONArray.optJSONObject(i));
            this.p.put(dqVar.dq(), dqVar);
            if (dqVar.dq().equals(jSONObject.optString("main"))) {
                this.s = dqVar;
            }
        }
    }

    private static boolean dq(String str, JSONObject jSONObject, Map<String, Object> map) {
        if (TextUtils.isEmpty(str) || map == null) {
            return true;
        }
        try {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                String key = entry.getKey();
                if (!TextUtils.isEmpty(key)) {
                    jSONObject.put(key, entry.getValue());
                }
            }
            if (!str.startsWith("${") || !str.endsWith("}")) {
                return false;
            }
            cgd cgdVar = new cgd(str.substring(2, str.length() - 1));
            HashMap hashMap = new HashMap();
            hashMap.put("default_key", jSONObject);
            return Boolean.parseBoolean(cgdVar.f12820d.dq(hashMap).toString());
        } catch (Throwable unused) {
            return false;
        }
    }

    public String d() {
        return this.f2015d;
    }

    public List<dq> d(dq dqVar, JSONObject jSONObject, Map<String, Object> map) {
        return dq(jSONObject, map, dqVar.iw());
    }

    public dq dq() {
        if (this.ox) {
            dq(this.iw);
        }
        return this.s;
    }

    public dq dq(String str) {
        if (this.ox) {
            dq(this.iw);
        }
        return this.p.get(str);
    }

    public List<dq> dq(dq dqVar, JSONObject jSONObject, Map<String, Object> map) {
        return dq(jSONObject, map, dqVar.s());
    }

    public List<dq> ox(dq dqVar, JSONObject jSONObject, Map<String, Object> map) {
        List<dq.C0123dq> p = dqVar.p();
        ArrayList arrayList = new ArrayList();
        for (dq.C0123dq c0123dq : p) {
            if (c0123dq != null && dq(c0123dq.d(), jSONObject, map)) {
                arrayList.add(dq(c0123dq.dq()));
            }
        }
        return arrayList;
    }
}
