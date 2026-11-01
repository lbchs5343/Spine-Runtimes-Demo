package com.bytedance.sdk.openadsdk.core.component.splash;

import android.animation.Animator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Outline;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.iw.f;
import com.bytedance.sdk.component.utils.i;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.ats.ATSMethod;
import com.bytedance.sdk.openadsdk.core.component.splash.o;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.cv;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.ji;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.widget.TTRoundRectImageView;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
class p extends ox implements View.OnClickListener {
    private TextView cd;

    /* renamed from: f, reason: collision with root package name */
    private View f2756f;
    private RelativeLayout fw;
    private TextView gh;
    private TextView i;
    private View ia;
    private TextView ig;
    private RelativeLayout iw;
    private TextView jy;
    private View.OnClickListener k;
    private FrameLayout kk;
    private i le;
    private ImageView mn;
    private TextView mp;
    private ImageView no;
    private RelativeLayout o;
    private TextView q;
    private RelativeLayout r;
    protected com.bytedance.sdk.openadsdk.f.d.d.ia s;

    private View dq(Context context) {
        if (context == null) {
            return null;
        }
        Resources resources = context.getResources();
        RelativeLayout relativeLayout = new RelativeLayout(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        relativeLayout.setBackgroundColor(Color.parseColor("#B3000000"));
        relativeLayout.setLayoutParams(layoutParams);
        RelativeLayout relativeLayout2 = new RelativeLayout(context);
        this.iw = relativeLayout2;
        relativeLayout2.setId(2114387565);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 280.0f, resources.getDisplayMetrics()), -2);
        layoutParams2.addRule(13);
        this.iw.setClipChildren(false);
        this.iw.setVisibility(4);
        this.iw.setLayoutParams(layoutParams2);
        relativeLayout.addView(this.iw);
        ImageView imageView = new ImageView(context);
        this.ia = imageView;
        imageView.setId(2114387564);
        this.ia.setLayoutParams(new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 280.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 370.0f, resources.getDisplayMetrics())));
        this.iw.addView(this.ia);
        RelativeLayout relativeLayout3 = new RelativeLayout(context);
        relativeLayout3.setId(2114387563);
        relativeLayout3.setLayoutParams(new RelativeLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 130.0f, resources.getDisplayMetrics())));
        this.iw.addView(relativeLayout3);
        TextView textView = new TextView(context);
        this.q = textView;
        textView.setId(2114387562);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 40.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 24.0f, resources.getDisplayMetrics()));
        layoutParams3.addRule(10);
        layoutParams3.addRule(21);
        layoutParams3.topMargin = ce.ox(context, 8.0f);
        layoutParams3.bottomMargin = ce.ox(context, 10.0f);
        layoutParams3.rightMargin = ce.ox(context, 4.0f);
        this.q.setLayoutParams(layoutParams3);
        this.q.setBackground(r.ox(this.dq, "tt_splash_card_feedback_bg"));
        this.q.setGravity(17);
        this.q.setText(r.dq(this.dq, "tt_feedback"));
        this.q.setTextColor(Color.parseColor("#99FFFFFF"));
        this.q.setTextSize(2, 12.0f);
        relativeLayout3.addView(this.q);
        RelativeLayout relativeLayout4 = new RelativeLayout(context);
        this.o = relativeLayout4;
        relativeLayout4.setId(2114387561);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 240.0f, resources.getDisplayMetrics()));
        layoutParams4.addRule(3, 2114387563);
        this.o.setLayoutParams(layoutParams4);
        this.o.setBackgroundColor(Color.parseColor("#D9FFFFFF"));
        this.iw.addView(this.o);
        FrameLayout frameLayout = new FrameLayout(context);
        this.kk = frameLayout;
        frameLayout.setId(2114387560);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 84.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 84.0f, resources.getDisplayMetrics()));
        layoutParams5.addRule(14);
        layoutParams5.topMargin = ce.ox(context, -42.0f);
        this.kk.setElevation(ce.ox(context, 3.0f));
        this.kk.setLayoutParams(layoutParams5);
        this.o.addView(this.kk);
        ImageView imageView2 = new ImageView(context);
        this.no = imageView2;
        imageView2.setId(2114387559);
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams6.setMargins(ce.ox(context, 2.0f), ce.ox(context, 2.0f), ce.ox(context, 2.0f), ce.ox(context, 2.0f));
        this.no.setLayoutParams(layoutParams6);
        this.kk.addView(this.no);
        View view = new View(context);
        view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        int ox = ce.ox(context, 6.0f);
        gradientDrawable.setCornerRadius(ox);
        gradientDrawable.setStroke(ox / 3, -1);
        view.setBackground(gradientDrawable);
        this.kk.addView(view);
        TextView textView2 = new TextView(context);
        this.ig = textView2;
        textView2.setId(2114387558);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams7.addRule(3, 2114387560);
        layoutParams7.addRule(14);
        layoutParams7.topMargin = ce.ox(context, 16.0f);
        this.ig.setLayoutParams(layoutParams7);
        TextView textView3 = this.ig;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView3.setEllipsize(truncateAt);
        this.ig.setMaxLines(1);
        this.ig.setTextColor(Color.parseColor("#161823"));
        this.ig.setTextSize(2, 20.0f);
        this.o.addView(this.ig);
        TextView textView4 = new TextView(context);
        this.mp = textView4;
        textView4.setId(2114387557);
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams8.addRule(3, 2114387558);
        layoutParams8.addRule(14);
        layoutParams8.setMarginStart(ce.ox(context, 42.0f));
        layoutParams8.setMarginEnd(ce.ox(context, 42.0f));
        layoutParams8.topMargin = ce.ox(context, 8.0f);
        this.mp.setLayoutParams(layoutParams8);
        this.mp.setEllipsize(truncateAt);
        this.mp.setGravity(1);
        this.mp.setMaxLines(2);
        this.mp.setTextColor(Color.parseColor("#90161823"));
        this.mp.setTextSize(2, 14.0f);
        this.o.addView(this.mp);
        RelativeLayout relativeLayout5 = new RelativeLayout(context);
        this.fw = relativeLayout5;
        relativeLayout5.setId(2114387556);
        RelativeLayout.LayoutParams layoutParams9 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 192.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 36.0f, resources.getDisplayMetrics()));
        layoutParams9.addRule(3, 2114387557);
        layoutParams9.addRule(14);
        layoutParams9.topMargin = ce.ox(context, 36.0f);
        this.fw.setLayoutParams(layoutParams9);
        this.fw.setBackground(r.ox(this.dq, "tt_splash_card_btn_bg"));
        this.fw.setGravity(17);
        this.o.addView(this.fw);
        TextView textView5 = new TextView(context);
        this.cd = textView5;
        textView5.setId(2114387555);
        RelativeLayout.LayoutParams layoutParams10 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams10.addRule(14);
        this.cd.setLayoutParams(layoutParams10);
        this.cd.setEllipsize(truncateAt);
        this.cd.setMaxLines(1);
        this.cd.setTextColor(Color.parseColor("#FFFFFF"));
        this.cd.setTextSize(2, 14.0f);
        this.cd.setTypeface(Typeface.defaultFromStyle(1));
        this.fw.addView(this.cd);
        TextView textView6 = new TextView(context);
        this.gh = textView6;
        textView6.setId(2114387554);
        RelativeLayout.LayoutParams layoutParams11 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams11.addRule(3, 2114387555);
        layoutParams11.addRule(14);
        this.gh.setLayoutParams(layoutParams11);
        this.gh.setEllipsize(truncateAt);
        this.gh.setMaxLines(1);
        this.gh.setTextColor(Color.parseColor("#AAFFFFFF"));
        this.gh.setTextSize(2, 11.0f);
        this.fw.addView(this.gh);
        RelativeLayout relativeLayout6 = new RelativeLayout(context);
        this.r = relativeLayout6;
        relativeLayout6.setId(2114387553);
        RelativeLayout.LayoutParams layoutParams12 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 192.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 36.0f, resources.getDisplayMetrics()));
        layoutParams12.addRule(3, 2114387557);
        layoutParams12.addRule(14);
        layoutParams12.topMargin = ce.ox(context, 36.0f);
        this.r.setLayoutParams(layoutParams12);
        this.r.setBackground(r.ox(this.dq, "tt_splash_card_btn_bg"));
        this.r.setVisibility(8);
        this.o.addView(this.r);
        RelativeLayout relativeLayout7 = new RelativeLayout(context);
        RelativeLayout.LayoutParams layoutParams13 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams13.addRule(13);
        relativeLayout7.setLayoutParams(layoutParams13);
        this.r.addView(relativeLayout7);
        View imageView3 = new ImageView(context);
        imageView3.setId(2114387552);
        RelativeLayout.LayoutParams layoutParams14 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 23.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 24.0f, resources.getDisplayMetrics()));
        layoutParams14.addRule(9);
        layoutParams14.addRule(15);
        imageView3.setLayoutParams(layoutParams14);
        imageView3.setBackground(r.ox(this.dq, "tt_splash_card_shake"));
        relativeLayout7.addView(imageView3);
        TextView textView7 = new TextView(context);
        this.i = textView7;
        textView7.setId(2114387551);
        RelativeLayout.LayoutParams layoutParams15 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams15.leftMargin = ce.ox(context, 8.0f);
        layoutParams15.addRule(1, 2114387552);
        layoutParams15.addRule(15);
        this.i.setLayoutParams(layoutParams15);
        this.i.setEllipsize(truncateAt);
        this.i.setTypeface(Typeface.defaultFromStyle(1));
        this.i.setMaxLines(1);
        this.i.setTextColor(Color.parseColor("#FFFFFF"));
        this.i.setTextSize(2, 13.0f);
        relativeLayout7.addView(this.i);
        TextView textView8 = new TextView(context);
        this.jy = textView8;
        textView8.setId(2114387549);
        RelativeLayout.LayoutParams layoutParams16 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 36.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 14.0f, resources.getDisplayMetrics()));
        layoutParams16.addRule(20);
        layoutParams16.addRule(12);
        layoutParams16.setMarginStart(ce.ox(context, 8.0f));
        layoutParams16.bottomMargin = ce.ox(context, 8.0f);
        this.jy.setLayoutParams(layoutParams16);
        this.jy.setBackground(r.ox(this.dq, "tt_ad_logo_new"));
        this.o.addView(this.jy);
        ImageView imageView4 = new ImageView(context);
        this.f2756f = imageView4;
        imageView4.setId(2114387550);
        RelativeLayout.LayoutParams layoutParams17 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 32.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 32.0f, resources.getDisplayMetrics()));
        layoutParams17.addRule(3, 2114387565);
        layoutParams17.addRule(14);
        layoutParams17.topMargin = ce.ox(context, 48.0f);
        this.f2756f.setLayoutParams(layoutParams17);
        this.f2756f.setBackground(r.ox(this.dq, "tt_splash_card_close"));
        relativeLayout.addView(this.f2756f);
        TTRoundRectImageView tTRoundRectImageView = new TTRoundRectImageView(context);
        this.mn = tTRoundRectImageView;
        tTRoundRectImageView.setId(2114387548);
        this.mn.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.mn.setScaleType(ImageView.ScaleType.CENTER_CROP);
        relativeLayout.addView(this.mn);
        return relativeLayout;
    }

    private void dq(j jVar) {
        if (jVar == null || this.iw == null || cv.mn(jVar) != 1) {
            return;
        }
        ce.dq((View) this.r, 0);
        ce.dq((View) this.fw, 8);
        TextView textView = this.i;
        if (textView != null) {
            textView.setText(cv.iw(jVar));
        }
        if (this.le == null) {
            this.le = new i(wp.getContext(), 1, com.bytedance.sdk.openadsdk.core.no.ia().s());
        }
        this.le.dq(jVar.us());
        this.le.ox(jVar.hm());
        this.le.dq(jVar.mc());
        this.le.dq(new i.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.p.5
            @Override // com.bytedance.sdk.component.utils.i.dq
            public void dq(int i) {
                if (p.this.k == null || !p.this.iw.isShown() || i != 1 || p.this.k == null) {
                    return;
                }
                if (p.this.k instanceof com.bytedance.sdk.openadsdk.core.d.dq) {
                    ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) ((com.bytedance.sdk.openadsdk.core.d.dq) p.this.k).dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).dq();
                }
                p.this.k.onClick(p.this.iw);
            }
        });
        this.le.dq();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Runnable iw() {
        return new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.p.8
            @Override // java.lang.Runnable
            public void run() {
                if (p.this.mn.getWidth() == 0 || p.this.mn.getHeight() == 0) {
                    return;
                }
                p.this.mn.animate().scaleX(p.this.iw.getWidth() / p.this.mn.getWidth()).scaleY(p.this.iw.getHeight() / p.this.mn.getHeight()).setInterpolator(new OvershootInterpolator(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT)).setDuration(500L).setListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.p.8.1
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        p.this.mn.setVisibility(8);
                        p.this.iw.setVisibility(0);
                        p.this.kk.setScaleX(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                        p.this.kk.setScaleY(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                        p.this.kk.animate().scaleX(1.0f).scaleY(1.0f).setDuration(400L).start();
                        p.this.ig.setScaleX(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                        p.this.ig.setScaleY(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                        p.this.ig.animate().scaleX(1.0f).scaleY(1.0f).setDuration(400L).start();
                        p.this.mp.setScaleX(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                        p.this.mp.setScaleY(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                        p.this.mp.animate().scaleX(1.0f).scaleY(1.0f).setDuration(400L).start();
                        p.this.fw.setScaleX(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                        p.this.fw.setScaleY(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                        p.this.fw.animate().scaleX(1.0f).scaleY(1.0f).setDuration(400L).start();
                        o.dq dqVar = p.this.p;
                        if (dqVar != null) {
                            dqVar.dq(cv.ia(r5.ox));
                        }
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                    }
                });
            }
        };
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox
    public void d() {
        if (cv.o(this.ox)) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("splash_card_close_type", 2);
                com.bytedance.sdk.openadsdk.core.ig.ox.d(this.ox, "splash_ad", "splash_card_close", jSONObject);
                o.dq dqVar = this.p;
                if (dqVar != null) {
                    dqVar.d();
                }
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox
    public String dq() {
        return "splash_card_show";
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox
    public void dq(Context context, ViewGroup viewGroup, j jVar) {
        super.dq(context, viewGroup, jVar);
        View dq = dq(this.dq);
        if (dq == null) {
            return;
        }
        this.f2748d.addView(dq);
        this.iw.setOutlineProvider(new ViewOutlineProvider() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.p.1
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                if (outline == null) {
                    return;
                }
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), ce.ox(wp.getContext(), 18.0f));
            }
        });
        this.iw.setClipToOutline(true);
        this.mn.setOutlineProvider(new ViewOutlineProvider() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.p.2
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                if (outline == null) {
                    return;
                }
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), ce.ox(wp.getContext(), 28.0f));
            }
        });
        this.mn.setClipToOutline(true);
        ce.dq(this.jy, this.ox);
        List<ji> oh = this.ox.oh();
        if (oh != null && oh.size() > 0) {
            com.bytedance.sdk.openadsdk.ia.d.dq(oh.get(0)).ox(2).dq(Bitmap.Config.ARGB_8888).dq(new f<Bitmap>() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.p.3
                @Override // com.bytedance.sdk.component.iw.f
                @ATSMethod(2)
                public void dq(int i, String str, Throwable th) {
                }

                @Override // com.bytedance.sdk.component.iw.f
                @ATSMethod(1)
                public void dq(com.bytedance.sdk.component.iw.no<Bitmap> noVar) {
                    Bitmap ox = noVar.ox();
                    if (ox == null) {
                        return;
                    }
                    try {
                        if (ox.getConfig() == Bitmap.Config.RGB_565) {
                            ox = ox.copy(Bitmap.Config.ARGB_8888, true);
                        }
                    } catch (Throwable unused) {
                    }
                    Bitmap dq2 = com.bytedance.sdk.component.adexpress.p.dq.dq(p.this.dq, ox, 10);
                    if (dq2 == null) {
                        return;
                    }
                    final BitmapDrawable bitmapDrawable = new BitmapDrawable(p.this.dq.getResources(), dq2);
                    com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.p.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (p.this.ia != null) {
                                p.this.ia.setBackground(bitmapDrawable);
                            }
                            if (p.this.mn != null) {
                                p.this.mn.setBackground(bitmapDrawable);
                            }
                        }
                    });
                }
            }, 4);
        }
        com.bytedance.sdk.openadsdk.ia.d.dq(this.ox.wq()).dq(this.no);
        this.ig.setText(ox());
        this.mp.setText(p());
        this.q.setVisibility(this.ox.qc() ? 0 : 8);
        this.q.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.p.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                p.this.s();
            }
        });
        this.cd.setText(cv.iw(this.ox));
        this.gh.setText(cv.s(this.ox));
        dq(this.ox);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox
    public void dq(com.bytedance.sdk.openadsdk.core.d.dq dqVar) {
        if (dqVar == null) {
            return;
        }
        this.k = dqVar;
        if (cv.kk(this.ox)) {
            this.iw.setOnClickListener(this);
            this.ia.setOnClickListener(this);
            this.no.setOnClickListener(this);
            this.ig.setOnClickListener(this);
            this.mp.setOnClickListener(this);
            this.o.setOnClickListener(this);
        }
        this.fw.setOnClickListener(this);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox
    public void dq(com.bytedance.sdk.openadsdk.core.le.dq.d dVar, com.bytedance.sdk.openadsdk.core.video.nativevideo.ox oxVar, o.dq dqVar) {
        super.dq(dVar, oxVar, dqVar);
        this.f2748d.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.p.6
            @Override // java.lang.Runnable
            public void run() {
                if (p.this.iw.isAttachedToWindow()) {
                    p.this.iw().run();
                } else {
                    p pVar = p.this;
                    pVar.f2748d.postDelayed(pVar.iw(), 20L);
                }
            }
        });
        if (this.p != null) {
            this.f2756f.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.p.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("splash_card_close_type", 1);
                        com.bytedance.sdk.openadsdk.core.ig.ox.d(p.this.ox, "splash_ad", "splash_card_close", jSONObject);
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                    p.this.p.d();
                }
            });
        }
        cv.dq();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox
    public void dq(boolean z) {
        super.dq(z);
        o.dq dqVar = this.p;
        if (dqVar == null) {
            return;
        }
        if (z) {
            dqVar.dq(-1L);
        } else {
            dqVar.dq();
        }
        i iVar = this.le;
        if (iVar != null) {
            if (z) {
                iVar.dq();
            } else {
                iVar.d();
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int i = view.getId() == 2114387556 ? 0 : view.getId() == 2114387564 ? 1 : view.getId() == 2114387559 ? 2 : view.getId() == 2114387558 ? 3 : view.getId() == 2114387557 ? 4 : 5;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("splash_card_click_type", i);
            com.bytedance.sdk.openadsdk.core.ig.ox.d(this.ox, "splash_ad", "splash_card_click", jSONObject);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        View.OnClickListener onClickListener = this.k;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    public String ox() {
        j jVar = this.ox;
        return jVar == null ? "" : !TextUtils.isEmpty(jVar.w()) ? this.ox.w() : (this.ox.gm() == null || TextUtils.isEmpty(this.ox.gm().ox())) ? "" : this.ox.gm().ox();
    }

    public String p() {
        j jVar = this.ox;
        return (jVar == null || TextUtils.isEmpty(jVar.lk())) ? "" : this.ox.lk();
    }

    public void s() {
        o.dq dqVar = this.p;
        if (dqVar == null) {
            return;
        }
        if (this.s == null) {
            this.s = new com.bytedance.sdk.openadsdk.core.dislike.ui.dq(dqVar.getActivity(), this.ox.ez(), "splash_ad", true);
            com.bytedance.sdk.openadsdk.core.dislike.ox.dq(this.p.getActivity(), (com.bytedance.sdk.openadsdk.core.dislike.ui.dq) this.s, this.ox);
        }
        this.s.dq("splash_card");
        this.s.dq();
    }
}
