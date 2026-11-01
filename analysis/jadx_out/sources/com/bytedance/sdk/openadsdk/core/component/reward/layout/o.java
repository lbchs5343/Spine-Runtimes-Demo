package com.bytedance.sdk.openadsdk.core.component.reward.layout;

import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.component.reward.swiper.FullSwiperView;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.r.j;
import java.util.List;

/* loaded from: classes3.dex */
public class o extends d {
    private FullSwiperView jy;
    private float mp;
    private float q;

    public o(TTBaseVideoActivity tTBaseVideoActivity, j jVar, boolean z) {
        super(tTBaseVideoActivity, jVar, z);
    }

    public void d() {
        FullSwiperView fullSwiperView = this.jy;
        if (fullSwiperView != null) {
            fullSwiperView.d();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.layout.d
    public void dq() {
        super.dq();
        this.mn.setBackgroundColor(0);
        this.jy = new FullSwiperView(this.f2610d);
    }

    public void dq(List<com.bytedance.sdk.openadsdk.core.component.reward.swiper.dq> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        this.jy.dq(list).dq(this.mp).d(this.q).dq(String.valueOf(c.kk(this.ox))).dq();
        this.mn.addView(this.jy, new FrameLayout.LayoutParams(-1, -1));
    }

    public void dq(float[] fArr) {
        this.mp = fArr[0];
        this.q = fArr[1];
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.layout.d
    public void o() {
        super.o();
        FullSwiperView fullSwiperView = this.jy;
        if (fullSwiperView != null) {
            fullSwiperView.s();
        }
    }

    public void ox() {
        FullSwiperView fullSwiperView = this.jy;
        if (fullSwiperView != null) {
            fullSwiperView.ox();
        }
    }

    public void p() {
        FullSwiperView fullSwiperView = this.jy;
        if (fullSwiperView != null) {
            fullSwiperView.p();
        }
    }

    public int s() {
        FullSwiperView fullSwiperView = this.jy;
        if (fullSwiperView != null) {
            return fullSwiperView.getCurrentPosition();
        }
        return 0;
    }
}
