package com.bytedance.sdk.openadsdk.core.ugeno.mn;

import android.text.TextUtils;
import com.bytedance.sdk.component.adexpress.dq.ox.dq;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.abn;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d extends com.bytedance.sdk.component.adexpress.dq.ox.dq {
    public d() {
    }

    public d(com.bytedance.sdk.component.adexpress.dq.ox.dq dqVar) {
        if (dqVar != null) {
            dq(dqVar.d());
            d(dqVar.ox());
            dq(dqVar.getResources());
        }
    }

    public static d d(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        d dVar = new d();
        dVar.dq(jSONObject.optString(abn.EXTRA_UA_APP_NAME));
        dVar.d(jSONObject.optString("version"));
        JSONArray optJSONArray = jSONObject.optJSONArray("resources");
        ArrayList arrayList = new ArrayList();
        if (optJSONArray != null && optJSONArray.length() > 0) {
            for (int i = 0; i < optJSONArray.length(); i++) {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                if (optJSONObject != null) {
                    dq.C0104dq c0104dq = new dq.C0104dq();
                    c0104dq.dq(optJSONObject.optString(abn.EXTRA_URL));
                    c0104dq.d(optJSONObject.optString(TTDownloadField.TT_MD5));
                    c0104dq.dq(optJSONObject.optInt("level"));
                    arrayList.add(c0104dq);
                }
            }
        }
        dVar.dq(arrayList);
        if (dVar.iw()) {
            return dVar;
        }
        return null;
    }

    public static d s(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return d(new JSONObject(str));
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dq.ox.dq
    public String ia() {
        if (!iw()) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.putOpt(abn.EXTRA_UA_APP_NAME, d());
            jSONObject.putOpt("version", ox());
            JSONArray jSONArray = new JSONArray();
            if (getResources() != null) {
                for (dq.C0104dq c0104dq : getResources()) {
                    if (c0104dq != null) {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.putOpt(abn.EXTRA_URL, c0104dq.dq());
                        jSONObject2.putOpt(TTDownloadField.TT_MD5, c0104dq.d());
                        jSONObject2.putOpt("level", Integer.valueOf(c0104dq.ox()));
                        jSONArray.put(jSONObject2);
                    }
                }
            }
            jSONObject.putOpt("resources", jSONArray);
            return jSONObject.toString();
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dq.ox.dq
    public boolean iw() {
        return (TextUtils.isEmpty(ox()) || TextUtils.isEmpty(d())) ? false : true;
    }
}
