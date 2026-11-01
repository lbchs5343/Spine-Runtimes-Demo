package com.bytedance.sdk.openadsdk.core.component.reward.swiper;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.core.component.reward.swiper.FullSwiperItemView;
import com.bytedance.sdk.openadsdk.core.mp.s;
import com.bytedance.sdk.openadsdk.core.r.h;
import com.bytedance.sdk.openadsdk.core.r.j;
import g.ese;
import g.te;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public class FullSwiperView extends FrameLayout {

    /* renamed from: d, reason: collision with root package name */
    private List<dq> f2655d;
    private ese dq;
    private List<Integer> ia;
    private int ig;
    private String iw;
    private List<Integer> kk;
    private boolean mn;
    private boolean mp;
    private List<FullSwiperItemView> no;
    private List<Long> o;
    private Context ox;
    private float p;
    private AtomicBoolean q;
    private float s;

    public FullSwiperView(Context context) {
        super(context);
        this.mn = false;
        this.mp = true;
        this.q = new AtomicBoolean(false);
        this.ox = context;
        this.ia = new ArrayList();
        this.kk = new ArrayList();
        this.o = new ArrayList();
        this.dq = new SwiperView(context);
        this.no = new ArrayList();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        addView(this.dq, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public FullSwiperItemView d(int i) {
        List<FullSwiperItemView> list = this.no;
        if (list == null || i < 0 || i >= list.size()) {
            return null;
        }
        return this.no.get(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(int i) {
        FullSwiperItemView d2 = d(i);
        if (d2 != null) {
            d2.q();
        }
    }

    public FullSwiperView d(float f2) {
        this.s = f2;
        return this;
    }

    public void d() {
        FullSwiperItemView d2 = d(this.ig);
        if (d2 != null) {
            d2.f();
        }
        List<Long> list = this.o;
        if (list != null && this.ig < list.size()) {
            this.kk.add(this.ig, Integer.valueOf(this.ia.get(this.ig).intValue() - ((int) (System.currentTimeMillis() - this.o.get(this.ig).longValue()))));
        }
        this.dq.s();
    }

    public FullSwiperView dq(float f2) {
        this.p = f2;
        return this;
    }

    public FullSwiperView dq(String str) {
        this.iw = str;
        return this;
    }

    public FullSwiperView dq(List<dq> list) {
        this.f2655d = list;
        return this;
    }

    public void dq() {
        h eo;
        List<dq> list = this.f2655d;
        if (list == null || list.size() <= 0) {
            return;
        }
        this.dq.dq(false).p(false).ox(false).d(false);
        this.dq.setOnPageChangeListener(new te() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.swiper.FullSwiperView.1
            @Override // g.te
            public void dq(boolean z, int i, int i2, boolean z2, boolean z3) {
                FullSwiperView.this.ig = i;
                FullSwiperItemView d2 = FullSwiperView.this.d(i);
                if (d2 != null && FullSwiperView.this.ig != 0) {
                    d2.d(false);
                }
                FullSwiperItemView d3 = FullSwiperView.this.d(i - 1);
                if (d3 != null) {
                    d3.f();
                    d3.cd();
                }
                FullSwiperView.this.dq(i + 1);
                if (!FullSwiperView.this.mn && i > 0) {
                    FullSwiperView.this.mn = true;
                    s.d(FullSwiperView.this.iw);
                }
                int intValue = ((Integer) FullSwiperView.this.ia.get(i)).intValue();
                if (intValue > 0 && i != FullSwiperView.this.no.size() - 1) {
                    FullSwiperView.this.o.add(i, Long.valueOf(System.currentTimeMillis()));
                    if (FullSwiperView.this.q.get()) {
                        return;
                    }
                    FullSwiperView.this.dq.no(intValue);
                }
            }
        });
        for (dq dqVar : this.f2655d) {
            j dq = dqVar.dq();
            if (dq != null && (eo = dq.eo()) != null) {
                this.ia.add(Integer.valueOf((int) eo.d()));
                this.kk.add(0);
                this.o.add(Long.valueOf(System.currentTimeMillis()));
                FullSwiperItemView fullSwiperItemView = new FullSwiperItemView(this.ox, dqVar, this.p, this.s);
                fullSwiperItemView.setOnSwiperItemInteractListener(new FullSwiperItemView.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.swiper.FullSwiperView.2
                    @Override // com.bytedance.sdk.openadsdk.core.component.reward.swiper.FullSwiperItemView.dq
                    public void dq() {
                        FullSwiperView.this.dq.s();
                        FullSwiperView.this.q.set(true);
                    }
                });
                this.dq.dq(fullSwiperItemView);
                this.no.add(fullSwiperItemView);
            }
        }
        final FullSwiperItemView fullSwiperItemView2 = this.no.get(0);
        fullSwiperItemView2.setOnSwiperItemRenderResultListener(new FullSwiperItemView.d() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.swiper.FullSwiperView.3
            @Override // com.bytedance.sdk.openadsdk.core.component.reward.swiper.FullSwiperItemView.d
            public void dq(View view, float f2, float f3) {
                int intValue = ((Integer) FullSwiperView.this.ia.get(0)).intValue();
                if (intValue <= 0) {
                    FullSwiperView.this.dq.p();
                } else {
                    FullSwiperView.this.o.add(0, Long.valueOf(System.currentTimeMillis()));
                    FullSwiperView.this.dq.p();
                    FullSwiperView.this.dq.no(intValue);
                }
                fullSwiperItemView2.d(true);
                FullSwiperView.this.dq(1);
            }
        });
        fullSwiperItemView2.q();
    }

    public int getCurrentPosition() {
        return this.ig;
    }

    public void ox() {
        FullSwiperItemView d2 = d(this.ig);
        if (d2 != null) {
            d2.fw();
        }
        if (this.ig == this.no.size() - 1) {
            return;
        }
        this.dq.o(this.ig);
        List<Integer> list = this.kk;
        if (list == null || this.ig >= list.size()) {
            return;
        }
        if (!this.mp && !this.q.get()) {
            this.dq.no(this.kk.get(this.ig).intValue());
        }
        this.mp = false;
    }

    public void p() {
        ese eseVar = this.dq;
        if (eseVar != null) {
            eseVar.s();
        }
    }

    public void s() {
        for (FullSwiperItemView fullSwiperItemView : this.no) {
            if (fullSwiperItemView != null) {
                fullSwiperItemView.gh();
            }
        }
    }
}
