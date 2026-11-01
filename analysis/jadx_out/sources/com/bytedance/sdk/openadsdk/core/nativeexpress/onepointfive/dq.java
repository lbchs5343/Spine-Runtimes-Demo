package com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.graphics.Paint;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.widget.recycler.RecyclerView;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.ir.ce;

/* loaded from: classes3.dex */
public class dq extends RecyclerView.k {

    /* renamed from: d, reason: collision with root package name */
    private TextView f3252d;
    private LoadingMoreView dq;
    private View i;
    private String k;
    private String le;
    private View ox;
    private View r;

    public dq(View view) {
        super(view);
        this.le = "";
        this.k = "";
        view.getContext();
        this.f3252d = (TextView) view.findViewById(2114387765);
        this.dq = (LoadingMoreView) view.findViewById(2114387710);
        this.ox = view.findViewById(2114387827);
        this.r = view.findViewById(2114387779);
        this.i = view.findViewById(2114387672);
        view.setVisibility(0);
    }

    private void d(int i, View view) {
        int i2;
        int abs = Math.abs(i);
        View view2 = this.ox;
        if (view2 != null) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view2.getLayoutParams();
            i2 = (int) (abs / 8.0f);
            layoutParams.width = i2;
            this.ox.setLayoutParams(layoutParams);
        } else {
            i2 = 0;
        }
        View view3 = this.r;
        if (view3 != null) {
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) view3.getLayoutParams();
            int i3 = (int) (abs / 8.0f);
            layoutParams2.width = i3;
            i2 += i3;
            this.r.setLayoutParams(layoutParams2);
        }
        if (view != null) {
            view.scrollTo(i2, view.getScrollY());
        }
    }

    private static int dq(float f2) {
        Paint paint = new Paint();
        paint.setTextSize(f2);
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        return ((int) Math.ceil(fontMetrics.descent - fontMetrics.top)) + 2;
    }

    private void dq(View view, long j, float f2, float f3) {
        if (this.f3252d != null) {
            AnimatorSet animatorSet = new AnimatorSet();
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "scaleX", f2, f3);
            ofFloat.setDuration(j);
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, "scaleY", f2, f3);
            ofFloat2.setDuration(j);
            ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(view, "scaleX", f3, f2);
            ofFloat3.setDuration(j);
            ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(view, "scaleY", f3, f2);
            ofFloat4.setDuration(j);
            animatorSet.play(ofFloat).with(ofFloat2);
            animatorSet.play(ofFloat3).with(ofFloat4);
            animatorSet.play(ofFloat).before(ofFloat3);
            animatorSet.start();
        }
    }

    public void d() {
        TextView textView = this.f3252d;
        if (textView != null) {
            textView.setText(this.le);
        }
    }

    public void d(View view) {
        d();
        this.dq.dq();
        View view2 = this.ox;
        if (view2 != null) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view2.getLayoutParams();
            layoutParams.width = 0;
            this.ox.setLayoutParams(layoutParams);
        }
        View view3 = this.r;
        if (view3 != null) {
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) view3.getLayoutParams();
            layoutParams2.width = 0;
            this.r.setLayoutParams(layoutParams2);
        }
        if (view != null) {
            view.scrollTo(0, view.getScrollY());
        }
    }

    public void dq() {
        TextView textView = this.f3252d;
        if (textView != null) {
            textView.setText(this.k);
        }
    }

    public void dq(double d2) {
        int length = this.le.length();
        try {
            this.p.setLayoutParams(new RecyclerView.o(-2, (int) d2));
            int dq = dq(ce.dq(this.p.getContext(), 14.0f));
            double d3 = 0.75d * d2;
            int i = 14;
            while (dq * length > d3) {
                i--;
                dq = dq(ce.dq(this.p.getContext(), i));
            }
            double d4 = d2 * 0.25d;
            while (dq * length < d4) {
                i++;
                dq = dq(ce.dq(this.p.getContext(), i));
            }
            if (i <= 0) {
                return;
            }
            this.f3252d.setTextSize(i);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void dq(int i, View view) {
        this.dq.setMoveSpace(i);
        d(i, view);
    }

    public void dq(final View view) {
        if (this.r != null) {
            d();
            final LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.r.getLayoutParams();
            final LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.ox.getLayoutParams();
            final LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) this.i.getLayoutParams();
            ValueAnimator ofFloat = ValueAnimator.ofFloat(layoutParams.width, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive.dq.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    float animatedFraction = valueAnimator.getAnimatedFraction();
                    dq.this.dq.setMoveSpace(((Float) valueAnimator.getAnimatedValue()).floatValue());
                    float f2 = 1.0f - animatedFraction;
                    int i = (int) (r4.width * f2);
                    layoutParams.width = i;
                    int i2 = (int) (r4.width * f2);
                    layoutParams2.width = i2;
                    int i3 = i + i2;
                    int i4 = (int) (r4.width * f2);
                    layoutParams3.width = i4;
                    int i5 = i3 + i4;
                    dq.this.r.setLayoutParams(layoutParams);
                    dq.this.ox.setLayoutParams(layoutParams2);
                    dq.this.i.setLayoutParams(layoutParams3);
                    View view2 = view;
                    if (view2 != null) {
                        view2.scrollTo(i5, view2.getScrollY());
                    }
                }
            });
            ofFloat.setInterpolator(new AccelerateInterpolator());
            ofFloat.setDuration(300L);
            ofFloat.start();
        }
    }

    public void dq(String str, String str2) {
        this.le = str2;
        this.k = str;
        d();
    }

    public void ox() {
        dq(this.f3252d, 200L, 1.0f, 1.05f);
    }
}
