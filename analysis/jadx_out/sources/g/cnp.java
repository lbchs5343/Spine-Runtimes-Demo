package g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Insets;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.C;

/* loaded from: classes3.dex */
public abstract class cnp extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public static final acv f13189a = new acv();

    /* renamed from: b, reason: collision with root package name */
    public ColorStateList f13190b;

    /* renamed from: c, reason: collision with root package name */
    public final int f13191c;

    /* renamed from: d, reason: collision with root package name */
    public Rect f13192d;

    /* renamed from: e, reason: collision with root package name */
    public int f13193e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f13194f;

    /* renamed from: g, reason: collision with root package name */
    public final float f13195g;
    public final float h;
    public cle i;
    public PorterDuff.Mode j;
    public final cjg k;
    public final int l;

    /* JADX WARN: Multi-variable type inference failed */
    public cnp(Context context, AttributeSet attributeSet) {
        super(egh.ax(context, attributeSet, 0, 0), attributeSet);
        GradientDrawable gradientDrawable;
        Drawable aw;
        Context context2 = getContext();
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, git.ad);
        if (obtainStyledAttributes.hasValue(6)) {
            setElevation(obtainStyledAttributes.getDimensionPixelSize(6, 0));
        }
        this.f13193e = obtainStyledAttributes.getInt(2, 0);
        if (obtainStyledAttributes.hasValue(8) || obtainStyledAttributes.hasValue(9)) {
            this.k = cjg.n(context2, attributeSet, 0, 0).n();
        }
        this.f13195g = obtainStyledAttributes.getFloat(3, 1.0f);
        setBackgroundTintList(gs.ai(context2, obtainStyledAttributes, 4));
        setBackgroundTintMode(ckd.r(obtainStyledAttributes.getInt(5, -1), PorterDuff.Mode.SRC_IN));
        this.h = obtainStyledAttributes.getFloat(1, 1.0f);
        this.l = obtainStyledAttributes.getDimensionPixelSize(0, -1);
        this.f13191c = obtainStyledAttributes.getDimensionPixelSize(7, -1);
        obtainStyledAttributes.recycle();
        setOnTouchListener(f13189a);
        setFocusable(true);
        if (getBackground() == null) {
            int ac = eyt.ac(eyt.bs(R.attr.colorSurface, this), getBackgroundOverlayColorAlpha(), eyt.bs(R.attr.colorOnSurface, this));
            cjg cjgVar = this.k;
            if (cjgVar != null) {
                fca fcaVar = cle.j;
                ddm ddmVar = new ddm(cjgVar);
                ddmVar.en(ColorStateList.valueOf(ac));
                gradientDrawable = ddmVar;
            } else {
                Resources resources = getResources();
                fca fcaVar2 = cle.j;
                float dimension = resources.getDimension(R.dimen.mtrl_snackbar_background_corner_radius);
                GradientDrawable gradientDrawable2 = new GradientDrawable();
                gradientDrawable2.setShape(0);
                gradientDrawable2.setCornerRadius(dimension);
                gradientDrawable2.setColor(ac);
                gradientDrawable = gradientDrawable2;
            }
            if (this.f13190b != null) {
                aw = dzm.aw(gradientDrawable);
                aw.setTintList(this.f13190b);
            } else {
                aw = dzm.aw(gradientDrawable);
            }
            setBackground(aw);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBaseTransientBottomBar(cle cleVar) {
        this.i = cleVar;
    }

    public float getActionTextColorAlpha() {
        return this.h;
    }

    public int getAnimationMode() {
        return this.f13193e;
    }

    public float getBackgroundOverlayColorAlpha() {
        return this.f13195g;
    }

    public int getMaxInlineActionWidth() {
        return this.f13191c;
    }

    public int getMaxWidth() {
        return this.l;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000d, code lost:
    
        r1 = r0.aa.getRootWindowInsets();
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onAttachedToWindow() {
        WindowInsets rootWindowInsets;
        Insets mandatorySystemGestureInsets;
        int i;
        super.onAttachedToWindow();
        cle cleVar = this.i;
        if (cleVar != null && Build.VERSION.SDK_INT >= 29 && rootWindowInsets != null) {
            mandatorySystemGestureInsets = rootWindowInsets.getMandatorySystemGestureInsets();
            i = mandatorySystemGestureInsets.bottom;
            cleVar.ad = i;
            cleVar.al();
        }
        requestApplyInsets();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        cle cleVar = this.i;
        if (cleVar == null || !cleVar.am()) {
            return;
        }
        cle.h.post(new fsd(cleVar, 1));
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        cle cleVar = this.i;
        if (cleVar == null || !cleVar.x) {
            return;
        }
        cleVar.aj();
        cleVar.x = false;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int i3 = this.l;
        if (i3 <= 0 || getMeasuredWidth() <= i3) {
            return;
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(i3, C.ENCODING_PCM_32BIT), i2);
    }

    public void setAnimationMode(int i) {
        this.f13193e = i;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable != null && this.f13190b != null) {
            drawable = dzm.aw(drawable.mutate());
            drawable.setTintList(this.f13190b);
            drawable.setTintMode(this.j);
        }
        super.setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        this.f13190b = colorStateList;
        if (getBackground() != null) {
            Drawable aw = dzm.aw(getBackground().mutate());
            aw.setTintList(colorStateList);
            aw.setTintMode(this.j);
            if (aw != getBackground()) {
                super.setBackgroundDrawable(aw);
            }
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        this.j = mode;
        if (getBackground() != null) {
            Drawable aw = dzm.aw(getBackground().mutate());
            aw.setTintMode(mode);
            if (aw != getBackground()) {
                super.setBackgroundDrawable(aw);
            }
        }
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super.setLayoutParams(layoutParams);
        if (this.f13194f || !(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        this.f13192d = new Rect(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
        cle cleVar = this.i;
        if (cleVar != null) {
            fca fcaVar = cle.j;
            cleVar.al();
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        setOnTouchListener(onClickListener != null ? null : f13189a);
        super.setOnClickListener(onClickListener);
    }
}
