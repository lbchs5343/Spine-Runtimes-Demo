package com.bytedance.sdk.openadsdk.core.component.reward.business.dq;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.p.mn;
import com.bytedance.sdk.component.iw.f;
import com.bytedance.sdk.component.iw.no;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.ats.ATSMethod;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.o;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.video.d.d;

/* loaded from: classes3.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private final j f2540d;
    private final TTBaseVideoActivity dq;
    private ObjectAnimator ia;
    private LinearLayout iw;
    private ObjectAnimator kk;
    private TextView mn;
    private final d o;
    private ImageView ox;
    private ViewGroup p;
    private View s;

    public dq(TTBaseVideoActivity tTBaseVideoActivity, j jVar, d dVar) {
        this.dq = tTBaseVideoActivity;
        this.f2540d = jVar;
        this.o = dVar;
    }

    private int s() {
        int identifier = this.dq.getResources().getIdentifier("navigation_bar_height", "dimen", "android");
        if (identifier > 0) {
            return this.dq.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public int d() {
        int identifier = this.dq.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return this.dq.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public void dq() {
        LinearLayout linearLayout = new LinearLayout(this.dq);
        this.iw = linearLayout;
        linearLayout.setGravity(1);
        this.iw.setPadding(0, ce.ox(this.dq, 16.0f), 0, 0);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, ce.ox(this.dq, 76.0f));
        TextView textView = new TextView(this.dq);
        this.mn = textView;
        textView.setTextSize(12.0f);
        this.mn.setTextColor(-1);
        this.mn.setSingleLine();
        this.mn.setEllipsize(TextUtils.TruncateAt.START);
        this.mn.setGravity(5);
        this.mn.setMaxWidth(ce.ox(this.dq, 260.0f));
        this.iw.addView(this.mn);
        TextView textView2 = new TextView(this.dq);
        textView2.setTextSize(12.0f);
        textView2.setTextColor(-1);
        textView2.setTypeface(Typeface.DEFAULT_BOLD);
        textView2.setGravity(17);
        textView2.setSingleLine();
        textView2.setText("取消");
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.business.dq.dq.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dq.this.p();
            }
        });
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.leftMargin = ce.ox(this.dq, 10.0f);
        this.iw.addView(textView2, layoutParams2);
        dq(25, pa.d(this.f2540d));
        int ox = ce.ox(this.dq, 76.0f);
        this.p.addView(this.iw, layoutParams);
        try {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.iw, "translationY", mn.d(this.dq), (r1 - ox) + (ce.ox((Activity) this.dq) ? (mn.ox(this.dq) - r1) - d() : s()));
            this.ia = ofFloat;
            ofFloat.setDuration(300L);
            this.ia.start();
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.s, "translationY", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, -ox);
            this.kk = ofFloat2;
            ofFloat2.setDuration(300L);
            this.kk.start();
        } catch (Throwable th) {
            ig.p("layout", th.getMessage());
        }
    }

    public void dq(final int i, String str) {
        com.bytedance.sdk.openadsdk.ia.d.dq(str).ox(2).dq(Bitmap.Config.ARGB_8888).dq(new f<Bitmap>() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.business.dq.dq.2
            @Override // com.bytedance.sdk.component.iw.f
            @ATSMethod(2)
            public void dq(int i2, String str2, Throwable th) {
            }

            @Override // com.bytedance.sdk.component.iw.f
            @ATSMethod(1)
            public void dq(no<Bitmap> noVar) {
                try {
                    Bitmap ox = noVar.ox();
                    if (ox == null) {
                        return;
                    }
                    if (ox.getConfig() == Bitmap.Config.RGB_565) {
                        ox = ox.copy(Bitmap.Config.ARGB_8888, true);
                    }
                    Bitmap dq = com.bytedance.sdk.component.adexpress.p.dq.dq(dq.this.dq, ox, i);
                    if (dq == null) {
                        return;
                    }
                    final BitmapDrawable bitmapDrawable = new BitmapDrawable(dq.this.dq.getResources(), dq);
                    com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.business.dq.dq.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (dq.this.iw != null) {
                                dq.this.iw.setBackgroundColor(Color.parseColor("#66000000"));
                            }
                            if (dq.this.ox != null) {
                                dq.this.ox.setImageDrawable(bitmapDrawable);
                            }
                        }
                    });
                } catch (Throwable th) {
                    ig.p("layout", th.getMessage());
                }
            }
        }, 4);
    }

    public void dq(long j) {
        TextView textView = this.mn;
        if (textView != null) {
            textView.setText("已为您加载更多详情，" + j + "秒后拉起展示");
        }
    }

    public void dq(ViewGroup viewGroup, View view) {
        this.p = viewGroup;
        this.s = view;
        this.ox = new ImageView(this.dq);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, ce.ox(this.dq, 76.0f));
        layoutParams.gravity = 80;
        this.ox.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.p.addView(this.ox, layoutParams);
    }

    public void dq(com.bytedance.sdk.openadsdk.core.d.d dVar) {
        o oVar = new o();
        oVar.d(true);
        if (dVar != null) {
            dVar.dq(oVar);
            dVar.dq(null, oVar);
        }
    }

    public void ox() {
        p();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.s, "alpha", 1.0f, 0.3f);
        ofFloat.setDuration(1000L);
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.business.dq.dq.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                dq.this.s.setAlpha(1.0f);
                dq.this.o.kk();
            }
        });
        ofFloat.start();
    }

    public void p() {
        ObjectAnimator objectAnimator = this.ia;
        if (objectAnimator != null && objectAnimator.isRunning()) {
            this.ia.cancel();
            this.ia = null;
        }
        ObjectAnimator objectAnimator2 = this.kk;
        if (objectAnimator2 != null && objectAnimator2.isRunning()) {
            this.kk.cancel();
            this.kk = null;
        }
        LinearLayout linearLayout = this.iw;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        View view = this.s;
        if (view != null) {
            view.setTranslationY(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        }
        ImageView imageView = this.ox;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
        this.o.ia();
    }
}
