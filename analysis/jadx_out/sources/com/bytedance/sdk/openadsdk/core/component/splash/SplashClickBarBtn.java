package com.bytedance.sdk.openadsdk.core.component.splash;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.PathInterpolator;
import android.view.animation.ScaleAnimation;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.i;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.ha;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wp;
import g.gkb;
import g.tn;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class SplashClickBarBtn extends RelativeLayout {
    private JSONObject bl;
    private final ValueAnimator cd;

    /* renamed from: d, reason: collision with root package name */
    private ha f2685d;
    private GradientDrawable dq;

    /* renamed from: e, reason: collision with root package name */
    private float f2686e;

    /* renamed from: f, reason: collision with root package name */
    private final AnimatorSet f2687f;
    private final ValueAnimator fw;
    private LinearGradient gh;
    private JSONObject h;
    private boolean i;
    private LinearLayout ia;
    private AnimatorSet ig;
    private j ir;
    private RelativeLayout iw;
    private JSONObject ji;
    private Paint jy;
    private com.bytedance.sdk.openadsdk.core.d.dq k;
    private SplashClickBarArrow kk;
    private float kx;
    private i le;
    private RelativeLayout mn;
    private Path mp;
    private int n;
    private RockView no;
    private SlideUpView o;
    private int op;
    private TextView ox;
    private TextView p;
    private Rect q;
    private int[] r;
    private gkb s;
    private float wp;

    public SplashClickBarBtn(Context context, j jVar) {
        super(context);
        this.f2685d = new ha();
        this.f2687f = new AnimatorSet();
        this.fw = new ValueAnimator();
        this.cd = new ValueAnimator();
        this.r = new int[]{Color.parseColor("#00FFFFFF"), Color.parseColor("#47FFFFFF"), Color.parseColor("#00FFFFFF")};
        this.i = false;
        this.wp = 13.0f;
        this.kx = 50.0f;
        this.ir = jVar;
        s();
    }

    private GradientDrawable dq(int i) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(i);
        gradientDrawable.setSize(32, 12);
        gradientDrawable.setStroke(1, -2130706433);
        gradientDrawable.setCornerRadius(ce.ox(wp.getContext(), 50.0f));
        return gradientDrawable;
    }

    private View dq(Context context) {
        Resources resources = context.getResources();
        RelativeLayout relativeLayout = new RelativeLayout(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        relativeLayout.setClipChildren(false);
        layoutParams.addRule(14);
        relativeLayout.setId(2114387580);
        relativeLayout.setLayoutParams(layoutParams);
        this.iw = new RelativeLayout(context);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        this.iw.setId(2114387579);
        this.iw.setClipChildren(false);
        layoutParams2.addRule(13);
        this.iw.setLayoutParams(layoutParams2);
        relativeLayout.addView(this.iw);
        this.no = new RockView(context);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        this.no.setId(2114387578);
        layoutParams3.addRule(14);
        this.no.setLayoutParams(layoutParams3);
        ce.dq((View) this.no, 8);
        this.iw.addView(this.no);
        this.mn = new RelativeLayout(context);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        this.mn.setId(2114387577);
        this.mn.setClipChildren(false);
        layoutParams4.addRule(13);
        this.mn.setGravity(17);
        this.mn.setLayoutParams(layoutParams4);
        this.iw.addView(this.mn);
        LinearLayout linearLayout = new LinearLayout(context);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams5.addRule(2, 2114387576);
        layoutParams5.addRule(14);
        linearLayout.setGravity(17);
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(layoutParams5);
        this.mn.addView(linearLayout);
        gkb gkbVar = new gkb(context);
        this.s = gkbVar;
        gkbVar.setId(2114387575);
        this.s.setAnimation("lottie_json/twist_multi_angle.json");
        this.s.setImageAssetsFolder("images/");
        this.s.dq(true);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams((int) TypedValue.applyDimension(1, 100.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 100.0f, resources.getDisplayMetrics()));
        layoutParams6.bottomMargin = ce.ox(context, 4.0f);
        layoutParams6.gravity = 17;
        this.s.setLayoutParams(layoutParams6);
        linearLayout.addView(this.s);
        ce.dq((View) this.s, 8);
        SlideUpView slideUpView = new SlideUpView(context);
        this.o = slideUpView;
        slideUpView.setId(2114387572);
        LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 200.0f, resources.getDisplayMetrics()));
        layoutParams7.topMargin = ce.ox(context, -140.0f);
        this.o.setLayoutParams(layoutParams7);
        linearLayout.addView(this.o);
        ce.dq((View) this.o, 8);
        LinearLayout linearLayout2 = new LinearLayout(context);
        this.ia = linearLayout2;
        linearLayout2.setId(2114387576);
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams8.addRule(12);
        this.ia.setGravity(17);
        this.ia.setOrientation(1);
        this.ia.setLayoutParams(layoutParams8);
        this.mn.addView(this.ia);
        TextView textView = new TextView(context);
        this.p = textView;
        LinearLayout.LayoutParams g2 = tn.g(textView, 2114387571, -2, -2);
        this.p.setSingleLine();
        this.p.setText(r.dq(context, "tt_splash_click_bar_text"));
        this.p.setTextColor(-1);
        this.p.setTextSize(20.0f);
        this.p.setTypeface(Typeface.defaultFromStyle(1));
        this.p.setLayoutParams(g2);
        this.ia.addView(this.p);
        ce.dq((View) this.p, 8);
        TextView textView2 = new TextView(context);
        this.ox = textView2;
        LinearLayout.LayoutParams g3 = tn.g(textView2, 2114387570, -2, -2);
        this.ox.setShadowLayer(2.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0.5f, r.kk(context, "tt_splash_click_bar_text_shadow"));
        this.ox.setSingleLine();
        this.ox.setText(r.dq(context, "tt_splash_click_bar_text"));
        this.ox.setTextColor(-1);
        this.ox.setTextSize(15.0f);
        this.ox.setTypeface(Typeface.defaultFromStyle(1));
        this.ox.setLayoutParams(g3);
        this.ia.addView(this.ox);
        ce.dq((View) this.ox, 8);
        return relativeLayout;
    }

    private void ia() {
        Point point = new Point(0, 0);
        Point point2 = new Point(getMeasuredWidth(), 0);
        Point point3 = new Point(getMeasuredWidth(), getMeasuredHeight());
        Point point4 = new Point(0, getMeasuredHeight());
        this.mp.moveTo(point.x, point.y);
        this.mp.lineTo(point2.x, point2.y);
        this.mp.lineTo(point3.x, point3.y);
        this.mp.lineTo(point4.x, point4.y);
        this.mp.close();
        this.q = getBackground().getBounds();
        final int ox = ce.ox(getContext(), 36.0f);
        final int ox2 = ce.ox(getContext(), 45.0f);
        this.fw.setIntValues(point.x - ox, point2.x + ox);
        this.fw.setInterpolator(new PathInterpolator(0.32f, 0.94f, 0.6f, 1.0f));
        this.fw.setDuration(1600L);
        this.fw.setStartDelay(1300L);
        this.fw.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.SplashClickBarBtn.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                SplashClickBarBtn.this.gh = new LinearGradient(((Integer) valueAnimator.getAnimatedValue()).intValue(), TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, r10 + ox, ox2, SplashClickBarBtn.this.r, (float[]) null, Shader.TileMode.CLAMP);
                SplashClickBarBtn.this.postInvalidate();
            }
        });
        this.f2687f.playTogether(this.fw);
    }

    private void iw() {
        if (this.i) {
            return;
        }
        this.i = true;
        int kk = this.f2685d.kk();
        if (kk == 1 || kk == 2) {
            ia();
            mn();
        }
    }

    private void kk() {
        if (this.f2685d != null && isShown()) {
            if (this.f2685d.kk() == 4 || this.f2685d.kk() == 7) {
                if (this.le == null) {
                    if (this.f2685d.kk() == 4) {
                        this.le = new i(wp.getContext(), 1, com.bytedance.sdk.openadsdk.core.no.ia().s());
                    } else if (this.f2685d.kk() == 7) {
                        this.le = new i(wp.getContext(), 2, com.bytedance.sdk.openadsdk.core.no.ia().s());
                    }
                }
                this.le.dq(this.wp);
                this.le.ox(this.f2686e);
                this.le.d(this.kx);
                this.le.dq(this.h);
                this.le.ox(this.ji);
                this.le.d(this.bl);
                this.le.dq(this.n);
                this.le.d(this.op);
                this.le.dq(new i.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.SplashClickBarBtn.3
                    @Override // com.bytedance.sdk.component.utils.i.dq
                    public void dq(int i) {
                        if (SplashClickBarBtn.this.k == null || !SplashClickBarBtn.this.isShown()) {
                            return;
                        }
                        if (SplashClickBarBtn.this.le.s() && SplashClickBarBtn.this.ir != null) {
                            com.bytedance.sdk.openadsdk.core.o.ox.ox.iw.p = true;
                        }
                        if (i == 1) {
                            if (SplashClickBarBtn.this.f2685d.kk() == 4) {
                                ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) SplashClickBarBtn.this.k.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).dq();
                                SplashClickBarBtn.this.k.onClick(SplashClickBarBtn.this);
                                return;
                            }
                            return;
                        }
                        if (i == 2 && SplashClickBarBtn.this.f2685d.kk() == 7) {
                            ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) SplashClickBarBtn.this.k.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).d();
                            SplashClickBarBtn.this.k.onClick(SplashClickBarBtn.this);
                        }
                    }
                });
                this.le.dq();
            }
        }
    }

    private void mn() {
        int parseColor = Color.parseColor("#57000000");
        int parseColor2 = Color.parseColor(this.f2685d.o());
        this.dq.setColor(parseColor);
        this.cd.setIntValues(parseColor, parseColor2);
        this.cd.setEvaluator(new ArgbEvaluator());
        this.cd.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.SplashClickBarBtn.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                SplashClickBarBtn.this.dq.setColor(((Integer) valueAnimator.getAnimatedValue()).intValue());
                SplashClickBarBtn splashClickBarBtn = SplashClickBarBtn.this;
                splashClickBarBtn.setBackgroundDrawable(splashClickBarBtn.dq);
            }
        });
        this.cd.setDuration(300L);
        this.cd.setStartDelay(800L);
        this.cd.setInterpolator(new PathInterpolator(0.32f, 0.94f, 0.6f, 1.0f));
        this.f2687f.playTogether(this.cd);
    }

    private void o() {
        ha haVar = this.f2685d;
        if (haVar == null || haVar.kk() != 5) {
            return;
        }
        postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.SplashClickBarBtn.7
            @Override // java.lang.Runnable
            public void run() {
                if (SplashClickBarBtn.this.o == null) {
                    return;
                }
                SplashClickBarBtn.this.o.dq();
                final AnimatorSet slideUpAnimatorSet = SplashClickBarBtn.this.o.getSlideUpAnimatorSet();
                if (slideUpAnimatorSet == null) {
                    return;
                }
                slideUpAnimatorSet.start();
                slideUpAnimatorSet.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.SplashClickBarBtn.7.1
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        SplashClickBarBtn.this.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.SplashClickBarBtn.7.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                slideUpAnimatorSet.start();
                            }
                        }, 200L);
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                    }
                });
            }
        }, 500L);
    }

    private void s() {
        View dq = dq(getContext());
        if (dq == null) {
            return;
        }
        addView(dq);
        SplashClickBarArrow splashClickBarArrow = new SplashClickBarArrow(getContext());
        this.kk = splashClickBarArrow;
        this.iw.addView(splashClickBarArrow);
        this.kk.setClipChildren(false);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.kk.getLayoutParams();
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.addRule(11);
        layoutParams.addRule(15);
        layoutParams.addRule(1, this.mn.getId());
        this.dq = dq(Color.parseColor("#57000000"));
        this.mp = new Path();
        Paint paint = new Paint();
        this.jy = paint;
        paint.isAntiAlias();
    }

    public void d() {
        if (this.f2685d.kk() != 3) {
            return;
        }
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 1.05f, 1.0f, 1.05f, getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f);
        scaleAnimation.setInterpolator(new PathInterpolator(0.41f, 0.23f, 0.25f, 1.0f));
        scaleAnimation.setDuration(600L);
        scaleAnimation.setRepeatMode(2);
        scaleAnimation.setRepeatCount(-1);
        startAnimation(scaleAnimation);
    }

    public void dq() {
        AnimatorSet animatorSet = this.ig;
        if (animatorSet != null) {
            animatorSet.start();
        }
        d();
        ox();
        p();
        o();
    }

    public void dq(com.bytedance.sdk.openadsdk.core.d.dq dqVar) {
        this.k = dqVar;
        if (this.f2685d.kk() == 4 || this.f2685d.kk() == 7 || this.f2685d.kk() == 5 || dqVar == null) {
            return;
        }
        dqVar.dq(this);
        setOnClickListener(dqVar);
        setOnTouchListener(dqVar);
        setId(2114387636);
    }

    public void dq(ha haVar) {
        if (haVar == null) {
            return;
        }
        this.f2685d = haVar;
        if (haVar.kk() == 4) {
            this.no.dq(this.f2685d);
            return;
        }
        TextView textView = this.ox;
        if (textView != null) {
            textView.setVisibility(0);
            this.ox.setText(TextUtils.isEmpty(this.f2685d.d()) ? "点击跳转至详情页或第三方应用" : this.f2685d.d());
            if (this.f2685d.ig() != null) {
                this.ox.setTextSize(2, this.f2685d.ig().d());
            }
        }
        if (this.p != null && this.f2685d.mp() != null) {
            this.p.setTextSize(2, this.f2685d.mp().d());
        }
        this.dq.setColor(Color.parseColor("#57000000"));
        this.kk.dq(this.f2685d.kk());
        int kk = this.f2685d.kk();
        if (kk == 1 || kk == 2) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.ig = animatorSet;
            animatorSet.playTogether(getAnimator(), this.kk.getAnimator());
        } else if (kk == 3) {
            TextView textView2 = this.p;
            if (textView2 != null) {
                textView2.setVisibility(0);
                this.p.setText(this.f2685d.no());
            }
            TextView textView3 = this.ox;
            if (textView3 != null) {
                textView3.setTypeface(Typeface.defaultFromStyle(0));
            }
            this.dq = dq(Color.parseColor(this.f2685d.o()));
        } else {
            if (kk == 4) {
                return;
            }
            if (kk == 5) {
                SlideUpView slideUpView = this.o;
                if (slideUpView != null) {
                    slideUpView.setVisibility(0);
                }
                LinearLayout linearLayout = this.ia;
                if (linearLayout != null) {
                    ViewGroup.LayoutParams layoutParams = linearLayout.getLayoutParams();
                    layoutParams.width = -1;
                    this.ia.setLayoutParams(layoutParams);
                }
                TextView textView4 = this.p;
                if (textView4 != null) {
                    textView4.setVisibility(0);
                    this.p.setShadowLayer(4.0f, 3.0f, 3.0f, Color.parseColor("#99000000"));
                    if (TextUtils.isEmpty(this.f2685d.no())) {
                        this.p.setText("向上滑动");
                    } else {
                        this.p.setText(this.f2685d.no());
                    }
                }
                TextView textView5 = this.ox;
                if (textView5 != null) {
                    textView5.setText(TextUtils.isEmpty(this.f2685d.d()) ? "滑动查看详情" : this.f2685d.d());
                    this.ox.setShadowLayer(4.0f, 3.0f, 3.0f, Color.parseColor("#99000000"));
                    return;
                }
                return;
            }
            if (kk == 7) {
                TextView textView6 = this.p;
                if (textView6 != null) {
                    textView6.setVisibility(0);
                    this.p.setText(this.f2685d.no());
                    this.p.setShadowLayer(4.0f, 3.0f, 3.0f, Color.parseColor("#99000000"));
                }
                TextView textView7 = this.ox;
                if (textView7 != null) {
                    textView7.setTypeface(Typeface.defaultFromStyle(0));
                    this.ox.setShadowLayer(4.0f, 3.0f, 3.0f, Color.parseColor("#99000000"));
                }
                gkb gkbVar = this.s;
                if (gkbVar != null) {
                    gkbVar.setVisibility(0);
                    return;
                }
                return;
            }
            this.dq.setStroke(0, -16777216);
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.ig = animatorSet2;
            animatorSet2.playTogether(getAnimator(), this.kk.getAnimator());
            try {
                setBackgroundColor(Color.parseColor(this.f2685d.o()));
            } catch (Throwable unused) {
                setBackgroundColor(Color.parseColor("#008DEA"));
            }
        }
        setBackgroundDrawable(this.dq);
    }

    public Animator getAnimator() {
        return this.f2687f;
    }

    public i getShakeUtils() {
        return this.le;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        kk();
        post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.SplashClickBarBtn.4
            @Override // java.lang.Runnable
            public void run() {
                SplashClickBarBtn.this.dq();
            }
        });
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        i iVar = this.le;
        if (iVar != null) {
            iVar.d();
        }
        AnimatorSet animatorSet = this.ig;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        AnimatorSet animatorSet2 = this.f2687f;
        if (animatorSet2 != null) {
            animatorSet2.cancel();
        }
        SlideUpView slideUpView = this.o;
        if (slideUpView != null) {
            slideUpView.d();
        }
        gkb gkbVar = this.s;
        if (gkbVar != null) {
            gkbVar.iw();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        iw();
        super.onDraw(canvas);
        if (this.fw.isRunning()) {
            this.jy.setShader(this.gh);
            canvas.drawRoundRect(new RectF(this.q), ce.ox(getContext(), 50.0f), ce.ox(getContext(), 50.0f), this.jy);
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        i iVar = this.le;
        if (iVar != null) {
            if (z) {
                iVar.dq();
            } else {
                iVar.d();
            }
        }
    }

    public void ox() {
        RockView rockView;
        if (this.f2685d.kk() == 4 && (rockView = this.no) != null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(rockView, "alpha", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
            ofFloat.setDuration(300L);
            ofFloat.start();
            postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.SplashClickBarBtn.5
                @Override // java.lang.Runnable
                public void run() {
                    if (SplashClickBarBtn.this.no != null) {
                        SplashClickBarBtn.this.no.dq();
                    }
                }
            }, 500L);
        }
    }

    public void p() {
        if (this.f2685d.kk() != 7) {
            return;
        }
        postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.SplashClickBarBtn.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (SplashClickBarBtn.this.s != null) {
                        SplashClickBarBtn.this.s.dq();
                    }
                } catch (Exception unused) {
                }
            }
        }, 500L);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.dq.setColor(i);
        setBackgroundDrawable(this.dq);
    }

    public void setCalculationMethod(int i) {
        this.n = i;
    }

    public void setCalculationTwistMethod(int i) {
        this.op = i;
    }

    public void setDeepShakeValue(float f2) {
        this.f2686e = f2;
    }

    public void setShakeInteractConf(JSONObject jSONObject) {
        this.ji = jSONObject;
    }

    public void setShakeValue(float f2) {
        this.wp = f2;
    }

    public void setTwistConfig(JSONObject jSONObject) {
        this.h = jSONObject;
    }

    public void setTwistInteractConf(JSONObject jSONObject) {
        this.bl = jSONObject;
    }

    public void setWriggleValue(float f2) {
        this.kx = f2;
    }
}
