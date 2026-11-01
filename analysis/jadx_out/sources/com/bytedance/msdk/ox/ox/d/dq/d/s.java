package com.bytedance.msdk.ox.ox.d.dq.d;

import android.content.Context;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.u;
import com.bytedance.sdk.openadsdk.f.d.ox.d;
import java.util.Map;

/* loaded from: classes.dex */
public class s extends d {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.msdk.api.dq.d f1169d;
    private com.bytedance.msdk.ox.s.d.d ox;

    public s(com.bytedance.msdk.ox.dq.d dVar) {
        super(dVar);
    }

    private void d(u uVar, d.dq dqVar) {
        new ox().dq(this.ox.dq(), uVar, dqVar.dq(), this);
    }

    private void dq(u uVar, d.dq dqVar) {
        if (this.f1169d.jy() > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            dqVar.dq(this.f1169d.q()).d(this.f1169d.jy());
        } else {
            dqVar.dq(this.f1169d.q()).d(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        }
        new p().dq(this.ox.dq(), uVar, dqVar.dq(), this);
    }

    @Override // com.bytedance.msdk.ox.ox.d.dq.d
    public void d(Context context, com.bytedance.msdk.ox.s.d.d dVar, com.bytedance.msdk.api.dq.d dVar2, Map<String, Object> map) {
        u dq;
        this.ox = dVar;
        this.f1169d = dVar2;
        if (dVar2 == null) {
            dq(new com.bytedance.msdk.api.dq("load ad fail adSlot is null"));
            return;
        }
        if (map == null || (dq = dq(context.getApplicationContext())) == null) {
            return;
        }
        d.dq dq2 = com.bytedance.msdk.dq.ox.d.dq(this.f1169d, this.ox, false);
        int e2 = this.f1169d.e();
        int kx = this.f1169d.kx();
        if (e2 > 0 && kx > 0) {
            dq2.dq(com.bytedance.msdk.dq.ox.d.dq(context.getApplicationContext(), e2)).d(com.bytedance.msdk.dq.ox.d.dq(context.getApplicationContext(), kx));
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
}
