package com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq;

import android.app.Activity;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.component.reward.ox.d;
import com.bytedance.sdk.openadsdk.core.component.reward.ox.o;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.ob;
import com.bytedance.sdk.openadsdk.core.widget.mn;
import com.bytedance.sdk.openadsdk.res.s;

/* loaded from: classes3.dex */
public class d extends dq {

    /* renamed from: d, reason: collision with root package name */
    private mn f2536d;

    public d(Activity activity, j jVar) {
        super(activity, jVar);
        this.f2536d = null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public boolean d() {
        mn mnVar = this.f2536d;
        return mnVar != null && mnVar.isShowing();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq.dq, com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public d.dq dq(final o oVar) {
        d.dq dq = super.dq(oVar);
        if (dq.ox()) {
            return dq;
        }
        final mn mnVar = new mn(this.ia);
        this.f2536d = mnVar;
        mnVar.dq(r.ox(this.ia, "tt_retain_gift")).dq(dq()).ox(ob.dq(this.mn, this.no, this.ig)).p("坚持退出");
        mnVar.dq(s.kk(this.ia));
        this.f2536d.dq(new mn.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq.d.1
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
                o oVar2 = oVar;
                if (oVar2 != null) {
                    oVar2.dq();
                }
            }
        });
        this.f2536d.show();
        return new d.dq(true, 0, "", this.f2536d);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public String dq() {
        return "恭喜您已经获得奖励，是否要继续观看视频，再得超值奖励";
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public void ox() {
        mn mnVar = this.f2536d;
        if (mnVar != null) {
            mnVar.dismiss();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public void p() {
        mn mnVar = this.f2536d;
        if (mnVar != null) {
            mnVar.dq();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public void s() {
        mn mnVar = this.f2536d;
        if (mnVar != null) {
            mnVar.d();
        }
    }
}
