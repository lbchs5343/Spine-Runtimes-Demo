package com.bytedance.sdk.openadsdk.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.component.utils.r;

/* loaded from: classes3.dex */
public class TTRatingBar2 extends FrameLayout {

    /* renamed from: d, reason: collision with root package name */
    LinearLayout f3910d;
    LinearLayout dq;
    private int ia;
    private int iw;
    private int kk;
    private int mn;
    private Drawable no;
    private Drawable o;
    private int ox;
    private int p;
    private double s;

    public TTRatingBar2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.dq = new LinearLayout(getContext());
        this.f3910d = new LinearLayout(getContext());
        this.dq.setOrientation(0);
        this.dq.setGravity(8388611);
        this.f3910d.setOrientation(0);
        this.f3910d.setGravity(8388611);
        this.o = r.ox(context, "tt_ratingbar_empty_star2");
        this.no = r.ox(context, "tt_ratingbar_full_star2");
    }

    private ImageView getStarImageView() {
        ImageView imageView = new ImageView(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.ox, this.p);
        layoutParams.leftMargin = this.iw;
        layoutParams.topMargin = this.mn;
        layoutParams.rightMargin = this.ia;
        layoutParams.bottomMargin = this.kk;
        imageView.setLayoutParams(layoutParams);
        return imageView;
    }

    public void dq() {
        removeAllViews();
        for (int i = 0; i < 5; i++) {
            ImageView starImageView = getStarImageView();
            starImageView.setImageDrawable(getFillStarDrawable());
            this.f3910d.addView(starImageView);
        }
        for (int i2 = 0; i2 < 5; i2++) {
            ImageView starImageView2 = getStarImageView();
            starImageView2.setImageDrawable(getEmptyStarDrawable());
            this.dq.addView(starImageView2);
        }
        addView(this.dq);
        addView(this.f3910d);
        requestLayout();
    }

    public void dq(int i, int i2) {
        this.ox = i2;
        this.p = i;
    }

    public void dq(int i, int i2, int i3, int i4) {
        this.iw = i;
        this.mn = i2;
        this.ia = i3;
        this.kk = i4;
    }

    public Drawable getEmptyStarDrawable() {
        return this.o;
    }

    public Drawable getFillStarDrawable() {
        return this.no;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.dq.measure(i, i2);
        double floor = Math.floor(this.s);
        int i3 = this.iw;
        int i4 = this.ia + i3;
        this.f3910d.measure(View.MeasureSpec.makeMeasureSpec((int) (((this.s - floor) * this.ox) + ((i4 + r2) * floor) + i3), C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(this.dq.getMeasuredHeight(), C.ENCODING_PCM_32BIT));
    }

    public void setRating(double d2) {
        this.s = d2;
    }
}
