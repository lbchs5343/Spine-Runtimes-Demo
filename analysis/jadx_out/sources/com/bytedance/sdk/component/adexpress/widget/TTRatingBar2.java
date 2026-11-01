package com.bytedance.sdk.component.adexpress.widget;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.component.adexpress.dynamic.p.no;
import com.bytedance.sdk.component.adexpress.p.mn;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public class TTRatingBar2 extends FrameLayout {
    private static final int kk = (no.d("", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, true)[1] / 2) + 1;
    private static final int o = (no.d("", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, true)[1] / 2) + 3;

    /* renamed from: d, reason: collision with root package name */
    LinearLayout f1826d;
    LinearLayout dq;
    private float ia;
    private Drawable iw;
    private double mn;
    private float ox;
    private float p;
    private Drawable s;

    public TTRatingBar2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.dq = new LinearLayout(getContext());
        this.f1826d = new LinearLayout(getContext());
        this.dq.setOrientation(0);
        this.dq.setGravity(8388611);
        this.f1826d.setOrientation(0);
        this.f1826d.setGravity(8388611);
        this.s = r.ox(context, "tt_star_thick");
        this.iw = r.ox(context, "tt_star");
    }

    private ImageView getStarImageView() {
        ImageView imageView = new ImageView(getContext());
        imageView.setLayoutParams(new ViewGroup.LayoutParams((int) this.ox, (int) this.p));
        imageView.setPadding(1, kk, 1, o);
        return imageView;
    }

    public void dq(double d2, int i, int i2, int i3) {
        float f2 = i2;
        this.ox = (int) mn.ox(getContext(), f2);
        this.p = (int) mn.ox(getContext(), f2);
        this.mn = d2;
        this.ia = i3;
        removeAllViews();
        for (int i4 = 0; i4 < 5; i4++) {
            ImageView starImageView = getStarImageView();
            starImageView.setScaleType(ImageView.ScaleType.FIT_XY);
            starImageView.setColorFilter(i, PorterDuff.Mode.SRC_IN);
            starImageView.setImageDrawable(getStarFillDrawable());
            this.f1826d.addView(starImageView);
        }
        for (int i5 = 0; i5 < 5; i5++) {
            ImageView starImageView2 = getStarImageView();
            starImageView2.setScaleType(ImageView.ScaleType.FIT_XY);
            starImageView2.setImageDrawable(getStarEmptyDrawable());
            this.dq.addView(starImageView2);
        }
        addView(this.dq);
        addView(this.f1826d);
        requestLayout();
    }

    public Drawable getStarEmptyDrawable() {
        return this.s;
    }

    public Drawable getStarFillDrawable() {
        return this.iw;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.dq.measure(i, i2);
        double d2 = this.mn;
        float f2 = this.ox;
        this.f1826d.measure(View.MeasureSpec.makeMeasureSpec((int) (((d2 - ((int) d2)) * (f2 - 2.0f)) + (((int) d2) * f2) + 1.0f), C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(this.dq.getMeasuredHeight(), C.ENCODING_PCM_32BIT));
        if (this.ia > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            this.dq.setPadding(0, ((int) (r7.getMeasuredHeight() - this.ia)) / 2, 0, 0);
            this.f1826d.setPadding(0, ((int) (this.dq.getMeasuredHeight() - this.ia)) / 2, 0, 0);
        }
    }
}
