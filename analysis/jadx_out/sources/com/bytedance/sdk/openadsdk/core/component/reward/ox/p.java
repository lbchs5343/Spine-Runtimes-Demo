package com.bytedance.sdk.openadsdk.core.component.reward.ox;

import android.app.Activity;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.component.reward.ox.d;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.xi;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class p extends dq {
    private int cd;
    private int fw;
    private String gh;
    private String r;

    public p(Activity activity, j jVar, xi xiVar) {
        super(activity, jVar, xiVar);
        JSONObject optJSONObject;
        JSONObject d2 = xiVar.d();
        if (d2 == null || (optJSONObject = d2.optJSONObject("coupon")) == null) {
            return;
        }
        this.fw = optJSONObject.optInt("amount");
        this.cd = optJSONObject.optInt("threshold");
        this.gh = optJSONObject.optString("start_time");
        this.r = optJSONObject.optString("expire_time");
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.dq, com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public d.dq d(o oVar) {
        return ox(oVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public String dq() {
        String str;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("amount", this.fw);
            jSONObject.put("threshold", "满" + this.cd + "元可用");
            if (TextUtils.isEmpty(this.gh)) {
                if (TextUtils.isEmpty(this.r)) {
                    str = "领取当日起30分钟内有效";
                } else {
                    str = "有效期至" + this.r;
                }
            } else if (TextUtils.isEmpty(this.r)) {
                str = "有效期至" + this.gh;
            } else {
                str = "有效期" + this.gh + "至" + this.r;
            }
            jSONObject.put("start_time", this.gh);
            jSONObject.put("expire_text", str);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject.toString();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public float ia() {
        return 0.55f;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public boolean iw() {
        return (this.fw == 0 || this.cd == 0) ? false : true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public int mn() {
        return 6;
    }
}
