package com.bytedance.sdk.openadsdk.core.component.reward.ox;

import android.app.Activity;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.component.reward.ox.d;
import com.bytedance.sdk.openadsdk.core.r.e;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.xi;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class kk extends dq {
    private String fw;

    public kk(Activity activity, j jVar, xi xiVar) {
        super(activity, jVar, xiVar);
        e np = this.mn.np();
        if (np != null) {
            this.fw = np.dq();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.dq, com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public d.dq d(o oVar) {
        return ox(oVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public String dq() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("red_pack_amount", this.fw);
            boolean z = false;
            try {
                if (Double.parseDouble(this.fw) != 0.0d) {
                    z = true;
                }
            } catch (NumberFormatException unused) {
            }
            jSONObject.put("is_display_unit", z);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject.toString();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public float ia() {
        return 0.6f;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public boolean iw() {
        String str = this.fw;
        return (str == null || str.equals("0") || TextUtils.isEmpty(this.fw)) ? false : true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public int mn() {
        return 5;
    }
}
