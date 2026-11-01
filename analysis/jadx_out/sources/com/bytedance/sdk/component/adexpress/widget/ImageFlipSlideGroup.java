package com.bytedance.sdk.component.adexpress.widget;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Point;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicImageFlipSlide;
import com.bytedance.sdk.component.utils.kx;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.List;

/* loaded from: classes.dex */
public class ImageFlipSlideGroup extends FrameLayout {

    /* renamed from: d, reason: collision with root package name */
    BookPageView f1814d;
    FrameLayout dq;
    private ImageFlipSlide ia;
    private String ig;
    boolean iw;
    private String kk;
    boolean mn;
    private List<String> mp;
    private String no;
    private String o;
    ImageView ox;
    float p;
    ObjectAnimator s;

    public ImageFlipSlideGroup(Context context, boolean z) {
        super(context);
        this.p = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.mn = z;
        p();
        setVisibility(4);
        post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.widget.ImageFlipSlideGroup.1
            @Override // java.lang.Runnable
            public void run() {
                ImageFlipSlideGroup.this.setVisibility(0);
            }
        });
    }

    private void p() {
        ImageFlipSlide imageFlipSlide = new ImageFlipSlide(getContext(), this.mn);
        this.ia = imageFlipSlide;
        addView(imageFlipSlide);
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.dq = frameLayout;
        addView(frameLayout);
        if (!this.mn) {
            BookPageView bookPageView = new BookPageView(getContext());
            this.f1814d = bookPageView;
            this.dq.addView(bookPageView);
            return;
        }
        View view = new View(getContext());
        view.setBackgroundColor(-1);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(kx.dq(getContext(), 2.0f), -1);
        layoutParams.gravity = 17;
        this.dq.addView(view, layoutParams);
        ImageView imageView = new ImageView(getContext());
        imageView.setImageResource(r.s(getContext(), "tt_im_fs_handle"));
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(kx.dq(getContext(), 44.0f), kx.dq(getContext(), 44.0f));
        layoutParams2.gravity = 17;
        this.dq.addView(imageView, layoutParams2);
        ImageView imageView2 = new ImageView(getContext());
        this.ox = imageView2;
        imageView2.setImageResource(r.s(getContext(), "tt_im_fs_tip"));
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(kx.dq(getContext(), 196.0f), kx.dq(getContext(), 300.0f));
        layoutParams3.gravity = 17;
        layoutParams3.topMargin = kx.dq(getContext(), 6.0f);
        this.dq.addView(this.ox, layoutParams3);
    }

    public void d() {
        ObjectAnimator objectAnimator = this.s;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    public void d(String str, String str2) {
        this.o = str;
        this.ig = str2;
    }

    public void dq() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "ratio", 0.15f, 0.25f);
        this.s = ofFloat;
        ofFloat.setDuration(700L);
        this.s.setInterpolator(new LinearInterpolator());
        this.s.setRepeatCount(-1);
        this.s.setRepeatMode(2);
        this.s.start();
    }

    public void dq(final DynamicImageFlipSlide.dq dqVar) {
        if (this.iw) {
            if (dqVar != null) {
                dqVar.dq();
                return;
            }
            return;
        }
        this.iw = true;
        this.s.cancel();
        if (this.ox != null) {
            AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            alphaAnimation.setDuration(300L);
            alphaAnimation.setFillAfter(true);
            this.ox.setAnimation(alphaAnimation);
            alphaAnimation.start();
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "ratio", this.p, this.mn ? 1.1f : 1.3f);
        ofFloat.setDuration(500L);
        ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.widget.ImageFlipSlideGroup.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ImageFlipSlideGroup.this.dq.setVisibility(8);
                DynamicImageFlipSlide.dq dqVar2 = dqVar;
                if (dqVar2 != null) {
                    dqVar2.dq();
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        ofFloat.start();
    }

    public void dq(String str, String str2) {
        this.kk = str;
        this.no = str2;
    }

    public float getRatio() {
        return this.p;
    }

    public void ox() {
        if (TextUtils.isEmpty(this.o)) {
            this.ia.dq(this.kk, this.no, this.mp);
        } else {
            this.ia.dq(this.o, this.ig, (List<String>) null);
        }
    }

    public void setFilterColors(List<String> list) {
        this.mp = list;
    }

    public void setRatio(float f2) {
        this.p = f2;
        post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.widget.ImageFlipSlideGroup.2
            @Override // java.lang.Runnable
            public void run() {
                ImageFlipSlideGroup imageFlipSlideGroup = ImageFlipSlideGroup.this;
                if (imageFlipSlideGroup.mn) {
                    imageFlipSlideGroup.ia.dq(ImageFlipSlideGroup.this.p);
                    FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) ImageFlipSlideGroup.this.dq.getLayoutParams();
                    layoutParams.leftMargin = (int) (((1.0f - ImageFlipSlideGroup.this.p) - 0.5f) * r1.getWidth() * 2);
                    layoutParams.width = -1;
                    layoutParams.height = -1;
                    ImageFlipSlideGroup.this.dq.setLayoutParams(layoutParams);
                    return;
                }
                Point point = new Point();
                float width = ImageFlipSlideGroup.this.getWidth();
                float width2 = ImageFlipSlideGroup.this.getWidth();
                ImageFlipSlideGroup imageFlipSlideGroup2 = ImageFlipSlideGroup.this;
                point.x = ((int) (width - (width2 * imageFlipSlideGroup2.p))) - 100;
                float height = imageFlipSlideGroup2.getHeight();
                float width3 = ImageFlipSlideGroup.this.getWidth();
                ImageFlipSlideGroup imageFlipSlideGroup3 = ImageFlipSlideGroup.this;
                float f3 = imageFlipSlideGroup3.p;
                point.y = ((int) (height - (width3 * f3))) - 100;
                if (f3 > 0.3f) {
                    double d2 = point.x;
                    double width4 = imageFlipSlideGroup3.getWidth() * 2;
                    ImageFlipSlideGroup imageFlipSlideGroup4 = ImageFlipSlideGroup.this;
                    point.x = (int) (d2 - ((imageFlipSlideGroup4.p - 0.3d) * width4));
                    point.y = (int) (((ImageFlipSlideGroup.this.p - 0.3d) * (imageFlipSlideGroup4.getHeight() / 2)) + point.y);
                }
                ImageFlipSlideGroup.this.f1814d.dq(point);
                ImageFlipSlideGroup imageFlipSlideGroup5 = ImageFlipSlideGroup.this;
                imageFlipSlideGroup5.f1814d.setAlpha(1.0f - (imageFlipSlideGroup5.p - 0.3f));
                ImageFlipSlideGroup.this.ia.dq(ImageFlipSlideGroup.this.f1814d.getFilterAreaPath());
            }
        });
    }
}
