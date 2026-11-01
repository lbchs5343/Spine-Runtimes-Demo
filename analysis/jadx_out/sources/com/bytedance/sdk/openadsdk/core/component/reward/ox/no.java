package com.bytedance.sdk.openadsdk.core.component.reward.ox;

import android.app.Activity;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.component.reward.ox.d;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.uh;
import com.bytedance.sdk.openadsdk.core.r.xi;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class no extends dq {
    public no(Activity activity, j jVar, xi xiVar) {
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
            jSONObject.put("alert_title", "继续观看 " + this.dq + "s 可获得奖励");
            jSONObject.put("number", this.ig);
            jSONObject.put("number_unit", this.no);
            jSONObject.put("remain_time", this.dq);
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
    public boolean iw() {
        if (uh.ox(this.mn)) {
            return (Integer.parseInt(this.ig) == 0 || TextUtils.isEmpty(this.ig) || TextUtils.isEmpty(this.no)) ? false : true;
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public int mn() {
        return 2;
    }
}
