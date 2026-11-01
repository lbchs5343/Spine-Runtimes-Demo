package com.bytedance.sdk.openadsdk.core.r;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ox {

    /* renamed from: d, reason: collision with root package name */
    private String f3503d;
    private String dq;
    private float ia;
    private String iw;
    private String kk;
    private String mn;
    private JSONArray no;
    private String o;
    private String ox;
    private List<dq> p;
    private String s;

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        private final String f3504d;
        private final String dq;

        public dq(JSONObject jSONObject) {
            this.dq = jSONObject.optString("permission_name");
            this.f3504d = jSONObject.optString("permission_desc");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public JSONObject dq() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("permission_desc", this.f3504d);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            try {
                jSONObject.put("permission_name", this.dq);
            } catch (JSONException e3) {
                e3.printStackTrace();
            }
            return jSONObject;
        }
    }

    public ox(JSONObject jSONObject) {
        try {
            JSONObject optJSONObject = jSONObject.optJSONObject("package");
            this.dq = optJSONObject.optString("app_name");
            this.f3503d = optJSONObject.optString("version_name");
            this.ox = optJSONObject.optString("developer_name");
            this.p = new ArrayList();
            JSONArray optJSONArray = optJSONObject.optJSONArray("permissions");
            if (optJSONArray != null) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    this.p.add(new dq(optJSONArray.optJSONObject(i)));
                }
            }
            this.s = optJSONObject.optString("policy_url");
            String optString = optJSONObject.optString("package");
            this.iw = optString;
            if (TextUtils.isEmpty(optString)) {
                this.iw = optJSONObject.optString("package_name");
            }
            this.mn = optJSONObject.optString("icon_url");
            this.kk = optJSONObject.optString("desc_url");
            this.o = optJSONObject.optString("reg_number");
        } catch (Throwable unused) {
        }
    }

    public String d() {
        return this.ox;
    }

    public String dq() {
        return this.dq;
    }

    public void dq(float f2) {
        this.ia = f2;
    }

    public void dq(JSONArray jSONArray) {
        this.no = jSONArray;
    }

    public String iw() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("app_name", this.dq);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        try {
            jSONObject.put("app_version", this.f3503d);
        } catch (JSONException e3) {
            e3.printStackTrace();
        }
        try {
            jSONObject.put("developer_name", this.ox);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        try {
            jSONObject.put("package_name", this.iw);
        } catch (JSONException e5) {
            e5.printStackTrace();
        }
        JSONArray jSONArray = new JSONArray();
        Iterator<dq> it = this.p.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next().dq());
        }
        try {
            jSONObject.put("permissions", jSONArray);
        } catch (JSONException e6) {
            e6.printStackTrace();
        }
        try {
            jSONObject.put("privacy_policy_url", this.s);
        } catch (JSONException e7) {
            e7.printStackTrace();
        }
        try {
            jSONObject.put("score", this.ia);
        } catch (JSONException e8) {
            e8.printStackTrace();
        }
        try {
            jSONObject.put("creative_tags", this.no);
        } catch (JSONException e9) {
            e9.printStackTrace();
        }
        try {
            jSONObject.put("desc_url", this.kk);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        try {
            jSONObject.put("reg_number", this.o);
        } catch (JSONException e11) {
            e11.printStackTrace();
        }
        try {
            jSONObject.put("icon_url", this.mn);
        } catch (JSONException e12) {
            e12.printStackTrace();
        }
        return jSONObject.toString();
    }

    public String ox() {
        return this.mn;
    }

    public String p() {
        return this.kk;
    }

    public boolean s() {
        List<dq> list;
        return (TextUtils.isEmpty(this.dq) || TextUtils.isEmpty(this.f3503d) || TextUtils.isEmpty(d()) || (list = this.p) == null || list.size() == 0 || TextUtils.isEmpty(this.s) || TextUtils.isEmpty(this.kk)) ? false : true;
    }
}
