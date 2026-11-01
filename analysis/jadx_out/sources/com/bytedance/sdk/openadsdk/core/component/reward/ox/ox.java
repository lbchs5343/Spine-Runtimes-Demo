package com.bytedance.sdk.openadsdk.core.component.reward.ox;

import android.app.Activity;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.component.reward.ox.d;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.widget.mn;
import g.awf;

/* loaded from: classes3.dex */
public class ox extends dq {
    private com.bytedance.sdk.openadsdk.core.widget.mn fw;

    public ox(Activity activity, j jVar) {
        super(activity, jVar);
        this.fw = null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.dq, com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public d.dq d(final o oVar) {
        d.dq d2 = super.d(oVar);
        if (d2.ox()) {
            return d2;
        }
        final com.bytedance.sdk.openadsdk.core.widget.mn mnVar = new com.bytedance.sdk.openadsdk.core.widget.mn(this.ia);
        this.fw = mnVar;
        mnVar.dq(r.ox(this.ia, "tt_retain_gift")).dq(kk()).ox("继续观看").p("坚持退出");
        this.fw.dq(com.bytedance.sdk.openadsdk.res.s.kk(this.ia));
        this.fw.dq(new mn.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.ox.ox.1
            @Override // com.bytedance.sdk.openadsdk.core.widget.mn.dq
            public void d() {
                mnVar.dismiss();
                o oVar2 = oVar;
                if (oVar2 != null) {
                    oVar2.d();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.mn.dq
            public void dq() {
                mnVar.dismiss();
                o oVar2 = oVar;
                if (oVar2 != null) {
                    oVar2.dq();
                }
            }
        });
        this.fw.show();
        return new d.dq(true, 0, "", this.fw);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public boolean d() {
        com.bytedance.sdk.openadsdk.core.widget.mn mnVar = this.fw;
        return mnVar != null && mnVar.isShowing();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public String dq() {
        return (this.dq > 0 && this.s) ? awf.x(new StringBuilder("再看"), this.dq, "s，并点击一下广告可领取奖励") : this.s ? "忘记点击广告领取奖励啦～" : awf.x(new StringBuilder("再看"), this.dq, "s可领取奖励");
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public void ox() {
        com.bytedance.sdk.openadsdk.core.widget.mn mnVar = this.fw;
        if (mnVar != null) {
            mnVar.dismiss();
        }
    }
}
