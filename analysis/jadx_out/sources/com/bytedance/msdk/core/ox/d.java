package com.bytedance.msdk.core.ox;

import android.text.TextUtils;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class d {

    /* renamed from: d, reason: collision with root package name */
    private JSONObject f1002d;
    public List<Integer> dq;
    private String iw;
    private int mn;
    private int ox;
    private String p;
    private String s;

    public d(JSONObject jSONObject) {
        JSONArray optJSONArray = jSONObject.optJSONArray("behavior_state");
        if (optJSONArray != null) {
            this.dq = new LinkedList();
            for (int i = 0; i < optJSONArray.length(); i++) {
                try {
                    this.dq.add(Integer.valueOf(optJSONArray.getInt(i)));
                } catch (JSONException e2) {
                    throw new RuntimeException(e2);
                }
            }
        }
        JSONObject optJSONObject = jSONObject.optJSONObject("rule_excs");
        if (optJSONObject != null) {
            this.mn = optJSONObject.optInt("condition");
            JSONObject optJSONObject2 = optJSONObject.optJSONObject("perform");
            this.f1002d = optJSONObject2;
            if (optJSONObject2 != null) {
                this.ox = optJSONObject2.optInt("condition");
                this.p = this.f1002d.optString("opt");
                this.s = this.f1002d.optString("rule_id");
                this.iw = this.f1002d.optString("rule_timestamp");
            }
        }
    }

    public double d(String str, String str2) {
        JSONObject jSONObject;
        JSONObject optJSONObject;
        JSONObject optJSONObject2;
        JSONObject optJSONObject3;
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str) || (jSONObject = this.f1002d) == null || (optJSONObject = jSONObject.optJSONObject("prime_rits")) == null || (optJSONObject2 = optJSONObject.optJSONObject(str2)) == null || (optJSONObject3 = optJSONObject2.optJSONObject("srr")) == null) {
            return 0.0d;
        }
        return optJSONObject3.optDouble(str, 0.0d);
    }

    public int d() {
        return this.mn;
    }

    public double dq(String str, String str2) {
        JSONObject jSONObject;
        JSONObject optJSONObject;
        JSONObject optJSONObject2;
        JSONObject optJSONObject3;
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str) || (jSONObject = this.f1002d) == null || (optJSONObject = jSONObject.optJSONObject("prime_rits")) == null || (optJSONObject2 = optJSONObject.optJSONObject(str2)) == null || (optJSONObject3 = optJSONObject2.optJSONObject("ssr")) == null) {
            return 0.0d;
        }
        return optJSONObject3.optDouble(str, 0.0d);
    }

    public int dq() {
        return this.ox;
    }

    public boolean dq(int i) {
        List<Integer> list = this.dq;
        if (list != null) {
            return list.contains(Integer.valueOf(i));
        }
        return false;
    }

    public boolean dq(String str) {
        JSONObject optJSONObject;
        JSONObject optJSONObject2 = this.f1002d.optJSONObject("prime_rits");
        if (optJSONObject2 == null || (optJSONObject = optJSONObject2.optJSONObject(str)) == null) {
            return false;
        }
        return (optJSONObject.optJSONObject("ssr") == null && optJSONObject.optJSONObject("srr") == null) ? false : true;
    }

    public String iw() {
        return this.p;
    }

    public boolean mn() {
        return "1".equals(this.p) || "2".equals(this.p) || "3".equals(this.p) || "4".equals(this.p) || "5".equals(this.p);
    }

    public String ox() {
        return this.s;
    }

    public String p() {
        return this.iw;
    }

    public JSONObject s() {
        return this.f1002d;
    }
}
