package com.bytedance.sdk.openadsdk.core.f.dq;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.core.r.j;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class le extends com.bytedance.sdk.component.dq.s<JSONObject, JSONObject> {

    /* renamed from: d, reason: collision with root package name */
    private j f2859d;
    private Context dq;

    public le(Context context, j jVar) {
        this.dq = context;
        this.f2859d = jVar;
    }

    public static void dq(com.bytedance.sdk.component.dq.fw fwVar, Context context, j jVar) {
        fwVar.dq("openNewCommonWebPage", (com.bytedance.sdk.component.dq.s<?, ?>) new le(context, jVar));
    }

    @Override // com.bytedance.sdk.component.dq.s
    public JSONObject dq(JSONObject jSONObject, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
        try {
            String optString = jSONObject.optString("web_url");
            String optString2 = jSONObject.optString("web_title");
            if (TextUtils.isEmpty(optString)) {
                return null;
            }
            if (TextUtils.isEmpty(optString2)) {
                optString2 = "";
            }
            TTDelegateActivity.p(this.dq, optString, optString2);
            return null;
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ig.p("OpenNewWebPageMethod", "method:" + th.getMessage());
            return null;
        }
    }
}
