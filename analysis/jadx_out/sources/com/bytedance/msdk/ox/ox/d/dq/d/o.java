package com.bytedance.msdk.ox.ox.d.dq.d;

import android.content.Context;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.u;
import com.bytedance.sdk.openadsdk.f.d.ox.d;
import java.util.Map;

/* loaded from: classes.dex */
public class o extends d {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.msdk.api.dq.d f1164d;
    private com.bytedance.msdk.ox.s.d.d ox;

    public o(com.bytedance.msdk.ox.dq.d dVar) {
        super(dVar);
    }

    private void d(u uVar, d.dq dqVar) {
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "PangleNativeLoader_loadNativeAd_renderControl:" + this.f1164d.f());
        dqVar.ox(this.f1164d.f());
        new ia().dq(this.ox.dq(), uVar, dqVar.dq(), this);
    }

    private void dq(u uVar, d.dq dqVar) {
        if (this.f1164d.jy() > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            dqVar.dq(this.f1164d.q()).d(this.f1164d.jy());
        } else {
            dqVar.dq(this.f1164d.q()).d(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        }
        new kk().dq(this.ox.dq(), uVar, dqVar.dq(), this);
    }

    @Override // com.bytedance.msdk.ox.ox.d.dq.d
    public void d(Context context, com.bytedance.msdk.ox.s.d.d dVar, com.bytedance.msdk.api.dq.d dVar2, Map<String, Object> map) {
        u dq;
        this.f1164d = dVar2;
        this.ox = dVar;
        if (dVar2 == null) {
            dq(new com.bytedance.msdk.api.dq("load ad fail adSlot is null"));
            return;
        }
        if (map == null || (dq = dq(context.getApplicationContext())) == null) {
            return;
        }
        d.dq dq2 = com.bytedance.msdk.dq.ox.d.dq(this.f1164d, this.ox, false);
        int e2 = this.f1164d.e();
        int kx = this.f1164d.kx();
        if (e2 > 0 && kx > 0) {
            dq2.dq(com.bytedance.msdk.dq.ox.d.dq(context.getApplicationContext(), e2)).d(com.bytedance.msdk.dq.ox.d.dq(context, kx));
        }
        Object obj = map.get("tt_ad_origin_type");
        if (obj != null) {
            int intValue = ((Integer) obj).intValue();
            if (intValue == 1) {
                dq(dq, dq2);
            } else if (intValue == 2) {
                d(dq, dq2);
            } else if (intValue == 3) {
                dq(new com.bytedance.msdk.api.dq("渲染类型错误"));
            }
        }
    }
}
