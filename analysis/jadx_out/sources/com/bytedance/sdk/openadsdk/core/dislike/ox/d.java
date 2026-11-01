package com.bytedance.sdk.openadsdk.core.dislike.ox;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.f.d.d.iw;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d {

    /* renamed from: d, reason: collision with root package name */
    private final List<iw> f2806d = new ArrayList();
    private final int dq;
    private final String iw;
    private String mn;
    private String ox;
    private final boolean p;
    private final String s;

    public d(JSONObject jSONObject, ox oxVar) {
        int i = 0;
        this.dq = jSONObject.optInt("dislike_control", 0);
        this.p = jSONObject.optBoolean("close_on_dislike", false);
        String dq = oxVar != null ? oxVar.dq() : "";
        JSONArray optJSONArray = jSONObject.optJSONArray("filter_words");
        if (optJSONArray != null) {
            boolean z = false;
            while (i < optJSONArray.length()) {
                ox dq2 = ox.dq(optJSONArray.optJSONObject(i));
                if (dq2 != null && dq2.s()) {
                    this.f2806d.add(dq2);
                    if (!z) {
                        z = TextUtils.equals(dq2.dq(), dq);
                    }
                }
                i++;
            }
            i = z ? 1 : 0;
        }
        if (oxVar != null && i == 0) {
            this.f2806d.add(oxVar);
        }
        this.s = jSONObject.optString(MediationConstant.EXTRA_ADID);
        this.iw = jSONObject.optString("ext");
    }

    public String d() {
        return this.ox;
    }

    public void d(String str) {
        this.mn = str;
    }

    public List<iw> dq() {
        return this.f2806d;
    }

    public void dq(String str) {
        this.ox = str;
    }

    public void dq(JSONObject jSONObject) throws JSONException {
        jSONObject.put("dislike_control", this.dq);
        jSONObject.put("filter_words", iw());
        jSONObject.put("close_on_dislike", ia());
    }

    public boolean ia() {
        return this.p;
    }

    public JSONArray iw() {
        JSONObject mn;
        JSONArray jSONArray = new JSONArray();
        List<iw> list = this.f2806d;
        if (list != null) {
            for (iw iwVar : list) {
                if ((iwVar instanceof ox) && (mn = ((ox) iwVar).mn()) != null) {
                    jSONArray.put(mn);
                }
            }
        }
        return jSONArray;
    }

    public String mn() {
        return this.mn;
    }

    public String ox() {
        return this.s;
    }

    public String p() {
        return this.iw;
    }

    public boolean s() {
        return this.dq == 1;
    }
}
