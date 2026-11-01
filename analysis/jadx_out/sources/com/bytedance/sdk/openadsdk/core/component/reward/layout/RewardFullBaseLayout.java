package com.bytedance.sdk.openadsdk.core.component.reward.layout;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.widget.TTProgressBar;

/* loaded from: classes3.dex */
public class RewardFullBaseLayout extends FrameLayout {

    /* renamed from: d, reason: collision with root package name */
    protected TTProgressBar f2609d;
    protected TTProgressBar dq;
    private FrameLayout ia;
    private FrameLayout ig;
    private FrameLayout iw;
    private FrameLayout kk;
    private FrameLayout mn;
    private FrameLayout no;
    private FrameLayout o;
    float ox;
    long p;
    dq s;

    public interface dq {
        void dq();
    }

    public RewardFullBaseLayout(Context context) {
        super(context);
    }

    private FrameLayout d() {
        this.ig = s();
        FrameLayout s = s();
        this.no = s;
        this.ig.addView(s);
        FrameLayout s2 = s();
        this.iw = s2;
        s2.setVisibility(8);
        this.no.addView(this.iw);
        FrameLayout s3 = s();
        this.mn = s3;
        s3.setVisibility(8);
        this.no.addView(this.mn);
        this.o = s();
        return this.ig;
    }

    private FrameLayout ox() {
        FrameLayout s = s();
        this.ia = s;
        return s;
    }

    private FrameLayout p() {
        FrameLayout s = s();
        this.kk = s;
        return s;
    }

    private FrameLayout s() {
        FrameLayout frameLayout = new FrameLayout(getContext());
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        return frameLayout;
    }

    public void dq() {
        this.s = null;
    }

    public void dq(int i) {
        if (this.dq == null) {
            this.dq = new TTProgressBar(getContext());
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(120, 120);
            layoutParams.gravity = 17;
            this.dq.setLayoutParams(layoutParams);
            try {
                this.dq.setIndeterminateDrawable(r.ox(getContext(), "tt_video_loading_progress_bar"));
            } catch (Throwable unused) {
            }
            addView(this.dq);
        }
        this.dq.setVisibility(i);
    }

    public void dq(int i, TTProgressBar tTProgressBar) {
        TTProgressBar tTProgressBar2 = this.f2609d;
        if (tTProgressBar2 != null) {
            tTProgressBar2.setVisibility(8);
            removeView(this.f2609d);
        }
        if (tTProgressBar == null) {
            return;
        }
        this.f2609d = tTProgressBar;
        addView(tTProgressBar);
        this.f2609d.setVisibility(i);
    }

    public void dq(dq dqVar) {
        this.s = dqVar;
    }

    public void dq(com.bytedance.sdk.openadsdk.core.component.reward.p.dq dqVar) {
        FrameLayout s = s();
        s.setClipChildren(false);
        s.addView(d());
        s.addView(ox());
        s.addView(p());
        addView(s);
        this.iw.addView(dqVar.kk());
        this.ia.addView(dqVar.o());
        this.kk.addView(dqVar.no());
    }

    public FrameLayout getEasyPlayableContainer() {
        return this.o;
    }

    public FrameLayout getEndCardFrameContainer() {
        return this.ia;
    }

    public FrameLayout getExpressFrameContainer() {
        return this.mn;
    }

    public FrameLayout getSceneFrame() {
        return this.no;
    }

    public FrameLayout getSceneFrameContainer() {
        return this.ig;
    }

    public FrameLayout getTopFrameContainer() {
        return this.kk;
    }

    public FrameLayout getWidgetFrameContainer() {
        return this.iw;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.s == null) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.ox = motionEvent.getY();
            this.p = System.currentTimeMillis();
        } else if (action == 1) {
            float y = motionEvent.getY();
            float f2 = this.ox;
            if (y < f2 && Math.abs(y - f2) > ce.ox(getContext(), 30.0f)) {
                this.s.dq();
                return true;
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }
}
