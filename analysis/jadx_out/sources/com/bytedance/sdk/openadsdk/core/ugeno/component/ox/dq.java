package com.bytedance.sdk.openadsdk.core.ugeno.component.ox;

import android.content.Context;
import android.text.TextUtils;
import g.acb;
import g.app;
import g.dlv;
import g.fzc;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq extends app {
    public dq(Context context) {
        super(context);
    }

    public void dq(long j, long j2) {
        fzc fzcVar;
        JSONObject jSONObject;
        if (!dq(12) || (fzcVar = this.bf.get(12)) == null || (jSONObject = fzcVar.f17691d) == null) {
            return;
        }
        jSONObject.optString("type");
        JSONArray optJSONArray = jSONObject.optJSONArray("actions");
        if (optJSONArray == null || optJSONArray.length() <= 0) {
            return;
        }
        for (int i = 0; i < optJSONArray.length(); i++) {
            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
            if (optJSONObject != null) {
                String optString = optJSONObject.optString("type");
                int optInt = optJSONObject.optInt("progress") * 1000;
                if (optInt > j2) {
                    optInt = (int) j2;
                }
                if (j == optInt && TextUtils.equals(optString, "onShow")) {
                    dlv d2 = d(this);
                    String optString2 = optJSONObject.optString("nodeId");
                    if (d2 != null) {
                        d2.ox(optString2).d(0);
                    }
                }
            }
        }
    }

    @Override // g.dlv
    public void p() {
        super.p();
    }

    @Override // g.dlv
    /* renamed from: uh, reason: merged with bridge method [inline-methods] */
    public acb ox() {
        acb acbVar = new acb(this.s);
        acbVar.f9961a = this;
        return acbVar;
    }
}
