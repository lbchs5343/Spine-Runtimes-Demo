package com.bytedance.sdk.openadsdk.core.component.reward.layout;

import android.view.View;
import com.bytedance.sdk.component.widget.recycler.RecyclerView;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.component.reward.draw.RewardGuideSlideUp;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.j;

/* loaded from: classes3.dex */
public class p extends d {
    private float cd;

    /* renamed from: f, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.component.reward.draw.ox f2619f;
    private float fw;
    private boolean gh;
    private com.bytedance.sdk.openadsdk.core.component.reward.draw.dq jy;
    private RewardGuideSlideUp mp;
    private RecyclerView q;
    private boolean r;

    public p(TTBaseVideoActivity tTBaseVideoActivity, j jVar, boolean z) {
        super(tTBaseVideoActivity, jVar, z);
        this.gh = true;
    }

    public RecyclerView d() {
        return this.q;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.layout.d
    public void dq() {
        super.dq();
        this.q = (RecyclerView) this.mn.findViewById(2114387890);
        this.mp = (RewardGuideSlideUp) this.mn.findViewById(2114387966);
        com.bytedance.sdk.openadsdk.core.component.reward.draw.ox oxVar = new com.bytedance.sdk.openadsdk.core.component.reward.draw.ox(this.f2610d, 1, false);
        this.f2619f = oxVar;
        this.q.setLayoutManager(oxVar);
        com.bytedance.sdk.openadsdk.core.component.reward.draw.dq dqVar = new com.bytedance.sdk.openadsdk.core.component.reward.draw.dq(this.f2610d, this.fw, this.cd);
        this.jy = dqVar;
        this.q.setAdapter(dqVar);
        this.mp.dq();
    }

    public void dq(boolean z) {
        com.bytedance.sdk.openadsdk.core.component.reward.draw.ox oxVar = this.f2619f;
        if (oxVar == null) {
            return;
        }
        oxVar.ox(z);
    }

    public void dq(float[] fArr) {
        this.fw = fArr[0];
        this.cd = fArr[1];
    }

    public void iw() {
        this.gh = false;
        if (this.r) {
            ce.dq((View) this.mp, 8);
            this.mp.d();
            this.r = false;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.layout.d
    public void o() {
        super.o();
        if (this.mp != null) {
            iw();
        }
    }

    public com.bytedance.sdk.openadsdk.core.component.reward.draw.dq ox() {
        return this.jy;
    }

    public com.bytedance.sdk.openadsdk.core.component.reward.draw.ox p() {
        return this.f2619f;
    }

    public void s() {
        if (this.gh) {
            this.mn.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.layout.p.1
                @Override // java.lang.Runnable
                public void run() {
                    if (p.this.gh) {
                        p.this.gh = false;
                        ce.dq((View) p.this.mp, 0);
                        p.this.mp.getSlideUpAnimatorSet().start();
                        p.this.r = true;
                        p.this.mn.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.layout.p.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                p.this.iw();
                            }
                        }, 3000L);
                    }
                }
            }, 0L);
        }
    }
}
