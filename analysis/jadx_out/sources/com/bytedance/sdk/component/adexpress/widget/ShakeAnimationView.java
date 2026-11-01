package com.bytedance.sdk.component.adexpress.widget;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.i;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ShakeAnimationView extends LinearLayout {

    /* renamed from: d, reason: collision with root package name */
    private TextView f1821d;
    private TextView dq;
    private LinearLayout ia;
    private JSONObject ig;
    private TextView iw;
    private int kk;
    private dq mn;
    private boolean mp;
    private int no;
    private int o;
    private ImageView ox;
    private i p;
    private TextView s;

    /* renamed from: com.bytedance.sdk.component.adexpress.widget.ShakeAnimationView$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {
        public AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ShakeAnimationView.this.ox != null) {
                final RotateAnimation rotateAnimation = new RotateAnimation(-14.0f, 14.0f, 1, 0.9f, 1, 0.9f);
                rotateAnimation.setInterpolator(new d(null));
                rotateAnimation.setDuration(1000L);
                rotateAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.bytedance.sdk.component.adexpress.widget.ShakeAnimationView.1.1
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        ShakeAnimationView.this.postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.widget.ShakeAnimationView.1.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                ShakeAnimationView.this.ox.startAnimation(rotateAnimation);
                            }
                        }, 250L);
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                    }
                });
                ShakeAnimationView.this.ox.startAnimation(rotateAnimation);
            }
        }
    }

    public static class d implements Interpolator {
        private d() {
        }

        public /* synthetic */ d(AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f2) {
            return f2 <= 0.25f ? (f2 * (-2.0f)) + 0.5f : f2 <= 0.5f ? (f2 * 4.0f) - 1.0f : f2 <= 0.75f ? (f2 * (-4.0f)) + 3.0f : (f2 * 2.0f) - 1.5f;
        }
    }

    public interface dq {
        void dq(boolean z);
    }

    public ShakeAnimationView(Context context, View view, int i, int i2, int i3, JSONObject jSONObject, boolean z) {
        super(context);
        this.kk = i;
        this.o = i2;
        this.no = i3;
        this.ig = jSONObject;
        this.mp = z;
        dq(context, view);
    }

    public void dq() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "alpha", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
        ofFloat.setDuration(300L);
        ofFloat.start();
        postDelayed(new AnonymousClass1(), 500L);
    }

    public void dq(Context context, View view) {
        addView(view);
        this.ia = (LinearLayout) findViewById(2097610727);
        this.ox = (ImageView) findViewById(2097610725);
        this.dq = (TextView) findViewById(2097610724);
        this.f1821d = (TextView) findViewById(2097610726);
        this.s = (TextView) findViewById(2097610723);
        this.iw = (TextView) findViewById(2097610728);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.parseColor("#57000000"));
        this.ia.setBackground(gradientDrawable);
    }

    public LinearLayout getShakeLayout() {
        return this.ia;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isShown()) {
            if (this.p == null) {
                this.p = new i(getContext().getApplicationContext(), 1, this.mp);
            }
            this.p.dq(new i.dq() { // from class: com.bytedance.sdk.component.adexpress.widget.ShakeAnimationView.2
                @Override // com.bytedance.sdk.component.utils.i.dq
                public void dq(int i) {
                    boolean s = ShakeAnimationView.this.p != null ? ShakeAnimationView.this.p.s() : false;
                    if (i == 1 && ShakeAnimationView.this.isShown() && ShakeAnimationView.this.mn != null) {
                        ShakeAnimationView.this.mn.dq(s);
                    }
                }
            });
            this.p.dq(this.kk);
            this.p.ox(this.ig);
            this.p.ox(this.o);
            this.p.dq(this.no);
            this.p.dq();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        i iVar = this.p;
        if (iVar != null) {
            iVar.d();
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        i iVar = this.p;
        if (iVar != null) {
            if (z) {
                iVar.dq();
            } else {
                iVar.d();
            }
        }
    }

    public void setOnShakeViewListener(dq dqVar) {
        this.mn = dqVar;
    }

    public void setShakeText(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.s.setText(str);
        } else {
            this.s.setVisibility(8);
            this.iw.setVisibility(8);
        }
    }
}
