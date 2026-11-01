package com.bytedance.sdk.component.adexpress.dynamic.ox;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class p {

    /* renamed from: d, reason: collision with root package name */
    public String f1765d;
    public List<dq> dq;
    public String ox;
    public String p;

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        public JSONObject f1766d;
        public int dq;
    }

    public static p dq(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        p pVar = new p();
        String optString = jSONObject.optString("custom_components");
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(optString);
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i);
                if (optJSONObject != null) {
                    dq dqVar = new dq();
                    dqVar.dq = optJSONObject.optInt(TTDownloadField.TT_ID);
                    dqVar.f1766d = new JSONObject(optJSONObject.optString("componentLayout"));
                    arrayList.add(dqVar);
                }
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        pVar.dq = arrayList;
        pVar.f1765d = jSONObject.optString("diff_data");
        pVar.ox = jSONObject.optString("style_diff");
        pVar.p = jSONObject.optString("tag_diff");
        return pVar;
    }
}
