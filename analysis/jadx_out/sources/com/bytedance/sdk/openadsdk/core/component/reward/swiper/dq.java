package com.bytedance.sdk.openadsdk.core.component.reward.swiper;

import com.bykv.vk.openvk.component.video.api.ox.p;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.component.reward.draw.d;
import com.bytedance.sdk.openadsdk.core.ig.ox;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.kx;
import com.bytedance.sdk.openadsdk.core.r.h;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.h.o;
import java.util.Map;

/* loaded from: classes3.dex */
public class dq extends d {
    private boolean s;

    public dq(TTBaseVideoActivity tTBaseVideoActivity, j jVar, String str, boolean z, boolean z2) {
        super(tTBaseVideoActivity, jVar, str, z, z2);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.draw.d
    public void dq(NativeExpressView nativeExpressView) {
        Map<String, Object> ob = this.dq.ob();
        if (nativeExpressView.getDynamicShowType() == 0) {
            kx.dq(ob, this.f2587d, nativeExpressView);
        } else {
            ob.put("dynamic_show_type", Integer.valueOf(nativeExpressView.getDynamicShowType()));
        }
        h eo = this.f2587d.eo();
        Double d2 = null;
        if (eo != null) {
            ob.put("refresh_num", Integer.valueOf(eo.ox()));
            if (this.s) {
                d2 = this.dq.l();
            }
        }
        ox.dq(this.f2587d, this.ox, ob, d2);
        com.bytedance.sdk.openadsdk.core.kx.dq.dq().p();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.draw.d
    public p no() {
        p dq = pa.dq(1, this.f2587d);
        dq.d(this.f2587d.fx());
        dq.d(100);
        dq.ox(100);
        dq.ox(this.f2587d.dn());
        dq.d(this.p);
        if (o.dq(this.f2587d)) {
            dq.dq(true);
        }
        return dq;
    }

    public void ox(boolean z) {
        this.s = z;
    }
}
