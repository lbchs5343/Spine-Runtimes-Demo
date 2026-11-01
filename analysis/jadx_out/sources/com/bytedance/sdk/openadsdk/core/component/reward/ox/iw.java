package com.bytedance.sdk.openadsdk.core.component.reward.ox;

import android.app.Activity;
import com.bytedance.sdk.openadsdk.core.component.reward.ox.d;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.xi;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class iw extends dq {
    private int cd;
    private int fw;

    public iw(Activity activity, j jVar, xi xiVar) {
        super(activity, jVar, xiVar);
        JSONObject d2;
        xi xiVar2 = this.kk;
        if (xiVar2 == null || (d2 = xiVar2.d()) == null) {
            return;
        }
        this.fw = d2.optInt("reduce_time");
        this.cd = d2.optInt("reduce_duration");
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.dq, com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public d.dq d(o oVar) {
        return ox(oVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public String dq() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("alert_title", "恭喜获得加速特权");
            jSONObject.put("reduce_time", this.fw + "s");
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject.toString();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public void dq(com.bytedance.sdk.openadsdk.core.widget.mn mnVar) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public float ia() {
        return 0.75f;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public boolean iw() {
        int i;
        xi xiVar = this.kk;
        return (xiVar == null || !xiVar.iw()) && this.fw > 0 && (i = this.cd) > 0 && this.f2630d < i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public int mn() {
        return 3;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public void p(o oVar) {
        if (oVar != null) {
            oVar.dq(this.fw);
        }
        this.kk.dq(true);
        if (oVar != null) {
            oVar.dq();
        }
    }
}
