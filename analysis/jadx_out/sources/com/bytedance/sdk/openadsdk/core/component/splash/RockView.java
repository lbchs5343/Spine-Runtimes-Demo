package com.bytedance.sdk.openadsdk.core.component.splash;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.ha;
import com.bytedance.sdk.openadsdk.core.wp;
import g.tn;

/* loaded from: classes3.dex */
public class RockView extends LinearLayout {

    /* renamed from: d, reason: collision with root package name */
    private TextView f2680d;
    private ImageView dq;
    private TextView ox;

    public static class dq implements Interpolator {
        private dq() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f2) {
            return f2 <= 0.25f ? (f2 * (-2.0f)) + 0.5f : f2 <= 0.5f ? (f2 * 4.0f) - 1.0f : f2 <= 0.75f ? (f2 * (-4.0f)) + 3.0f : (f2 * 2.0f) - 1.5f;
        }
    }

    public RockView(Context context) {
        super(context);
        d(context);
    }

    private void d(Context context) {
        if (context == null) {
            context = wp.getContext();
        }
        View dq2 = dq(context);
        if (dq2 == null) {
            return;
        }
        addView(dq2);
    }

    private View dq(Context context) {
        Resources resources = context.getResources();
        LinearLayout linearLayout = new LinearLayout(context);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(layoutParams);
        LinearLayout linearLayout2 = new LinearLayout(context);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams((int) TypedValue.applyDimension(1, 110.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 110.0f, resources.getDisplayMetrics()));
        layoutParams2.gravity = 17;
        ShapeDrawable shapeDrawable = new ShapeDrawable();
        OvalShape ovalShape = new OvalShape();
        int ox = ce.ox(context, 120.0f);
        shapeDrawable.setShape(ovalShape);
        shapeDrawable.setIntrinsicHeight(ox);
        shapeDrawable.setIntrinsicWidth(ox);
        shapeDrawable.getPaint().setColor(Color.parseColor("#57000000"));
        linearLayout2.setBackground(shapeDrawable);
        linearLayout2.setGravity(17);
        linearLayout2.setOrientation(1);
        linearLayout2.setLayoutParams(layoutParams2);
        linearLayout.addView(linearLayout2);
        ImageView imageView = new ImageView(context);
        this.dq = imageView;
        imageView.setId(2114387569);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams((int) TypedValue.applyDimension(1, 60.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 60.0f, resources.getDisplayMetrics()));
        Drawable ox2 = r.ox(context, "tt_splash_rock");
        if (ox2 != null) {
            this.dq.setImageDrawable(ox2);
        } else {
            com.bytedance.sdk.openadsdk.ia.d.dq(com.bytedance.sdk.openadsdk.core.mn.ox.dq("splash_rock.png")).dq(this.dq);
        }
        this.dq.setLayoutParams(layoutParams3);
        linearLayout2.addView(this.dq);
        TextView textView = new TextView(context);
        this.f2680d = textView;
        LinearLayout.LayoutParams g2 = tn.g(textView, 2114387567, -2, -2);
        this.f2680d.setSingleLine();
        this.f2680d.setText(r.dq(context, "tt_splash_rock_top"));
        this.f2680d.setTextColor(-1);
        this.f2680d.setTextSize(14.0f);
        this.f2680d.setLayoutParams(g2);
        linearLayout2.addView(this.f2680d);
        TextView textView2 = new TextView(context);
        this.ox = textView2;
        LinearLayout.LayoutParams g3 = tn.g(textView2, 2114387566, -2, -2);
        g3.gravity = 17;
        g3.topMargin = ce.ox(context, 12.0f);
        this.ox.setLayoutParams(g3);
        this.ox.setText(r.dq(context, "tt_splash_rock_desc"));
        this.ox.setShadowLayer(4.0f, 3.0f, 3.0f, Color.parseColor("#99000000"));
        this.ox.setTextColor(-1);
        linearLayout.addView(this.ox);
        return linearLayout;
    }

    public void dq() {
        if (this.dq != null) {
            final RotateAnimation rotateAnimation = new RotateAnimation(-14.0f, 14.0f, 1, 0.9f, 1, 0.9f);
            rotateAnimation.setInterpolator(new dq());
            rotateAnimation.setDuration(1000L);
            rotateAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.RockView.1
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    RockView.this.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.RockView.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            RockView.this.dq.startAnimation(rotateAnimation);
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
            this.dq.startAnimation(rotateAnimation);
        }
    }

    public void dq(ha haVar) {
        setVisibility(0);
        setAlpha(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        TextView textView = this.f2680d;
        if (textView != null) {
            textView.setText(haVar.no());
            this.f2680d.setTextSize(2, haVar.mp().d());
        }
        TextView textView2 = this.ox;
        if (textView2 != null) {
            textView2.setText(haVar.d());
            this.ox.setTextSize(2, haVar.ig().d());
            this.ox.setTypeface(Typeface.defaultFromStyle(0));
        }
    }
}
