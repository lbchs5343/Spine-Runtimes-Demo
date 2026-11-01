package com.bytedance.sdk.component.adexpress.dq.ox;

import android.text.TextUtils;
import android.util.Pair;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.abn;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private String f1676d;
    private String dq;
    private Map<String, dq> iw = new ConcurrentHashMap();
    private String ox;
    private List<C0104dq> p;
    private d s;

    public static class d {

        /* renamed from: d, reason: collision with root package name */
        private String f1677d;
        private String dq;
        private List<Pair<String, String>> ox;

        public List<Pair<String, String>> d() {
            return this.ox;
        }

        public void d(String str) {
            this.f1677d = str;
        }

        public String dq() {
            return this.dq;
        }

        public void dq(String str) {
            this.dq = str;
        }

        public void dq(List<Pair<String, String>> list) {
            this.ox = list;
        }
    }

    /* renamed from: com.bytedance.sdk.component.adexpress.dq.ox.dq$dq, reason: collision with other inner class name */
    public static class C0104dq {

        /* renamed from: d, reason: collision with root package name */
        private String f1678d;
        private String dq;
        private int ox;

        public String d() {
            return this.f1678d;
        }

        public void d(String str) {
            this.f1678d = str;
        }

        public String dq() {
            return this.dq;
        }

        public void dq(int i) {
            this.ox = i;
        }

        public void dq(String str) {
            this.dq = str;
        }

        public boolean equals(Object obj) {
            String str;
            if (!(obj instanceof C0104dq)) {
                return super.equals(obj);
            }
            String str2 = this.dq;
            if (str2 != null) {
                C0104dq c0104dq = (C0104dq) obj;
                if (str2.equals(c0104dq.dq()) && (str = this.f1678d) != null && str.equals(c0104dq.d())) {
                    return true;
                }
            }
            return false;
        }

        public int ox() {
            return this.ox;
        }
    }

    public static dq dq(JSONObject jSONObject) {
        JSONObject optJSONObject;
        if (jSONObject == null) {
            return null;
        }
        dq dqVar = new dq();
        dqVar.dq(jSONObject.optString(abn.EXTRA_UA_APP_NAME));
        dqVar.d(jSONObject.optString("version"));
        dqVar.ox(jSONObject.optString("main"));
        JSONArray optJSONArray = jSONObject.optJSONArray("resources");
        ArrayList arrayList = new ArrayList();
        if (optJSONArray != null && optJSONArray.length() > 0) {
            for (int i = 0; i < optJSONArray.length(); i++) {
                JSONObject optJSONObject2 = optJSONArray.optJSONObject(i);
                C0104dq c0104dq = new C0104dq();
                c0104dq.dq(optJSONObject2.optString(abn.EXTRA_URL));
                c0104dq.d(optJSONObject2.optString(TTDownloadField.TT_MD5));
                c0104dq.dq(optJSONObject2.optInt("level"));
                arrayList.add(c0104dq);
            }
        }
        dqVar.dq(arrayList);
        try {
            JSONObject optJSONObject3 = jSONObject.optJSONObject("engines");
            if (optJSONObject3 != null) {
                Iterator<String> keys = optJSONObject3.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    dq dq = dq(optJSONObject3.optJSONObject(next));
                    if (dq != null) {
                        dqVar.dq().put(next, dq);
                    }
                }
            }
        } catch (Exception e2) {
            e2.getMessage();
        }
        if (jSONObject.has("resources_archive") && (optJSONObject = jSONObject.optJSONObject("resources_archive")) != null) {
            d dVar = new d();
            dVar.dq(optJSONObject.optString(abn.EXTRA_URL));
            dVar.d(optJSONObject.optString(TTDownloadField.TT_MD5));
            JSONObject optJSONObject4 = optJSONObject.optJSONObject("map");
            if (optJSONObject4 != null) {
                Iterator<String> keys2 = optJSONObject4.keys();
                ArrayList arrayList2 = new ArrayList();
                while (keys2.hasNext()) {
                    String next2 = keys2.next();
                    arrayList2.add(new Pair(next2, optJSONObject4.optString(next2)));
                }
                dVar.dq(arrayList2);
            }
            dqVar.dq(dVar);
        }
        if (dqVar.iw()) {
            return dqVar;
        }
        return null;
    }

    public static dq p(String str) {
        if (str == null) {
            return null;
        }
        try {
            return dq(new JSONObject(str));
        } catch (Exception unused) {
            return null;
        }
    }

    public String d() {
        return this.dq;
    }

    public void d(String str) {
        this.f1676d = str;
    }

    public Map<String, dq> dq() {
        return this.iw;
    }

    public void dq(d dVar) {
        this.s = dVar;
    }

    public void dq(String str) {
        this.dq = str;
    }

    public void dq(List<C0104dq> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        this.p = list;
    }

    public List<C0104dq> getResources() {
        if (this.p == null) {
            this.p = new ArrayList();
        }
        return this.p;
    }

    public String ia() {
        JSONObject mn;
        if (!iw() || (mn = mn()) == null) {
            return null;
        }
        return mn.toString();
    }

    public boolean iw() {
        return (TextUtils.isEmpty(p()) || TextUtils.isEmpty(ox()) || TextUtils.isEmpty(d())) ? false : true;
    }

    public JSONObject mn() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.putOpt(abn.EXTRA_UA_APP_NAME, d());
            jSONObject.putOpt("version", ox());
            jSONObject.putOpt("main", p());
            JSONArray jSONArray = new JSONArray();
            if (getResources() != null) {
                for (C0104dq c0104dq : getResources()) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.putOpt(abn.EXTRA_URL, c0104dq.dq());
                    jSONObject2.putOpt(TTDownloadField.TT_MD5, c0104dq.d());
                    jSONObject2.putOpt("level", Integer.valueOf(c0104dq.ox()));
                    jSONArray.put(jSONObject2);
                }
            }
            jSONObject.putOpt("resources", jSONArray);
            if (!this.iw.isEmpty()) {
                JSONObject jSONObject3 = new JSONObject();
                boolean z = false;
                for (String str : this.iw.keySet()) {
                    dq dqVar = this.iw.get(str);
                    if (dqVar != null) {
                        jSONObject3.put(str, dqVar.mn());
                        z = true;
                    }
                }
                if (z) {
                    jSONObject.put("engines", jSONObject3);
                }
            }
            d s = s();
            if (s != null) {
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put(abn.EXTRA_URL, s.dq);
                jSONObject4.put(TTDownloadField.TT_MD5, s.f1677d);
                JSONObject jSONObject5 = new JSONObject();
                List<Pair<String, String>> d2 = s.d();
                if (d2 != null) {
                    for (Pair<String, String> pair : d2) {
                        jSONObject5.put((String) pair.first, pair.second);
                    }
                }
                jSONObject4.put("map", jSONObject5);
                jSONObject.putOpt("resources_archive", jSONObject4);
            }
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    public String ox() {
        return this.f1676d;
    }

    public void ox(String str) {
        this.ox = str;
    }

    public String p() {
        return this.ox;
    }

    public d s() {
        return this.s;
    }
}
