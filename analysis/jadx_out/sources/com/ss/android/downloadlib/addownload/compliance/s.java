package com.ss.android.downloadlib.addownload.compliance;

import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.ss.android.downloadlib.mn.mp;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class s {

    /* renamed from: d, reason: collision with root package name */
    private dq f9137d;
    private boolean dq;
    private String ia;
    private String ig;
    private int iw;
    private String jy;
    private int kk;
    private String mn;
    private String mp;
    private long no;
    private String o;
    private int ox;
    private int p;
    private d q;
    private int s = 15;

    public static class d {

        /* renamed from: d, reason: collision with root package name */
        private String f9138d;
        private int dq;

        public void dq(int i) {
            this.dq = i;
        }

        public void dq(String str) {
            this.f9138d = str;
        }
    }

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        private String f9139d;
        private String dq;
        private String ia;
        private String ig;
        private String iw;
        private String kk;
        private List<C0213dq> mn;
        private String no;
        private String o;
        private long ox;
        private long p;
        private String s;

        /* renamed from: com.ss.android.downloadlib.addownload.compliance.s$dq$dq, reason: collision with other inner class name */
        public static class C0213dq {

            /* renamed from: d, reason: collision with root package name */
            private String f9140d;
            private String dq;

            public void d(String str) {
                this.f9140d = str;
            }

            public void dq(String str) {
                this.dq = str;
            }
        }

        public void d(long j) {
            this.p = j;
        }

        public void d(String str) {
            this.f9139d = str;
        }

        public void dq(long j) {
            this.ox = j;
        }

        public void dq(String str) {
            this.dq = str;
        }

        public void dq(List<C0213dq> list) {
            this.mn = list;
        }

        public void ia(String str) {
            this.no = str;
        }

        public void iw(String str) {
            this.kk = str;
        }

        public void kk(String str) {
            this.ig = str;
        }

        public void mn(String str) {
            this.o = str;
        }

        public void ox(String str) {
            this.s = str;
        }

        public void p(String str) {
            this.iw = str;
        }

        public void s(String str) {
            this.ia = str;
        }
    }

    private static d d(JSONObject jSONObject) {
        d dVar = new d();
        try {
            JSONObject optJSONObject = jSONObject.optJSONObject("status");
            if (optJSONObject == null) {
                return dVar;
            }
            dVar.dq(optJSONObject.optInt("status"));
            dVar.dq(optJSONObject.optString("message"));
            return dVar;
        } catch (Exception e2) {
            com.ss.android.downloadlib.s.ox.dq().dq(e2, "ComplianceResult getStatus");
            return dVar;
        }
    }

    private static JSONObject d(d dVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (dVar != null) {
            jSONObject.putOpt("status", Integer.valueOf(dVar.dq));
            jSONObject.putOpt("message", dVar.f9138d);
        }
        return jSONObject;
    }

    private static JSONObject d(dq dqVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (dqVar != null) {
            jSONObject.putOpt("app_name", dqVar.dq);
            jSONObject.putOpt("version_name", dqVar.f9139d);
            jSONObject.putOpt("update_time", Long.valueOf(dqVar.ox));
            jSONObject.putOpt("size", Long.valueOf(dqVar.p));
            jSONObject.putOpt("developer_name", dqVar.s);
            jSONObject.putOpt("policy_url", dqVar.kk);
            jSONObject.putOpt("icon_url", dqVar.o);
            jSONObject.putOpt("download_url", dqVar.no);
            jSONObject.putOpt("permissions", ox(dqVar));
            jSONObject.putOpt("permission_classify_url", dqVar.ia);
            jSONObject.putOpt("desc_url", dqVar.ig);
        }
        return jSONObject;
    }

    private static dq dq(JSONObject jSONObject) {
        dq dqVar = new dq();
        try {
            JSONObject optJSONObject = jSONObject.optJSONObject("auth_info");
            if (optJSONObject != null) {
                dqVar.dq(optJSONObject.optString("app_name"));
                dqVar.d(optJSONObject.optString("version_name"));
                dqVar.dq(mp.dq(optJSONObject, "update_time"));
                dqVar.d(mp.dq(optJSONObject, "size"));
                dqVar.ox(optJSONObject.optString("developer_name"));
                dqVar.p(optJSONObject.optString("package_name"));
                JSONArray optJSONArray = optJSONObject.optJSONArray("permissions");
                if (optJSONArray != null) {
                    ArrayList arrayList = new ArrayList();
                    dq(optJSONArray, arrayList);
                    dqVar.dq(arrayList);
                }
                dqVar.s(optJSONObject.optString("permission_classify_url"));
                dqVar.iw(optJSONObject.optString("policy_url"));
                dqVar.mn(optJSONObject.optString("icon_url"));
                dqVar.ia(optJSONObject.optString("download_url"));
                dqVar.kk(optJSONObject.optString("desc_url"));
            }
            return dqVar;
        } catch (Exception e2) {
            com.ss.android.downloadlib.s.ox.dq().dq(e2, "ComplianceResult getAuthInfo");
            return dqVar;
        }
    }

    public static String dq(s sVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("show_auth", Integer.valueOf(sVar.dq ? 1 : 0));
            jSONObject.putOpt("download_permit", Integer.valueOf(sVar.ox));
            jSONObject.putOpt("appstore_permit", Integer.valueOf(sVar.p));
            jSONObject.putOpt("market_online_status", Integer.valueOf(sVar.s));
            jSONObject.putOpt("hijack_permit", Integer.valueOf(sVar.iw));
            jSONObject.putOpt("package_name", sVar.mn);
            jSONObject.putOpt("hijack_url", sVar.ia);
            jSONObject.putOpt(PluginConstants.KEY_ERROR_CODE, Integer.valueOf(sVar.kk));
            jSONObject.putOpt("message", sVar.o);
            jSONObject.putOpt("request_duration", Long.valueOf(sVar.no));
            jSONObject.putOpt("auth_info", d(sVar.f9137d));
            jSONObject.putOpt("status", d(sVar.q));
            jSONObject.putOpt("back_web_url", sVar.jy);
            jSONObject.putOpt("hw_app_id", sVar.ig);
            jSONObject.putOpt("deep_link", sVar.mp);
        } catch (JSONException e2) {
            com.ss.android.downloadlib.s.ox.dq().dq(e2, "ComplianceResult toJson");
        }
        return jSONObject.toString();
    }

    private static void dq(JSONArray jSONArray, List<dq.C0213dq> list) {
        if (jSONArray == null || list == null) {
            return;
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i);
            if (optJSONObject != null) {
                dq.C0213dq c0213dq = new dq.C0213dq();
                c0213dq.dq(optJSONObject.optString("permission_name"));
                c0213dq.d(optJSONObject.optString("permission_desc"));
                list.add(c0213dq);
            }
        }
    }

    public static s mn(String str) {
        s sVar = new s();
        try {
            JSONObject jSONObject = new JSONObject(str);
            dq dq2 = dq(jSONObject);
            d d2 = d(jSONObject);
            sVar.dq(dq2);
            sVar.dq(d2);
            sVar.dq(jSONObject.optInt("show_auth", 0) == 1);
            sVar.dq(jSONObject.optInt("download_permit"));
            sVar.d(jSONObject.optInt("appstore_permit"));
            sVar.ox(jSONObject.optInt("market_online_status", 15));
            sVar.p(jSONObject.optInt("hijack_permit"));
            sVar.dq(jSONObject.optString("package_name"));
            sVar.d(jSONObject.optString("hijack_url"));
            sVar.s(jSONObject.optInt(PluginConstants.KEY_ERROR_CODE));
            sVar.ox(jSONObject.optString("message"));
            sVar.dq(jSONObject.optLong("request_duration", 0L));
            sVar.p(jSONObject.optString("back_web_url"));
            sVar.s(jSONObject.optString("hw_app_id"));
            sVar.iw(jSONObject.optString("deep_link"));
            return sVar;
        } catch (Exception e2) {
            com.ss.android.downloadlib.s.ox.dq().dq(e2, "ComplianceResult fromJson");
            return sVar;
        }
    }

    private static JSONArray ox(dq dqVar) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        List<dq.C0213dq> list = dqVar.mn;
        if (list != null && list.size() > 0) {
            for (dq.C0213dq c0213dq : list) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("permission_name", c0213dq.dq);
                jSONObject.putOpt("permission_desc", c0213dq.f9140d);
                jSONArray.put(jSONObject);
            }
        }
        return jSONArray;
    }

    public String d() {
        return this.mp;
    }

    public void d(int i) {
        this.p = i;
    }

    public void d(String str) {
        this.ia = str;
    }

    public int dq() {
        return this.kk;
    }

    public void dq(int i) {
        this.ox = i;
    }

    public void dq(long j) {
        this.no = j;
    }

    public void dq(d dVar) {
        this.q = dVar;
    }

    public void dq(dq dqVar) {
        this.f9137d = dqVar;
    }

    public void dq(String str) {
        this.mn = str;
    }

    public void dq(boolean z) {
        this.dq = z;
    }

    public void iw(String str) {
        this.mp = str;
    }

    public void ox(int i) {
        this.s = i;
    }

    public void ox(String str) {
        this.o = str;
    }

    public void p(int i) {
        this.iw = i;
    }

    public void p(String str) {
        this.jy = str;
    }

    public void s(int i) {
        this.kk = i;
    }

    public void s(String str) {
        this.ig = str;
    }

    public String toString() {
        return dq(this);
    }
}
