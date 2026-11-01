package androidx.appcompat.widget;

import android.R;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.IBinder;
import android.text.InputFilter;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.C0258do;
import g.acs;
import g.bff;
import g.byh;
import g.cic;
import g.dfe;
import g.dnh;
import g.drs;
import g.dzh;
import g.dzm;
import g.edd;
import g.eyt;
import g.fgt;
import g.fso;
import g.goi;
import g.hej;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class SwitchCompat extends CompoundButton {

    /* renamed from: a, reason: collision with root package name */
    public static final dfe f106a = new dfe(12, Float.class, "thumbPos");

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f107b = {R.attr.state_checked};
    public CharSequence aa;

    /* renamed from: ab, reason: collision with root package name */
    public Drawable f108ab;
    public final TextPaint ac;
    public float ad;
    public final VelocityTracker ae;
    public int af;
    public boolean ag;
    public ColorStateList ah;
    public boolean ai;
    public float aj;
    public final drs ak;
    public int al;
    public ObjectAnimator am;
    public boolean an;
    public CharSequence ao;
    public int ap;
    public Drawable aq;
    public int ar;

    /* renamed from: c, reason: collision with root package name */
    public PorterDuff.Mode f109c;

    /* renamed from: d, reason: collision with root package name */
    public final Rect f110d;

    /* renamed from: e, reason: collision with root package name */
    public CharSequence f111e;

    /* renamed from: f, reason: collision with root package name */
    public int f112f;

    /* renamed from: g, reason: collision with root package name */
    public StaticLayout f113g;
    public ColorStateList h;
    public final int i;
    public float j;
    public CharSequence k;
    public StaticLayout l;
    public int m;
    public boolean n;
    public C0258do o;
    public int p;
    public PorterDuff.Mode q;
    public int r;
    public final ColorStateList s;
    public int t;
    public final int u;
    public int v;
    public boolean w;
    public boolean x;
    public int y;
    public boolean z;

    public SwitchCompat(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, cn.trinea.android.developertools.R.attr.switchStyle);
        int resourceId;
        this.ah = null;
        this.q = null;
        this.x = false;
        this.z = false;
        this.h = null;
        this.f109c = null;
        this.ag = false;
        this.n = false;
        this.ae = VelocityTracker.obtain();
        this.an = true;
        this.f110d = new Rect();
        fgt.i(getContext(), this);
        TextPaint textPaint = new TextPaint(1);
        this.ac = textPaint;
        textPaint.density = getResources().getDisplayMetrics().density;
        int[] iArr = acs.l;
        dzh j = dzh.j(context, attributeSet, iArr, cn.trinea.android.developertools.R.attr.switchStyle);
        TypedArray typedArray = (TypedArray) j.f15121f;
        goi.x(this, context, iArr, attributeSet, typedArray, cn.trinea.android.developertools.R.attr.switchStyle);
        Drawable o = j.o(2);
        this.f108ab = o;
        if (o != null) {
            o.setCallback(this);
        }
        Drawable o2 = j.o(11);
        this.aq = o2;
        if (o2 != null) {
            o2.setCallback(this);
        }
        setTextOnInternal(typedArray.getText(0));
        setTextOffInternal(typedArray.getText(1));
        this.w = typedArray.getBoolean(3, true);
        this.t = typedArray.getDimensionPixelSize(8, 0);
        this.r = typedArray.getDimensionPixelSize(5, 0);
        this.ap = typedArray.getDimensionPixelSize(6, 0);
        this.ai = typedArray.getBoolean(4, false);
        ColorStateList aa = j.aa(9);
        if (aa != null) {
            this.ah = aa;
            this.x = true;
        }
        PorterDuff.Mode f2 = edd.f(typedArray.getInt(10, -1), null);
        if (this.q != f2) {
            this.q = f2;
            this.z = true;
        }
        if (this.x || this.z) {
            as();
        }
        ColorStateList aa2 = j.aa(12);
        if (aa2 != null) {
            this.h = aa2;
            this.ag = true;
        }
        PorterDuff.Mode f3 = edd.f(typedArray.getInt(13, -1), null);
        if (this.f109c != f3) {
            this.f109c = f3;
            this.n = true;
        }
        if (this.ag || this.n) {
            at();
        }
        int resourceId2 = typedArray.getResourceId(7, 0);
        if (resourceId2 != 0) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(resourceId2, acs.m);
            ColorStateList colorStateList = (!obtainStyledAttributes.hasValue(3) || (resourceId = obtainStyledAttributes.getResourceId(3, 0)) == 0 || (colorStateList = eyt.bh(context, resourceId)) == null) ? obtainStyledAttributes.getColorStateList(3) : colorStateList;
            if (colorStateList != null) {
                this.s = colorStateList;
            } else {
                this.s = getTextColors();
            }
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(0, 0);
            if (dimensionPixelSize != 0) {
                float f4 = dimensionPixelSize;
                if (f4 != textPaint.getTextSize()) {
                    textPaint.setTextSize(f4);
                    requestLayout();
                }
            }
            int i = obtainStyledAttributes.getInt(1, -1);
            int i2 = obtainStyledAttributes.getInt(2, -1);
            Typeface typeface = i != 1 ? i != 2 ? i != 3 ? null : Typeface.MONOSPACE : Typeface.SERIF : Typeface.SANS_SERIF;
            float f5 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            if (i2 > 0) {
                Typeface defaultFromStyle = typeface == null ? Typeface.defaultFromStyle(i2) : Typeface.create(typeface, i2);
                setSwitchTypeface(defaultFromStyle);
                int i3 = (~(defaultFromStyle != null ? defaultFromStyle.getStyle() : 0)) & i2;
                textPaint.setFakeBoldText((i3 & 1) != 0);
                textPaint.setTextSkewX((2 & i3) != 0 ? -0.25f : f5);
            } else {
                textPaint.setFakeBoldText(false);
                textPaint.setTextSkewX(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                setSwitchTypeface(typeface);
            }
            if (obtainStyledAttributes.getBoolean(14, false)) {
                Context context2 = getContext();
                drs drsVar = new drs();
                drsVar.f14682a = context2.getResources().getConfiguration().locale;
                this.ak = drsVar;
            } else {
                this.ak = null;
            }
            setTextOnInternal(this.k);
            setTextOffInternal(this.ao);
            obtainStyledAttributes.recycle();
        }
        new cic(this).v(attributeSet, cn.trinea.android.developertools.R.attr.switchStyle);
        j.af();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.u = viewConfiguration.getScaledTouchSlop();
        this.i = viewConfiguration.getScaledMinimumFlingVelocity();
        getEmojiTextViewHelper().e(attributeSet, cn.trinea.android.developertools.R.attr.switchStyle);
        refreshDrawableState();
        setChecked(isChecked());
    }

    private C0258do getEmojiTextViewHelper() {
        if (this.o == null) {
            this.o = new C0258do(this);
        }
        return this.o;
    }

    private boolean getTargetCheckedState() {
        return this.ad > 0.5f;
    }

    private int getThumbOffset() {
        boolean z = dnh.f14457a;
        return (int) (((getLayoutDirection() == 1 ? 1.0f - this.ad : this.ad) * getThumbScrollRange()) + 0.5f);
    }

    private int getThumbScrollRange() {
        Drawable drawable = this.aq;
        if (drawable == null) {
            return 0;
        }
        Rect rect = this.f110d;
        drawable.getPadding(rect);
        Drawable drawable2 = this.f108ab;
        Rect e2 = drawable2 != null ? edd.e(drawable2) : edd.f15346c;
        return ((((this.al - this.p) - rect.left) - rect.right) - e2.left) - e2.right;
    }

    private void setTextOffInternal(CharSequence charSequence) {
        this.ao = charSequence;
        TransformationMethod bl = ((byh) getEmojiTextViewHelper().f14504b.f16548e).bl(this.ak);
        if (bl != null) {
            charSequence = bl.getTransformation(charSequence, this);
        }
        this.aa = charSequence;
        this.f113g = null;
        if (this.w) {
            ((byh) this.o.f14504b.f16548e).bg();
        }
    }

    private void setTextOnInternal(CharSequence charSequence) {
        this.k = charSequence;
        TransformationMethod bl = ((byh) getEmojiTextViewHelper().f14504b.f16548e).bl(this.ak);
        if (bl != null) {
            charSequence = bl.getTransformation(charSequence, this);
        }
        this.f111e = charSequence;
        this.l = null;
        if (this.w) {
            ((byh) this.o.f14504b.f16548e).bg();
        }
    }

    public final void as() {
        Drawable drawable = this.f108ab;
        if (drawable != null) {
            if (this.x || this.z) {
                Drawable mutate = dzm.aw(drawable).mutate();
                this.f108ab = mutate;
                if (this.x) {
                    mutate.setTintList(this.ah);
                }
                if (this.z) {
                    this.f108ab.setTintMode(this.q);
                }
                if (this.f108ab.isStateful()) {
                    this.f108ab.setState(getDrawableState());
                }
            }
        }
    }

    public final void at() {
        Drawable drawable = this.aq;
        if (drawable != null) {
            if (this.ag || this.n) {
                Drawable mutate = dzm.aw(drawable).mutate();
                this.aq = mutate;
                if (this.ag) {
                    mutate.setTintList(this.h);
                }
                if (this.n) {
                    this.aq.setTintMode(this.f109c);
                }
                if (this.aq.isStateful()) {
                    this.aq.setState(getDrawableState());
                }
            }
        }
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int i;
        int i2;
        int i3 = this.m;
        int i4 = this.y;
        int i5 = this.v;
        int i6 = this.ar;
        int thumbOffset = getThumbOffset() + i3;
        Drawable drawable = this.f108ab;
        Rect e2 = drawable != null ? edd.e(drawable) : edd.f15346c;
        Drawable drawable2 = this.aq;
        Rect rect = this.f110d;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            int i7 = rect.left;
            thumbOffset += i7;
            if (e2 != null) {
                int i8 = e2.left;
                if (i8 > i7) {
                    i3 += i8 - i7;
                }
                int i9 = e2.top;
                int i10 = rect.top;
                i = i9 > i10 ? (i9 - i10) + i4 : i4;
                int i11 = e2.right;
                int i12 = rect.right;
                if (i11 > i12) {
                    i5 -= i11 - i12;
                }
                int i13 = e2.bottom;
                int i14 = rect.bottom;
                if (i13 > i14) {
                    i2 = i6 - (i13 - i14);
                    this.aq.setBounds(i3, i, i5, i2);
                }
            } else {
                i = i4;
            }
            i2 = i6;
            this.aq.setBounds(i3, i, i5, i2);
        }
        Drawable drawable3 = this.f108ab;
        if (drawable3 != null) {
            drawable3.getPadding(rect);
            int i15 = thumbOffset - rect.left;
            int i16 = thumbOffset + this.p + rect.right;
            this.f108ab.setBounds(i15, i4, i16, i6);
            Drawable background = getBackground();
            if (background != null) {
                background.setHotspotBounds(i15, i4, i16, i6);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableHotspotChanged(float f2, float f3) {
        super.drawableHotspotChanged(f2, f3);
        Drawable drawable = this.f108ab;
        if (drawable != null) {
            drawable.setHotspot(f2, f3);
        }
        Drawable drawable2 = this.aq;
        if (drawable2 != null) {
            drawable2.setHotspot(f2, f3);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f108ab;
        boolean state = (drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState);
        Drawable drawable2 = this.aq;
        if (drawable2 != null && drawable2.isStateful()) {
            state |= drawable2.setState(drawableState);
        }
        if (state) {
            invalidate();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        boolean z = dnh.f14457a;
        if (getLayoutDirection() != 1) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.al;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingLeft + this.ap : compoundPaddingLeft;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        boolean z = dnh.f14457a;
        if (getLayoutDirection() == 1) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.al;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingRight + this.ap : compoundPaddingRight;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return bff.af(super.getCustomSelectionActionModeCallback());
    }

    public boolean getShowText() {
        return this.w;
    }

    public boolean getSplitTrack() {
        return this.ai;
    }

    public int getSwitchMinWidth() {
        return this.r;
    }

    public int getSwitchPadding() {
        return this.ap;
    }

    public CharSequence getTextOff() {
        return this.ao;
    }

    public CharSequence getTextOn() {
        return this.k;
    }

    public Drawable getThumbDrawable() {
        return this.f108ab;
    }

    public final float getThumbPosition() {
        return this.ad;
    }

    public int getThumbTextPadding() {
        return this.t;
    }

    public ColorStateList getThumbTintList() {
        return this.ah;
    }

    public PorterDuff.Mode getThumbTintMode() {
        return this.q;
    }

    public Drawable getTrackDrawable() {
        return this.aq;
    }

    public ColorStateList getTrackTintList() {
        return this.h;
    }

    public PorterDuff.Mode getTrackTintMode() {
        return this.f109c;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f108ab;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.aq;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.am;
        if (objectAnimator == null || !objectAnimator.isStarted()) {
            return;
        }
        this.am.end();
        this.am = null;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, f107b);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        int width;
        super.onDraw(canvas);
        Drawable drawable = this.aq;
        Rect rect = this.f110d;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i = this.y;
        int i2 = this.ar;
        int i3 = i + rect.top;
        int i4 = i2 - rect.bottom;
        Drawable drawable2 = this.f108ab;
        if (drawable != null) {
            if (!this.ai || drawable2 == null) {
                drawable.draw(canvas);
            } else {
                Rect e2 = edd.e(drawable2);
                drawable2.copyBounds(rect);
                rect.left += e2.left;
                rect.right -= e2.right;
                int save = canvas.save();
                canvas.clipRect(rect, Region.Op.DIFFERENCE);
                drawable.draw(canvas);
                canvas.restoreToCount(save);
            }
        }
        int save2 = canvas.save();
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        StaticLayout staticLayout = getTargetCheckedState() ? this.l : this.f113g;
        if (staticLayout != null) {
            int[] drawableState = getDrawableState();
            TextPaint textPaint = this.ac;
            ColorStateList colorStateList = this.s;
            if (colorStateList != null) {
                textPaint.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            textPaint.drawableState = drawableState;
            if (drawable2 != null) {
                Rect bounds = drawable2.getBounds();
                width = bounds.left + bounds.right;
            } else {
                width = getWidth();
            }
            canvas.translate((width / 2) - (staticLayout.getWidth() / 2), ((i3 + i4) / 2) - (staticLayout.getHeight() / 2));
            staticLayout.draw(canvas);
        }
        canvas.restoreToCount(save2);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("android.widget.Switch");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
        if (Build.VERSION.SDK_INT < 30) {
            CharSequence charSequence = isChecked() ? this.k : this.ao;
            if (TextUtils.isEmpty(charSequence)) {
                return;
            }
            CharSequence text = accessibilityNodeInfo.getText();
            if (TextUtils.isEmpty(text)) {
                accessibilityNodeInfo.setText(charSequence);
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(text);
            sb.append(' ');
            sb.append(charSequence);
            accessibilityNodeInfo.setText(sb);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int width;
        int i6;
        int i7;
        int i8;
        super.onLayout(z, i, i2, i3, i4);
        int i9 = 0;
        if (this.f108ab != null) {
            Drawable drawable = this.aq;
            Rect rect = this.f110d;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect e2 = edd.e(this.f108ab);
            i5 = Math.max(0, e2.left - rect.left);
            i9 = Math.max(0, e2.right - rect.right);
        } else {
            i5 = 0;
        }
        boolean z2 = dnh.f14457a;
        if (getLayoutDirection() == 1) {
            i6 = getPaddingLeft() + i5;
            width = ((this.al + i6) - i5) - i9;
        } else {
            width = (getWidth() - getPaddingRight()) - i9;
            i6 = (width - this.al) + i5 + i9;
        }
        int gravity = getGravity() & 112;
        if (gravity == 16) {
            int height = ((getHeight() + getPaddingTop()) - getPaddingBottom()) / 2;
            int i10 = this.af;
            int i11 = height - (i10 / 2);
            i7 = i10 + i11;
            i8 = i11;
        } else if (gravity != 80) {
            i8 = getPaddingTop();
            i7 = this.af + i8;
        } else {
            i7 = getHeight() - getPaddingBottom();
            i8 = i7 - this.af;
        }
        this.m = i6;
        this.y = i8;
        this.ar = i7;
        this.v = width;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5 = 0;
        if (this.w) {
            StaticLayout staticLayout = this.l;
            TextPaint textPaint = this.ac;
            if (staticLayout == null) {
                CharSequence charSequence = this.f111e;
                this.l = new StaticLayout(charSequence, textPaint, charSequence != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, true);
            }
            if (this.f113g == null) {
                CharSequence charSequence2 = this.aa;
                this.f113g = new StaticLayout(charSequence2, textPaint, charSequence2 != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence2, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, true);
            }
        }
        Drawable drawable = this.f108ab;
        Rect rect = this.f110d;
        if (drawable != null) {
            drawable.getPadding(rect);
            i3 = (this.f108ab.getIntrinsicWidth() - rect.left) - rect.right;
            i4 = this.f108ab.getIntrinsicHeight();
        } else {
            i3 = 0;
            i4 = 0;
        }
        this.p = Math.max(this.w ? (this.t * 2) + Math.max(this.l.getWidth(), this.f113g.getWidth()) : 0, i3);
        Drawable drawable2 = this.aq;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            i5 = this.aq.getIntrinsicHeight();
        } else {
            rect.setEmpty();
        }
        int i6 = rect.left;
        int i7 = rect.right;
        Drawable drawable3 = this.f108ab;
        if (drawable3 != null) {
            Rect e2 = edd.e(drawable3);
            i6 = Math.max(i6, e2.left);
            i7 = Math.max(i7, e2.right);
        }
        int max = this.an ? Math.max(this.r, (this.p * 2) + i6 + i7) : this.r;
        int max2 = Math.max(i5, i4);
        this.al = max;
        this.af = max2;
        super.onMeasure(i, i2);
        if (getMeasuredHeight() < max2) {
            setMeasuredDimension(getMeasuredWidthAndState(), max2);
        }
    }

    @Override // android.view.View
    public final void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.k : this.ao;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0015, code lost:
    
        if (r1 != 3) goto L82;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        VelocityTracker velocityTracker = this.ae;
        velocityTracker.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int i = this.u;
        if (actionMasked != 0) {
            float f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    int i2 = this.f112f;
                    if (i2 == 1) {
                        float x = motionEvent.getX();
                        float y = motionEvent.getY();
                        float f3 = i;
                        if (Math.abs(x - this.j) > f3 || Math.abs(y - this.aj) > f3) {
                            this.f112f = 2;
                            getParent().requestDisallowInterceptTouchEvent(true);
                            this.j = x;
                            this.aj = y;
                            return true;
                        }
                    } else if (i2 == 2) {
                        float x2 = motionEvent.getX();
                        int thumbScrollRange = getThumbScrollRange();
                        float f4 = x2 - this.j;
                        float f5 = thumbScrollRange != 0 ? f4 / thumbScrollRange : f4 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? 1.0f : -1.0f;
                        boolean z2 = dnh.f14457a;
                        if (getLayoutDirection() == 1) {
                            f5 = -f5;
                        }
                        float f6 = this.ad;
                        float f7 = f5 + f6;
                        if (f7 >= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                            f2 = f7 > 1.0f ? 1.0f : f7;
                        }
                        if (f2 != f6) {
                            this.j = x2;
                            setThumbPosition(f2);
                        }
                        return true;
                    }
                }
            }
            if (this.f112f == 2) {
                this.f112f = 0;
                boolean z3 = motionEvent.getAction() == 1 && isEnabled();
                boolean isChecked = isChecked();
                if (z3) {
                    velocityTracker.computeCurrentVelocity(1000);
                    float xVelocity = velocityTracker.getXVelocity();
                    if (Math.abs(xVelocity) > this.i) {
                        boolean z4 = dnh.f14457a;
                        z = getLayoutDirection() != 1 ? xVelocity > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT : xVelocity < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                    } else {
                        z = getTargetCheckedState();
                    }
                } else {
                    z = isChecked;
                }
                if (z != isChecked) {
                    playSoundEffect(0);
                }
                setChecked(z);
                MotionEvent obtain = MotionEvent.obtain(motionEvent);
                obtain.setAction(3);
                super.onTouchEvent(obtain);
                obtain.recycle();
                super.onTouchEvent(motionEvent);
                return true;
            }
            this.f112f = 0;
            velocityTracker.clear();
        } else {
            float x3 = motionEvent.getX();
            float y2 = motionEvent.getY();
            if (isEnabled() && this.f108ab != null) {
                int thumbOffset = getThumbOffset();
                Drawable drawable = this.f108ab;
                Rect rect = this.f110d;
                drawable.getPadding(rect);
                int i3 = this.y - i;
                int i4 = (this.m + thumbOffset) - i;
                int i5 = this.p + i4 + rect.left + rect.right + i;
                int i6 = this.ar + i;
                if (x3 > i4 && x3 < i5 && y2 > i3 && y2 < i6) {
                    this.f112f = 1;
                    this.j = x3;
                    this.aj = y2;
                }
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().f(z);
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        super.setChecked(z);
        boolean isChecked = isChecked();
        if (isChecked) {
            if (Build.VERSION.SDK_INT >= 30) {
                Object obj = this.k;
                if (obj == null) {
                    obj = getResources().getString(cn.trinea.android.developertools.R.string.abc_capital_on);
                }
                Object obj2 = obj;
                WeakHashMap weakHashMap = goi.f18490c;
                new hej(cn.trinea.android.developertools.R.id.tag_state_description, CharSequence.class, 64, 30, 2).f(this, obj2);
            }
        } else if (Build.VERSION.SDK_INT >= 30) {
            Object obj3 = this.ao;
            if (obj3 == null) {
                obj3 = getResources().getString(cn.trinea.android.developertools.R.string.abc_capital_off);
            }
            Object obj4 = obj3;
            WeakHashMap weakHashMap2 = goi.f18490c;
            new hej(cn.trinea.android.developertools.R.id.tag_state_description, CharSequence.class, 64, 30, 2).f(this, obj4);
        }
        IBinder windowToken = getWindowToken();
        float f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        if (windowToken == null || !isLaidOut()) {
            ObjectAnimator objectAnimator = this.am;
            if (objectAnimator != null) {
                objectAnimator.cancel();
            }
            if (isChecked) {
                f2 = 1.0f;
            }
            setThumbPosition(f2);
            return;
        }
        if (isChecked) {
            f2 = 1.0f;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, f106a, f2);
        this.am = ofFloat;
        ofFloat.setDuration(250L);
        this.am.setAutoCancel(true);
        this.am.start();
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(bff.ae(callback, this));
    }

    public void setEmojiCompatEnabled(boolean z) {
        getEmojiTextViewHelper().c(z);
        setTextOnInternal(this.k);
        setTextOffInternal(this.ao);
        requestLayout();
    }

    public final void setEnforceSwitchWidth(boolean z) {
        this.an = z;
        invalidate();
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().d(inputFilterArr));
    }

    public void setShowText(boolean z) {
        if (this.w != z) {
            this.w = z;
            requestLayout();
            if (z) {
                ((byh) this.o.f14504b.f16548e).bg();
            }
        }
    }

    public void setSplitTrack(boolean z) {
        this.ai = z;
        invalidate();
    }

    public void setSwitchMinWidth(int i) {
        this.r = i;
        requestLayout();
    }

    public void setSwitchPadding(int i) {
        this.ap = i;
        requestLayout();
    }

    public void setSwitchTypeface(Typeface typeface) {
        TextPaint textPaint = this.ac;
        if ((textPaint.getTypeface() == null || textPaint.getTypeface().equals(typeface)) && (textPaint.getTypeface() != null || typeface == null)) {
            return;
        }
        textPaint.setTypeface(typeface);
        requestLayout();
        invalidate();
    }

    public void setTextOff(CharSequence charSequence) {
        setTextOffInternal(charSequence);
        requestLayout();
        if (isChecked() || Build.VERSION.SDK_INT < 30) {
            return;
        }
        Object obj = this.ao;
        if (obj == null) {
            obj = getResources().getString(cn.trinea.android.developertools.R.string.abc_capital_off);
        }
        WeakHashMap weakHashMap = goi.f18490c;
        new hej(cn.trinea.android.developertools.R.id.tag_state_description, CharSequence.class, 64, 30, 2).f(this, obj);
    }

    public void setTextOn(CharSequence charSequence) {
        setTextOnInternal(charSequence);
        requestLayout();
        if (!isChecked() || Build.VERSION.SDK_INT < 30) {
            return;
        }
        Object obj = this.k;
        if (obj == null) {
            obj = getResources().getString(cn.trinea.android.developertools.R.string.abc_capital_on);
        }
        WeakHashMap weakHashMap = goi.f18490c;
        new hej(cn.trinea.android.developertools.R.id.tag_state_description, CharSequence.class, 64, 30, 2).f(this, obj);
    }

    public void setThumbDrawable(Drawable drawable) {
        Drawable drawable2 = this.f108ab;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f108ab = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setThumbPosition(float f2) {
        this.ad = f2;
        invalidate();
    }

    public void setThumbResource(int i) {
        setThumbDrawable(fso.ai(getContext(), i));
    }

    public void setThumbTextPadding(int i) {
        this.t = i;
        requestLayout();
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        this.ah = colorStateList;
        this.x = true;
        as();
    }

    public void setThumbTintMode(PorterDuff.Mode mode) {
        this.q = mode;
        this.z = true;
        as();
    }

    public void setTrackDrawable(Drawable drawable) {
        Drawable drawable2 = this.aq;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.aq = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setTrackResource(int i) {
        setTrackDrawable(fso.ai(getContext(), i));
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        this.h = colorStateList;
        this.ag = true;
        at();
    }

    public void setTrackTintMode(PorterDuff.Mode mode) {
        this.f109c = mode;
        this.n = true;
        at();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f108ab || drawable == this.aq;
    }
}
