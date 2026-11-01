package com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq;

import android.app.Activity;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.component.reward.ox.d;
import com.bytedance.sdk.openadsdk.core.component.reward.ox.o;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.xi;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ox extends dq {
    public ox(Activity activity, j jVar, xi xiVar) {
        super(activity, jVar, xiVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq.dq, com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public d.dq dq(o oVar) {
        return ox(oVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public String dq() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(MediationConstant.REWARD_NAME, this.no);
            jSONObject.put(MediationConstant.REWARD_AMOUNT, this.ig);
            jSONObject.put("extra_info", this.dq);
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
        return (TextUtils.isEmpty(this.no) || TextUtils.isEmpty(this.ig)) ? false : true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public int mn() {
        return 1;
    }
}
