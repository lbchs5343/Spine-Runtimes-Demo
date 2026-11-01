package com.bytedance.msdk.dq.ox;

import android.content.Context;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.u;
import com.bytedance.sdk.openadsdk.f.d.ox.d;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Map;

/* loaded from: classes.dex */
public class iw extends com.bytedance.msdk.dq.dq {
    private void d(u uVar, d.dq dqVar) {
        new p().dq(iw(), uVar, dqVar.dq(), this);
    }

    private void dq(u uVar, d.dq dqVar) {
        if (this.ox.jy() > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            dqVar.dq(this.ox.q()).d(this.ox.jy());
        } else {
            dqVar.dq(this.ox.q()).d(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        }
        new s().dq(iw(), uVar, dqVar.dq(), this);
    }

    @Override // com.bytedance.msdk.dq.dq
    public void dq(Context context, Map<String, Object> map) {
        u dq;
        if (this.ox == null) {
            dq(new com.bytedance.msdk.api.dq("load ad fail adSlot is null"));
            return;
        }
        if (map == null || (dq = dq(context.getApplicationContext())) == null) {
            return;
        }
        d.dq dq2 = d.dq(this.ox, no(), this.dq, q(), kk(), false);
        int e2 = this.ox.e();
        int kx = this.ox.kx();
        if (e2 > 0 && kx > 0) {
            dq2.dq(d.dq(context.getApplicationContext(), e2)).d(d.dq(context.getApplicationContext(), kx));
        }
        Object obj = map.get("tt_ad_origin_type");
        if (obj == null) {
            dq(new com.bytedance.msdk.api.dq("渲染类型错误"));
            return;
        }
        int intValue = ((Integer) obj).intValue();
        if (intValue == 1) {
            dq(dq, dq2);
        } else if (intValue == 2) {
            d(dq, dq2);
        } else {
            dq(new com.bytedance.msdk.api.dq("渲染类型错误"));
        }
    }

    @Override // com.bytedance.msdk.dq.dq
    public String fw() {
        return MediationConstant.ADN_PANGLE;
    }

    @Override // com.bytedance.msdk.dq.dq
    public String r() {
        try {
            return com.bytedance.sdk.gromore.init.dq.ox();
        } catch (Exception unused) {
            return "0.0";
        }
    }
}
