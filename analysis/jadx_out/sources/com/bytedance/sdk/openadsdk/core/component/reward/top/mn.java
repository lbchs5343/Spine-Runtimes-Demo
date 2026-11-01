package com.bytedance.sdk.openadsdk.core.component.reward.top;

import android.view.View;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.component.reward.ox.o;
import com.bytedance.sdk.openadsdk.core.component.reward.p.kk;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.uh;
import com.bytedance.sdk.openadsdk.core.wp;

/* loaded from: classes3.dex */
public class mn extends ox {
    public mn(TTBaseVideoActivity tTBaseVideoActivity, j jVar, com.bytedance.sdk.openadsdk.core.component.reward.d.d dVar, com.bytedance.sdk.openadsdk.core.component.reward.d.s sVar, boolean z) {
        super(tTBaseVideoActivity, jVar, dVar, sVar, z);
    }

    private void d() {
        o oVar = new o() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.top.mn.1
            @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.o
            public void d() {
                mn.this.s.jy();
                mn.this.s.er().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.top.mn.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        mn.this.s.d();
                    }
                }, 100L);
            }
        };
        int i = 2;
        int s = this.s.s(2);
        if (this.f2660d.we() == 7) {
            if (wp.d().mn(String.valueOf(c.kk(this.f2660d))) && !this.s.v()) {
                i = 1;
            }
            s = i;
        }
        if (s != 1) {
            this.s.ox();
        } else {
            if (this.s.dq(oVar)) {
                return;
            }
            oVar.d();
        }
    }

    private void ox() {
        o oVar = new o() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.top.mn.2
            @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.o
            public void d() {
                mn.this.s.ox();
            }
        };
        if (this.s.dq(oVar)) {
            return;
        }
        oVar.d();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.ox, com.bytedance.sdk.openadsdk.core.component.reward.top.d
    public void d(View view) {
        super.d(view);
        if (this.s.yy() instanceof kk) {
            this.s.ce();
        }
        this.s.c();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.ox, com.bytedance.sdk.openadsdk.core.component.reward.top.d
    public void dq(View view) {
        super.dq(view);
        this.s.xz().dq();
        if (uh.fw(this.f2660d)) {
            d();
        } else {
            ox();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.ox, com.bytedance.sdk.openadsdk.core.component.reward.top.d
    public void iw(View view) {
        super.iw(view);
        this.s.onSkipBorderClick(view);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.ox, com.bytedance.sdk.openadsdk.core.component.reward.top.d
    public void ox(View view) {
        super.ox(view);
        this.s.ox("video_player");
    }
}
