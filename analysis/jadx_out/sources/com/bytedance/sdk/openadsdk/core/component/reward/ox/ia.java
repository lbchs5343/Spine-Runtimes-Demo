package com.bytedance.sdk.openadsdk.core.component.reward.ox;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.component.reward.ox.d;
import com.bytedance.sdk.openadsdk.core.ir.i;
import com.bytedance.sdk.openadsdk.core.r.gh;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.l;
import com.bytedance.sdk.openadsdk.core.widget.mn;
import g.awf;

/* loaded from: classes3.dex */
public class ia extends dq {
    private String cd;
    private com.bytedance.sdk.openadsdk.core.widget.mn fw;

    public ia(Activity activity, j jVar) {
        super(activity, jVar);
        this.fw = null;
    }

    private void dq(com.bytedance.sdk.openadsdk.core.widget.mn mnVar, String str, String str2, String str3) {
        mnVar.dq(r.ox(this.ia, "tt_reward_browse_multi_icon")).dq(str).ox(str2).p(str3);
        mnVar.dq(com.bytedance.sdk.openadsdk.res.s.u(this.ia));
    }

    private void dq(com.bytedance.sdk.openadsdk.core.widget.mn mnVar, boolean z) {
        if (i.ox(this.mn)) {
            int rc = this.mn.rc();
            int r = l.r(this.mn);
            if (rc == 0) {
                String str = "试玩时长达标才能领取奖励";
                if (r != 1 && !z && !this.ox) {
                    str = "试玩后才能领取奖励";
                }
                this.cd = str;
                mnVar.dq(r.ox(this.ia, "tt_retain_gift")).dq(kk()).ox("继续试玩").p("坚持退出");
                mnVar.dq(com.bytedance.sdk.openadsdk.res.s.kk(this.ia));
                return;
            }
            if (rc != 1) {
                if (rc != 3) {
                    return;
                }
                this.cd = "确定退出吗?";
                Activity activity = this.ia;
                if (activity != null) {
                    Intent intent = activity.getIntent();
                    this.cd = awf.b(intent != null ? intent.getIntExtra("remainTime", 0) : 0, "再看", "秒可得奖励");
                }
                dq(mnVar, kk(), "继续观看", "坚持退出");
                mnVar.dq(Color.parseColor("#FC1D56"));
                return;
            }
            boolean ox = gh.ox(this.mn);
            if (r != 0 || ox) {
                this.cd = awf.b(this.dq, "再看", "秒可得奖励");
            } else {
                this.cd = "未满足奖励要求，需要继续浏览";
            }
            if (ox) {
                mnVar.d("确定退出吗?");
                dq(mnVar, kk(), "继续观看", "坚持退出");
            } else {
                mnVar.dq(r.ox(this.ia, "tt_reward_coin")).dq(Color.parseColor("#FC1D56")).dq(kk()).ox("继续观看").p("坚持退出");
                mnVar.dq(com.bytedance.sdk.openadsdk.res.s.kk(this.ia));
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.dq, com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public d.dq d(final o oVar) {
        final com.bytedance.sdk.openadsdk.core.widget.mn mnVar = new com.bytedance.sdk.openadsdk.core.widget.mn(this.ia);
        this.fw = mnVar;
        dq(mnVar, this.p);
        this.fw.dq(new mn.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.ox.ia.1
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
        return this.cd;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public void ox() {
        com.bytedance.sdk.openadsdk.core.widget.mn mnVar = this.fw;
        if (mnVar != null) {
            mnVar.dismiss();
        }
    }
}
