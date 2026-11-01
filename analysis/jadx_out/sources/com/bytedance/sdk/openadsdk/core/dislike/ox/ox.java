package com.bytedance.sdk.openadsdk.core.dislike.ox;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.f.d.d.iw;
import g.abn;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ox extends iw {

    /* renamed from: d, reason: collision with root package name */
    private String f2807d;
    private String dq;
    private boolean ox;
    private List<iw> p;

    public ox() {
        super(null);
    }

    public ox(String str, String str2) {
        super(null);
        this.dq = str;
        this.f2807d = str2;
    }

    public static ox dq(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            ox oxVar = new ox();
            oxVar.dq(jSONObject.optString(TTDownloadField.TT_ID));
            oxVar.d(jSONObject.optString(abn.EXTRA_UA_APP_NAME));
            oxVar.dq(jSONObject.optBoolean("is_selected"));
            JSONArray optJSONArray = jSONObject.optJSONArray("options");
            if (optJSONArray != null && optJSONArray.length() > 0) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    ox dq = dq(optJSONArray.optJSONObject(i));
                    if (dq != null && dq.s()) {
                        oxVar.dq(dq);
                    }
                }
            }
            return oxVar;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.iw
    public String d() {
        return this.f2807d;
    }

    public void d(String str) {
        this.f2807d = str;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.iw
    public String dq() {
        return this.dq;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.iw
    public void dq(iw iwVar) {
        if (iwVar == null) {
            return;
        }
        if (this.p == null) {
            this.p = new ArrayList();
        }
        this.p.add(iwVar);
    }

    public void dq(String str) {
        this.dq = str;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.iw
    public void dq(boolean z) {
        this.ox = z;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.iw
    public boolean iw() {
        List<iw> list = this.p;
        return (list == null || list.isEmpty()) ? false : true;
    }

    public JSONObject mn() {
        try {
            if (!s()) {
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(TTDownloadField.TT_ID, dq());
            jSONObject.put(abn.EXTRA_UA_APP_NAME, d());
            jSONObject.put("is_selected", ox());
            if (iw()) {
                JSONArray jSONArray = new JSONArray();
                for (iw iwVar : p()) {
                    if (iwVar instanceof ox) {
                        jSONArray.put(((ox) iwVar).mn());
                    }
                }
                if (jSONArray.length() > 0) {
                    jSONObject.put("options", jSONArray);
                }
            }
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.iw
    public boolean ox() {
        return this.ox;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.iw
    public List<iw> p() {
        return this.p;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.iw
    public boolean s() {
        return (TextUtils.isEmpty(this.dq) || TextUtils.isEmpty(this.f2807d)) ? false : true;
    }
}
