package com.bytedance.sdk.openadsdk.core.component.reward.ox;

import android.app.Activity;
import android.view.View;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.component.reward.ox.d;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.widget.mn;
import g.awf;

/* loaded from: classes3.dex */
public class s extends dq {
    private com.bytedance.sdk.openadsdk.core.widget.mn fw;

    public s(Activity activity, j jVar) {
        super(activity, jVar);
        this.fw = null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.dq, com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public d.dq d(final o oVar) {
        final com.bytedance.sdk.openadsdk.core.widget.mn mnVar = new com.bytedance.sdk.openadsdk.core.widget.mn(this.ia);
        this.fw = mnVar;
        mnVar.dq(r.ox(this.ia, "tt_retain_gift")).dq(kk()).ox("继续观看").p("坚持退出");
        mnVar.dq(com.bytedance.sdk.openadsdk.res.s.mp(this.ia));
        this.fw.dq(new mn.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.ox.s.1
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
        this.fw.dq(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.ox.s.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                mnVar.dismiss();
                o oVar2 = oVar;
                if (oVar2 != null) {
                    oVar2.ox();
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
        return awf.x(new StringBuilder("继续观看"), this.dq, "秒可获得奖励\n确定要退出吗？");
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public void ox() {
        com.bytedance.sdk.openadsdk.core.widget.mn mnVar = this.fw;
        if (mnVar != null) {
            mnVar.dismiss();
        }
    }
}
