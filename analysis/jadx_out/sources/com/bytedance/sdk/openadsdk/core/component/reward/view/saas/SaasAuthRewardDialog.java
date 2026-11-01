package com.bytedance.sdk.openadsdk.core.component.reward.view.saas;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.view.animation.ScaleAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import com.bytedance.sdk.component.iw.f;
import com.bytedance.sdk.component.iw.no;
import com.bytedance.sdk.component.utils.ia;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.ats.ATSMethod;
import com.bytedance.sdk.openadsdk.core.c;
import com.bytedance.sdk.openadsdk.core.d.dq.d.iw;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.mn.ox;
import com.bytedance.sdk.openadsdk.core.r.er;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.ia.d;
import g.tn;

/* loaded from: classes3.dex */
public class SaasAuthRewardDialog extends RelativeLayout implements Runnable {
    private static boolean o;

    /* renamed from: d, reason: collision with root package name */
    private BaseSaasEnvelope f2677d;
    private SaasAuthEnvelope dq;
    private String ia;
    private boolean iw;
    private int kk;
    private j mn;
    private ImageView ox;
    private RotateAnimation p;
    private ScaleAnimation s;

    public static class dq implements f {
        private dq() {
        }

        @Override // com.bytedance.sdk.component.iw.f
        @ATSMethod(2)
        public void dq(int i, String str, Throwable th) {
        }

        @Override // com.bytedance.sdk.component.iw.f
        @ATSMethod(1)
        public void dq(no noVar) {
        }
    }

    public SaasAuthRewardDialog(Context context) {
        super(context);
        this.iw = false;
        dq(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        this.iw = true;
        er nr = this.mn.nr();
        if (nr.o() != null) {
            this.f2677d = new SaasAuthCouponEnvelope(getContext(), nr.o());
        } else if (nr.no() != null) {
            this.f2677d = new SaasAuthProductEnvelope(getContext(), nr.no());
        }
        View view = this.f2677d;
        if (view != null) {
            addView(view, new RelativeLayout.LayoutParams(-1, -1));
            this.f2677d.dq();
            com.bytedance.sdk.openadsdk.core.d.dq dqVar = new com.bytedance.sdk.openadsdk.core.d.dq(getContext(), this.mn, this.ia, this.kk);
            setTag(TTAdConstant.KEY_CLICK_AREA, 2917);
            ((iw) dqVar.dq(iw.class)).dq(101);
            com.bytedance.sdk.component.no.s.dq.dq().dq(this.mn.hashCode() + this.mn.el()).put("live_saas_interaction_type", 101);
            setOnClickListener(dqVar);
            this.f2677d.setOnCloseClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.view.saas.SaasAuthRewardDialog.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    SaasAuthRewardDialog.this.dq();
                }
            });
            this.f2677d.setOnButtonClickListener(dqVar);
        }
        SaasAuthEnvelope saasAuthEnvelope = this.dq;
        if (saasAuthEnvelope != null) {
            saasAuthEnvelope.d();
        }
        removeView(this.dq);
    }

    private void dq(Context context) {
        this.ox = new ImageView(context);
        try {
            d.dq(ox.dq("saas_light_shine.webp")).dq(this.ox);
            this.ox.setScaleType(ImageView.ScaleType.CENTER_CROP);
        } catch (Error unused) {
        }
        int p = ce.p(context);
        addView(this.ox, tn.q(p, p, 13));
        SaasAuthEnvelope saasAuthEnvelope = new SaasAuthEnvelope(context);
        this.dq = saasAuthEnvelope;
        saasAuthEnvelope.setId(2114387467);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        addView(this.dq, layoutParams);
        this.dq.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.view.saas.SaasAuthRewardDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SaasAuthRewardDialog.this.d();
                ia.d().removeCallbacks(SaasAuthRewardDialog.this);
            }
        });
        this.dq.setOnCloseClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.view.saas.SaasAuthRewardDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SaasAuthRewardDialog.this.dq();
            }
        });
    }

    private void ox() {
        try {
            if (o) {
                return;
            }
            dq dqVar = new dq();
            d.dq(ox.dq("saas_light_shine.webp")).dq(dqVar);
            d.dq(ox.dq("saas_red_envelope.webp")).dq(dqVar);
            d.dq(ox.dq("saas_reward_goods_bg.webp")).dq(dqVar);
            d.dq(ox.dq("saas_reward_coupon_bg.webp")).dq(dqVar);
            d.dq(ox.dq("saas_reward_title.webp")).dq(dqVar);
            o = true;
        } catch (Throwable unused) {
        }
    }

    public void dq() {
        SaasAuthEnvelope saasAuthEnvelope = this.dq;
        if (saasAuthEnvelope != null) {
            saasAuthEnvelope.d();
        }
        BaseSaasEnvelope baseSaasEnvelope = this.f2677d;
        if (baseSaasEnvelope != null) {
            baseSaasEnvelope.d();
        }
        RotateAnimation rotateAnimation = this.p;
        if (rotateAnimation != null) {
            rotateAnimation.cancel();
            this.p = null;
        }
        ScaleAnimation scaleAnimation = this.s;
        if (scaleAnimation != null) {
            scaleAnimation.cancel();
            this.s = null;
        }
        ia.d().removeCallbacks(this);
        setVisibility(8);
        c.d(false);
    }

    public void dq(j jVar, String str, int i) {
        if (jVar == null || com.bytedance.sdk.openadsdk.core.live.d.dq().ox() != 2) {
            setVisibility(8);
            return;
        }
        er nr = jVar.nr();
        if (nr == null || ((nr.no() == null && nr.o() == null) || !nr.kk())) {
            setVisibility(8);
            return;
        }
        this.mn = jVar;
        this.ia = str;
        this.kk = i;
        setBackgroundColor(Color.parseColor("#aa000000"));
        ia.d().postDelayed(this, PushUIConfig.dismissTime);
        dq(getContext());
        ox();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        c.d(false);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (getVisibility() == 0) {
            if (this.iw) {
                setVisibility(8);
                return;
            } else {
                ia.d().postDelayed(this, PushUIConfig.dismissTime);
                d();
                return;
            }
        }
        ScaleAnimation scaleAnimation = new ScaleAnimation(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f, 1, 0.5f, 1, 0.5f);
        this.s = scaleAnimation;
        scaleAnimation.setDuration(600L);
        this.s.setFillAfter(true);
        this.s.setAnimationListener(new Animation.AnimationListener() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.view.saas.SaasAuthRewardDialog.3
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                SaasAuthRewardDialog.this.p = new RotateAnimation(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 360.0f, 1, 0.5f, 1, 0.5f);
                SaasAuthRewardDialog.this.p.setDuration(PushUIConfig.dismissTime);
                SaasAuthRewardDialog.this.p.setRepeatCount(-1);
                SaasAuthRewardDialog.this.p.setFillAfter(true);
                SaasAuthRewardDialog.this.p.setInterpolator(new LinearInterpolator());
                SaasAuthRewardDialog.this.ox.startAnimation(SaasAuthRewardDialog.this.p);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        });
        this.ox.startAnimation(this.s);
        c.d(true);
        setVisibility(0);
        this.dq.dq();
        ia.d().postDelayed(this, 2000L);
    }
}
