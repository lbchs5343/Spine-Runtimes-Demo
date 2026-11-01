package g;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.bykv.vk.component.ttvideo.player.C;

/* loaded from: classes.dex */
public final class fls extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public aok f17005a;

    /* renamed from: b, reason: collision with root package name */
    public Context f17006b;

    /* renamed from: c, reason: collision with root package name */
    public double f17007c;

    /* renamed from: d, reason: collision with root package name */
    public float f17008d;

    /* renamed from: e, reason: collision with root package name */
    public LinearLayout f17009e;

    /* renamed from: f, reason: collision with root package name */
    public float f17010f;

    /* renamed from: g, reason: collision with root package name */
    public float f17011g;
    public LinearLayout h;

    private ImageView getStarImageView() {
        ImageView imageView = new ImageView(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams((int) this.f17010f, (int) this.f17011g);
        float f2 = this.f17008d;
        layoutParams.leftMargin = (int) f2;
        layoutParams.topMargin = 0;
        layoutParams.rightMargin = (int) f2;
        layoutParams.bottomMargin = 1;
        imageView.setLayoutParams(layoutParams);
        return imageView;
    }

    public final void i(double d2, int i, int i2, float f2, int i3) {
        removeAllViews();
        LinearLayout linearLayout = this.f17009e;
        linearLayout.removeAllViews();
        LinearLayout linearLayout2 = this.h;
        linearLayout2.removeAllViews();
        Context context = this.f17006b;
        this.f17010f = (int) dxo.f(context, f2);
        this.f17011g = (int) dxo.f(context, f2);
        this.f17007c = d2;
        this.f17008d = i3;
        for (int i4 = 0; i4 < 5; i4++) {
            ImageView starImageView = getStarImageView();
            starImageView.setScaleType(ImageView.ScaleType.FIT_XY);
            starImageView.setImageResource(acw.as(context, "tt_ugen_rating_star", "drawable"));
            starImageView.setColorFilter(i, PorterDuff.Mode.SRC_IN);
            linearLayout2.addView(starImageView);
        }
        for (int i5 = 0; i5 < 5; i5++) {
            ImageView starImageView2 = getStarImageView();
            starImageView2.setScaleType(ImageView.ScaleType.FIT_XY);
            starImageView2.setImageResource(acw.as(context, "tt_ugen_rating_star", "drawable"));
            starImageView2.setColorFilter(i2);
            linearLayout.addView(starImageView2);
        }
        addView(linearLayout);
        addView(linearLayout2);
        requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        aok aokVar = this.f17005a;
        if (aokVar != null) {
            aokVar.mn();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        aok aokVar = this.f17005a;
        if (aokVar != null) {
            aokVar.ia();
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        aok aokVar = this.f17005a;
        if (aokVar != null) {
            aokVar.dq(i, i2, i3, i4);
        }
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        LinearLayout linearLayout = this.f17009e;
        aok aokVar = this.f17005a;
        if (aokVar != null) {
            aokVar.dq(i, i2);
        }
        super.onMeasure(i, i2);
        linearLayout.measure(i, i2);
        double floor = Math.floor(this.f17007c);
        float f2 = this.f17008d;
        this.h.measure(View.MeasureSpec.makeMeasureSpec((int) (((this.f17007c - floor) * this.f17010f) + ((f2 + f2 + r3) * floor) + f2), C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(linearLayout.getMeasuredHeight(), C.ENCODING_PCM_32BIT));
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        aok aokVar = this.f17005a;
        if (aokVar != null) {
            aokVar.d(i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        aok aokVar = this.f17005a;
        if (aokVar != null) {
            aokVar.dq(z);
        }
    }
}
