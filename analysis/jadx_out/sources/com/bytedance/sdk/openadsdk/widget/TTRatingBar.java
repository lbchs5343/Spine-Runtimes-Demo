package com.bytedance.sdk.openadsdk.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.bytedance.sdk.component.utils.r;

/* loaded from: classes3.dex */
public class TTRatingBar extends LinearLayout {

    /* renamed from: d, reason: collision with root package name */
    private int f3909d;
    private int dq;
    private Drawable ia;
    private float iw;
    private Drawable kk;
    private Drawable mn;
    private int ox;
    private float p;
    private float s;

    public TTRatingBar(Context context) {
        super(context);
        this.dq = 5;
        this.f3909d = 0;
        this.ox = 0;
        dq(context);
    }

    private int dq(Context context, float f2) {
        return (int) ((f2 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    private void dq(Context context) {
        setOrientation(0);
        this.mn = r.ox(context, "tt_star_empty_bg");
        this.ia = r.ox(context, "tt_star_full_bg");
        this.kk = r.ox(context, "tt_star_empty_bg");
        this.p = dq(context, 15.0f);
        this.s = dq(context, 15.0f);
        this.iw = dq(context, 5.0f);
    }

    private ImageView getStarImageView() {
        ImageView imageView = new ImageView(getContext());
        imageView.setLayoutParams(new ViewGroup.LayoutParams(Math.round(this.p), Math.round(this.s)));
        imageView.setPadding(0, 0, Math.round(this.iw), 0);
        return imageView;
    }

    public void dq() {
        removeAllViews();
        for (int i = 0; i < getStarFillNum(); i++) {
            ImageView starImageView = getStarImageView();
            starImageView.setImageDrawable(getStarFillDrawable());
            addView(starImageView);
        }
        for (int i2 = 0; i2 < getStarHalfNum(); i2++) {
            ImageView starImageView2 = getStarImageView();
            starImageView2.setImageDrawable(getStarHalfDrawable());
            addView(starImageView2);
        }
        for (int i3 = 0; i3 < getStarEmptyNum(); i3++) {
            ImageView starImageView3 = getStarImageView();
            starImageView3.setImageDrawable(getStarEmptyDrawable());
            addView(starImageView3);
        }
    }

    public Drawable getStarEmptyDrawable() {
        return this.mn;
    }

    public int getStarEmptyNum() {
        return this.ox;
    }

    public Drawable getStarFillDrawable() {
        return this.ia;
    }

    public int getStarFillNum() {
        return this.dq;
    }

    public Drawable getStarHalfDrawable() {
        return this.kk;
    }

    public int getStarHalfNum() {
        return this.f3909d;
    }

    public float getStarImageHeight() {
        return this.s;
    }

    public float getStarImagePadding() {
        return this.iw;
    }

    public float getStarImageWidth() {
        return this.p;
    }

    public void setStarEmptyDrawable(Drawable drawable) {
        this.mn = drawable;
    }

    public void setStarEmptyNum(int i) {
        this.ox = i;
    }

    public void setStarFillDrawable(Drawable drawable) {
        this.ia = drawable;
    }

    public void setStarFillNum(int i) {
        this.dq = i;
    }

    public void setStarHalfDrawable(Drawable drawable) {
        this.kk = drawable;
    }

    public void setStarHalfNum(int i) {
        this.f3909d = i;
    }

    public void setStarImageHeight(float f2) {
        this.s = f2;
    }

    public void setStarImagePadding(float f2) {
        this.iw = f2;
    }

    public void setStarImageWidth(float f2) {
        this.p = f2;
    }
}
