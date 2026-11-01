package com.bytedance.sdk.openadsdk.core.component.reward.ox;

import android.app.Activity;
import com.bytedance.sdk.openadsdk.core.component.reward.ox.d;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.xi;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ig extends dq {
    public ig(Activity activity, j jVar, xi xiVar) {
        super(activity, jVar, xiVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.dq, com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public d.dq d(o oVar) {
        return ox(oVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public String dq() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("alert_title", "距离领取奖励还剩");
            jSONObject.put("number", this.dq);
            jSONObject.put("number_unit", "秒");
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject.toString();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public float ia() {
        return 0.75f;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public int mn() {
        return 1;
    }
}
