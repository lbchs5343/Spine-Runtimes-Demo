package com.bytedance.sdk.openadsdk.core.component.reward.draw;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import android.view.animation.ScaleAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import com.bytedance.sdk.component.utils.e;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.component.widget.recycler.RecyclerView;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.component.reward.p.ox;
import com.bytedance.sdk.openadsdk.core.component.reward.view.FullRewardExpressView;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.ir.h;
import com.bytedance.sdk.openadsdk.core.nativeexpress.o;
import com.bytedance.sdk.openadsdk.core.r.ji;
import com.bytedance.sdk.openadsdk.core.r.t;
import com.bytedance.sdk.openadsdk.core.video.d.dq;
import com.bytedance.sdk.openadsdk.widget.TTProgressBar;
import com.bytedance.sdk.openadsdk.widget.TTRatingBar;
import com.bytedance.sdk.openadsdk.widget.TTRoundRectImageView;
import g.he;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public class s extends RecyclerView.k implements e.dq {
    private boolean bl;

    /* renamed from: c, reason: collision with root package name */
    private final e f2591c;
    private LinearLayout ce;

    /* renamed from: d, reason: collision with root package name */
    public ViewGroup f2592d;
    public FullRewardExpressView dq;

    /* renamed from: e, reason: collision with root package name */
    public p f2593e;
    private final AnimatorSet er;
    protected final AtomicBoolean h;
    public FrameLayout i;
    private int ir;
    private boolean ji;
    public FrameLayout k;
    protected final AtomicBoolean kx;
    public FrameLayout le;
    private com.bytedance.sdk.openadsdk.core.component.reward.draw.d n;
    private boolean op;
    public FrameLayout ox;
    public FrameLayout r;
    private ox.dq u;
    private int wn;
    public TTProgressBar wp;

    public static class d implements dq.InterfaceC0195dq {

        /* renamed from: d, reason: collision with root package name */
        private final dq f2595d;
        private final dq.InterfaceC0195dq dq;
        private boolean ox = false;
        private final int p;
        private final e s;

        public interface dq {
            void dq();

            void dq(boolean z);
        }

        public d(dq.InterfaceC0195dq interfaceC0195dq, int i, dq dqVar, e eVar) {
            this.dq = interfaceC0195dq;
            this.f2595d = dqVar;
            this.p = i;
            this.s = eVar;
        }

        private void dq(boolean z) {
            dq dqVar;
            if (this.ox || (dqVar = this.f2595d) == null) {
                return;
            }
            dqVar.dq(z);
        }

        @Override // com.bytedance.sdk.openadsdk.core.video.d.dq.InterfaceC0195dq
        public void d() {
            dq(true);
            dq.InterfaceC0195dq interfaceC0195dq = this.dq;
            if (interfaceC0195dq != null) {
                interfaceC0195dq.d();
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.video.d.dq.InterfaceC0195dq
        public void dq() {
            this.ox = false;
            dq.InterfaceC0195dq interfaceC0195dq = this.dq;
            if (interfaceC0195dq != null) {
                interfaceC0195dq.dq();
            }
            dq dqVar = this.f2595d;
            if (dqVar != null) {
                dqVar.dq();
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.video.d.dq.InterfaceC0195dq
        public void dq(int i, String str) {
            dq(true);
            this.ox = false;
            dq.InterfaceC0195dq interfaceC0195dq = this.dq;
            if (interfaceC0195dq != null) {
                interfaceC0195dq.dq(i, str);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.video.d.dq.InterfaceC0195dq
        public void dq(long j, long j2) {
            this.s.removeMessages(101);
            if (j2 > 20000 && j > Math.min(this.p * 1000, j2) * 0.75f) {
                dq(false);
                this.ox = true;
            }
            dq.InterfaceC0195dq interfaceC0195dq = this.dq;
            if (interfaceC0195dq != null) {
                interfaceC0195dq.dq(j, j2);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.video.d.dq.InterfaceC0195dq
        public void ox() {
            dq.InterfaceC0195dq interfaceC0195dq = this.dq;
            if (interfaceC0195dq != null) {
                interfaceC0195dq.ox();
            }
        }
    }

    public static class dq implements Interpolator {
        private dq() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f2) {
            return f2 <= 0.38f ? f2 * 2.631579f : (f2 * (-1.6129032f)) + 1.6129032f;
        }
    }

    public s(View view) {
        super(view);
        this.f2591c = new e(Looper.getMainLooper(), this);
        this.er = new AnimatorSet();
        this.kx = new AtomicBoolean(false);
        this.h = new AtomicBoolean(false);
        this.wn = he.UNDEFINED_ITEM_ID;
        this.f2592d = (ViewGroup) view.findViewById(2114387897);
        this.ox = (FrameLayout) view.findViewById(2114387783);
        this.r = (FrameLayout) view.findViewById(2114387817);
        this.i = (FrameLayout) view.findViewById(2114387673);
        this.le = (FrameLayout) view.findViewById(2114387826);
        this.k = (FrameLayout) view.findViewById(2114387682);
        this.wp = (TTProgressBar) view.findViewById(2114387772);
        dq(view.getContext());
    }

    private void dq(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        this.ce = linearLayout;
        linearLayout.setClipChildren(false);
        this.ce.setGravity(1);
        this.ce.setOrientation(1);
        ImageView imageView = new ImageView(context);
        imageView.setImageDrawable(r.ox(context, "tt_ic_back_light"));
        this.ce.addView(imageView, -1, -2);
        ImageView imageView2 = new ImageView(context);
        imageView2.setImageDrawable(r.ox(context, "tt_ic_back_light"));
        imageView2.setAlpha(0.7f);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.topMargin = ce.ox(context, -8.0f);
        this.ce.addView(imageView2, layoutParams);
        TextView textView = new TextView(context);
        textView.setGravity(1);
        textView.setTextColor(-1);
        textView.setText("上滑浏览更多内容");
        this.ce.addView(textView);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams2.gravity = 81;
        layoutParams2.bottomMargin = ce.ox(context, 156.0f);
        this.f2592d.addView(this.ce, layoutParams2);
        this.f2592d.setClipChildren(false);
        this.ce.setVisibility(8);
        dq(imageView, imageView2);
    }

    private void dq(View view, View view2) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "alpha", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
        ofFloat.setInterpolator(new dq());
        ofFloat.setDuration(1300L);
        ofFloat.setStartDelay(700L);
        ofFloat.setRepeatCount(-1);
        ofFloat.setRepeatMode(1);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, "translationY", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, ce.ox(this.f2592d.getContext(), -5.0f));
        ofFloat2.setInterpolator(new PathInterpolator(0.2f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, -0.3f, 1.0f));
        ofFloat2.setDuration(1300L);
        ofFloat2.setStartDelay(700L);
        ofFloat2.setRepeatCount(-1);
        ofFloat2.setRepeatMode(1);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(view2, "alpha", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
        ofFloat3.setInterpolator(new dq());
        ofFloat3.setDuration(1300L);
        ofFloat3.setStartDelay(500L);
        ofFloat3.setRepeatCount(-1);
        ofFloat3.setRepeatMode(1);
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(view2, "translationY", ce.ox(this.f2592d.getContext(), -6.0f));
        ofFloat4.setInterpolator(new PathInterpolator(0.2f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, -0.3f, 1.0f));
        ofFloat4.setDuration(1300L);
        ofFloat4.setStartDelay(500L);
        ofFloat4.setRepeatCount(-1);
        ofFloat4.setRepeatMode(1);
        this.er.playTogether(ofFloat, ofFloat3, ofFloat2, ofFloat4);
    }

    private void j() {
        FullRewardExpressView fullRewardExpressView = this.dq;
        if (fullRewardExpressView != null) {
            fullRewardExpressView.mp();
        }
        this.wn = he.UNDEFINED_ITEM_ID;
        this.bl = false;
        this.ji = false;
        this.op = false;
        this.r.removeAllViews();
        this.i.removeAllViews();
        this.le.removeAllViews();
        this.k.removeAllViews();
        this.kx.set(false);
        this.h.set(false);
        this.ox.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        p pVar = this.f2593e;
        if (pVar != null) {
            pVar.o();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(boolean z) {
        if (this.ji) {
            if (this.wn > ce.s(this.p.getContext()) * 0.7f) {
                ce.dq((View) this.ce, 0);
                this.er.start();
            }
            if (!z || this.kx.get()) {
                return;
            }
            ce.dq(this.f2592d.getContext(), "视频加载错误，请上滑浏览其他内容", 0);
            this.kx.set(true);
        }
    }

    public void c() {
        FullRewardExpressView fullRewardExpressView = this.dq;
        if (fullRewardExpressView != null) {
            fullRewardExpressView.mp();
        }
        p pVar = this.f2593e;
        if (pVar != null) {
            pVar.kk();
        }
    }

    public com.bykv.vk.openvk.component.video.api.p.ox ce() {
        return this.f2593e;
    }

    public void d() {
        if (this.er.isStarted() && this.er.isPaused()) {
            this.er.resume();
        }
    }

    public void d(boolean z) {
        if (this.ji == z) {
            return;
        }
        this.ji = z;
        if (z) {
            p();
            return;
        }
        ir();
        ce.dq((View) this.ce, 8);
        this.er.cancel();
    }

    public View dq(Context context, com.bytedance.sdk.openadsdk.core.component.reward.draw.d dVar) {
        String valueOf;
        View q = com.bytedance.sdk.openadsdk.res.s.q(context);
        RelativeLayout relativeLayout = (RelativeLayout) q.findViewById(2114387652);
        TTRoundRectImageView tTRoundRectImageView = (TTRoundRectImageView) q.findViewById(2114387798);
        TextView textView = (TextView) q.findViewById(2114387880);
        TextView textView2 = (TextView) q.findViewById(2114387633);
        TextView textView3 = (TextView) q.findViewById(2114387835);
        TTRatingBar tTRatingBar = (TTRatingBar) q.findViewById(2114387612);
        if (tTRatingBar != null) {
            tTRatingBar.setStarEmptyNum(1);
            tTRatingBar.setStarFillNum(4);
            tTRatingBar.setStarImageWidth(ce.ox(context, 15.0f));
            tTRatingBar.setStarImageHeight(ce.ox(context, 14.0f));
            tTRatingBar.setStarImagePadding(ce.ox(context, 4.0f));
            tTRatingBar.dq();
        }
        if (tTRoundRectImageView != null) {
            ji wq = dVar.dq().wq();
            if (wq == null || TextUtils.isEmpty(wq.dq())) {
                tTRoundRectImageView.setImageDrawable(r.ox(context, "tt_ad_logo_small"));
            } else {
                com.bytedance.sdk.openadsdk.ia.d.dq(wq).dq(tTRoundRectImageView);
            }
        }
        if (textView != null) {
            if (dVar.dq().gm() == null || TextUtils.isEmpty(dVar.dq().gm().ox())) {
                textView.setText(dVar.dq().lk());
            } else {
                textView.setText(dVar.dq().gm().ox());
            }
        }
        if (textView2 != null) {
            int iw = dVar.dq().gm() != null ? dVar.dq().gm().iw() : 6870;
            String dq2 = r.dq(context, "tt_comment_num");
            if (iw > 10000) {
                valueOf = (iw / 10000) + "万";
            } else {
                valueOf = String.valueOf(iw);
            }
            textView2.setText(String.format(dq2, valueOf));
        }
        if (textView3 != null) {
            textView3.setText(TextUtils.isEmpty(dVar.dq().tu()) ? dVar.dq().y() != 4 ? "查看详情" : "立即下载" : dVar.dq().tu());
        }
        ce.dq((View) relativeLayout, (View.OnClickListener) dVar.ox(), "reward_draw_listener");
        return q;
    }

    public void dq() {
        if (this.er.isStarted() && this.er.isRunning()) {
            this.er.pause();
        }
    }

    public void dq(float f2, float f3, float f4, float f5, int i) {
        FullRewardExpressView fullRewardExpressView = this.dq;
        if (fullRewardExpressView == null || fullRewardExpressView.getVideoFrameLayout() == null) {
            return;
        }
        int measuredWidth = this.dq.getVideoFrameLayout().getMeasuredWidth();
        int measuredHeight = this.dq.getVideoFrameLayout().getMeasuredHeight();
        if (this.f2593e.ds()) {
            this.dq.getVideoFrameLayout().animate().translationY(-((1.0f - f3) * measuredHeight)).setDuration(i).start();
        } else {
            ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, f2, 1.0f, f3, measuredWidth * f4, measuredHeight * f5);
            scaleAnimation.setFillAfter(true);
            scaleAnimation.setDuration(i);
            this.dq.getVideoFrameLayout().startAnimation(scaleAnimation);
        }
    }

    @Override // com.bytedance.sdk.component.utils.e.dq
    public void dq(Message message) {
        if (message.what != 101) {
            return;
        }
        p(true);
        com.bytedance.sdk.openadsdk.core.component.reward.draw.d dVar = this.n;
        if (dVar != null) {
            dVar.ia();
        }
    }

    public void dq(View view) {
        com.bytedance.sdk.openadsdk.core.component.reward.draw.d dVar = this.n;
        if (dVar == null || dVar.ox() == null) {
            return;
        }
        this.n.ox().onClick(view);
    }

    public void dq(final com.bytedance.sdk.openadsdk.core.component.reward.draw.d dVar, float f2, float f3) {
        this.n = dVar;
        j();
        this.wp.setVisibility(0);
        FullRewardExpressView fullRewardExpressView = new FullRewardExpressView(this.f2592d.getContext(), dVar.dq(), h.dq(7, String.valueOf(c.kk(dVar.dq())), f2, f3), dVar.d(), false);
        this.dq = fullRewardExpressView;
        fullRewardExpressView.setExpressInteractionListener(new com.bytedance.sdk.openadsdk.core.nativeexpress.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.draw.s.1
            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.dq
            public void dq(View view, float f4, float f5) {
                if (s.this.dq.i()) {
                    s.this.le.setVisibility(8);
                    s sVar = s.this;
                    sVar.k.addView(sVar.dq(view.getContext(), dVar));
                    s.this.k.setVisibility(0);
                } else {
                    s sVar2 = s.this;
                    sVar2.dq.dq((ViewGroup) sVar2.ox, false);
                }
                s sVar3 = s.this;
                sVar3.ir = sVar3.dq.getDynamicShowType();
                s.this.bl = true;
                s.this.p();
                s.this.wp.setVisibility(8);
            }
        });
        this.dq.setExpressVideoListenerProxy(new o() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.draw.s.2
            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public int d() {
                if (s.this.kx.get()) {
                    return 4;
                }
                s sVar = s.this;
                if (sVar.f2593e == null || !sVar.op) {
                    return 2;
                }
                if (s.this.f2593e.ha()) {
                    return 5;
                }
                if (s.this.f2593e.le()) {
                    return 1;
                }
                if (s.this.f2593e.cv()) {
                    return 2;
                }
                s.this.f2593e.wp();
                return 3;
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public void d(int i) {
                s.this.u.dq(i);
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public long dq() {
                return s.this.f2593e.no();
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public void dq(float f4) {
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public void dq(float f4, float f5, float f6, float f7, int i) {
                s.this.dq(f4, f5, f6, f7, i);
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public void dq(int i) {
                s sVar = s.this;
                p pVar = sVar.f2593e;
                if (pVar == null) {
                    return;
                }
                if (i == 2) {
                    pVar.mn(true);
                    if (s.this.ji) {
                        s.this.ir();
                        return;
                    }
                    return;
                }
                if (i != 3) {
                    return;
                }
                sVar.h.set(false);
                s.this.f2593e.mn(false);
                if (s.this.ji) {
                    s.this.u.d();
                    s.this.u();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public void dq(int i, String str) {
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public void dq(boolean z) {
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public long getActualPlayDuration() {
                return 0L;
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public void ia() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public void iw() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public void kk() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public void mn() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public void no() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public void o() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public int ox() {
                p pVar = s.this.f2593e;
                if (pVar == null) {
                    return 0;
                }
                return (int) (pVar.no() / 1000);
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public void p() {
                s.this.h.set(true);
                if (s.this.ji) {
                    s.this.u.dq();
                    s.this.n.d(false);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public void s() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public void setPauseFromExpressView(boolean z) {
            }
        });
        this.dq.setOnVideoSizeChangeListener(new FullRewardExpressView.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.draw.s.3
            @Override // com.bytedance.sdk.openadsdk.core.component.reward.view.FullRewardExpressView.dq
            public void dq(int i) {
                s.this.wn = i;
            }
        });
        this.le.addView(this.dq);
        p pVar = new p(this.f2592d.getContext(), this.r, dVar.dq());
        this.f2593e = pVar;
        this.dq.setVideoController(pVar);
        dVar.dq(this.r, this.i, this.dq);
        this.f2593e.dq(new d(dVar.s(), t.ox(this.n.dq()), new d.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.draw.s.4
            @Override // com.bytedance.sdk.openadsdk.core.component.reward.draw.s.d.dq
            public void dq() {
                s.this.u.p();
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.reward.draw.s.d.dq
            public void dq(boolean z) {
                s.this.p(z);
            }
        }, this.f2591c));
        this.f2593e.d(this.n.ig());
        this.dq.fw();
        this.dq.cd();
    }

    public void dq(ox.dq dqVar) {
        p pVar;
        this.u = dqVar;
        if (dqVar == null || (pVar = this.f2593e) == null) {
            return;
        }
        pVar.dq(dqVar.ox());
    }

    public boolean er() {
        p pVar = this.f2593e;
        if (pVar == null) {
            return false;
        }
        return pVar.e();
    }

    public void ir() {
        p pVar = this.f2593e;
        if (pVar != null) {
            pVar.iw();
        }
    }

    public long op() {
        com.bytedance.sdk.openadsdk.core.component.reward.draw.d dVar = this.n;
        if (dVar == null) {
            return -1L;
        }
        return dVar.ig();
    }

    public void ox() {
        if (this.er.isStarted() && this.er.isRunning()) {
            this.er.cancel();
        }
    }

    public void ox(boolean z) {
        p pVar = this.f2593e;
        if (pVar != null) {
            pVar.d(z);
        }
    }

    public void p() {
        if (this.f2593e != null && this.ji && this.bl) {
            this.n.o();
            this.dq.f();
            if (this.op && this.f2593e.wp()) {
                ox(this.n.iw());
                u();
            } else {
                this.op = true;
                this.f2591c.sendEmptyMessageDelayed(101, PushUIConfig.dismissTime);
                this.n.dq(this.dq);
                this.f2593e.dq(this.n.no());
            }
        }
    }

    public void u() {
        p pVar = this.f2593e;
        if (pVar != null) {
            pVar.ia();
        }
    }

    public boolean wn() {
        return this.h.get();
    }
}
