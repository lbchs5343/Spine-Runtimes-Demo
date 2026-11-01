package g;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;

/* loaded from: classes.dex */
public final class erv extends Spinner {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f16060a = {R.attr.spinnerMode};

    /* renamed from: b, reason: collision with root package name */
    public final Rect f16061b;

    /* renamed from: c, reason: collision with root package name */
    public int f16062c;

    /* renamed from: d, reason: collision with root package name */
    public final rf f16063d;

    /* renamed from: e, reason: collision with root package name */
    public SpinnerAdapter f16064e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f16065f;

    /* renamed from: g, reason: collision with root package name */
    public final dum f16066g;
    public final Context h;
    public final uw i;

    /* JADX WARN: Code restructure failed: missing block: B:28:0x005e, code lost:
    
        if (r7 == null) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public erv(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, cn.trinea.android.developertools.R.attr.spinnerStyle);
        TypedArray typedArray;
        this.f16061b = new Rect();
        fgt.i(getContext(), this);
        int[] iArr = acs.k;
        dzh j = dzh.j(context, attributeSet, iArr, cn.trinea.android.developertools.R.attr.spinnerStyle);
        TypedArray typedArray2 = (TypedArray) j.f15121f;
        this.f16066g = new dum(this);
        int resourceId = typedArray2.getResourceId(4, 0);
        if (resourceId != 0) {
            this.h = new gzy(context, resourceId);
        } else {
            this.h = context;
        }
        int i = -1;
        TypedArray typedArray3 = null;
        try {
            typedArray = context.obtainStyledAttributes(attributeSet, f16060a, cn.trinea.android.developertools.R.attr.spinnerStyle, 0);
            try {
                if (typedArray.hasValue(0)) {
                    i = typedArray.getInt(0, 0);
                }
            } catch (Exception unused) {
            } catch (Throwable th) {
                th = th;
                typedArray3 = typedArray;
                if (typedArray3 != null) {
                    typedArray3.recycle();
                }
                throw th;
            }
        } catch (Exception unused2) {
            typedArray = null;
        } catch (Throwable th2) {
            th = th2;
        }
        typedArray.recycle();
        if (i == 0) {
            gen genVar = new gen(this);
            this.i = genVar;
            genVar.l = typedArray2.getString(2);
        } else if (i == 1) {
            cox coxVar = new cox(this, this.h, attributeSet);
            dzh j2 = dzh.j(this.h, attributeSet, iArr, cn.trinea.android.developertools.R.attr.spinnerStyle);
            this.f16062c = ((TypedArray) j2.f15121f).getLayoutDimension(3, -2);
            coxVar.a(j2.o(1));
            coxVar.l = typedArray2.getString(2);
            j2.af();
            this.i = coxVar;
            this.f16063d = new rf(this, this, coxVar);
        }
        CharSequence[] textArray = typedArray2.getTextArray(0);
        if (textArray != null) {
            ArrayAdapter arrayAdapter = new ArrayAdapter(context, R.layout.simple_spinner_item, textArray);
            arrayAdapter.setDropDownViewResource(cn.trinea.android.developertools.R.layout.support_simple_spinner_dropdown_item);
            setAdapter((SpinnerAdapter) arrayAdapter);
        }
        j.af();
        this.f16065f = true;
        SpinnerAdapter spinnerAdapter = this.f16064e;
        if (spinnerAdapter != null) {
            setAdapter(spinnerAdapter);
            this.f16064e = null;
        }
        this.f16066g.h(attributeSet, cn.trinea.android.developertools.R.attr.spinnerStyle);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        dum dumVar = this.f16066g;
        if (dumVar != null) {
            dumVar.j();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        uw uwVar = this.i;
        return uwVar != null ? uwVar.f() : super.getDropDownHorizontalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        uw uwVar = this.i;
        return uwVar != null ? uwVar.d() : super.getDropDownVerticalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        return this.i != null ? this.f16062c : super.getDropDownWidth();
    }

    public final uw getInternalPopup() {
        return this.i;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        uw uwVar = this.i;
        return uwVar != null ? uwVar.e() : super.getPopupBackground();
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.h;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        uw uwVar = this.i;
        return uwVar != null ? uwVar.c() : super.getPrompt();
    }

    public ColorStateList getSupportBackgroundTintList() {
        dum dumVar = this.f16066g;
        if (dumVar != null) {
            return dumVar.m();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        dum dumVar = this.f16066g;
        if (dumVar != null) {
            return dumVar.n();
        }
        return null;
    }

    public final int j(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int max = Math.max(0, getSelectedItemPosition());
        int min = Math.min(spinnerAdapter.getCount(), max + 15);
        View view = null;
        int i2 = 0;
        for (int max2 = Math.max(0, max - (15 - (min - max))); max2 < min; max2++) {
            int itemViewType = spinnerAdapter.getItemViewType(max2);
            if (itemViewType != i) {
                view = null;
                i = itemViewType;
            }
            view = spinnerAdapter.getView(max2, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i2 = Math.max(i2, view.getMeasuredWidth());
        }
        if (drawable == null) {
            return i2;
        }
        Rect rect = this.f16061b;
        drawable.getPadding(rect);
        return rect.left + rect.right + i2;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        uw uwVar = this.i;
        if (uwVar == null || !uwVar.isShowing()) {
            return;
        }
        uwVar.dismiss();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.i == null || View.MeasureSpec.getMode(i) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), j(getAdapter(), getBackground())), View.MeasureSpec.getSize(i)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        ddq ddqVar = (ddq) parcelable;
        super.onRestoreInstanceState(ddqVar.getSuperState());
        if (!ddqVar.mShowDropdown || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new fhv(0, this));
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final Parcelable onSaveInstanceState() {
        ddq ddqVar = new ddq(super.onSaveInstanceState());
        uw uwVar = this.i;
        ddqVar.mShowDropdown = uwVar != null && uwVar.isShowing();
        return ddqVar;
    }

    @Override // android.widget.Spinner, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        rf rfVar = this.f16063d;
        if (rfVar == null || !rfVar.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public final boolean performClick() {
        uw uwVar = this.i;
        if (uwVar == null) {
            return super.performClick();
        }
        if (uwVar.isShowing()) {
            return true;
        }
        this.i.b(getTextDirection(), getTextAlignment());
        return true;
    }

    @Override // android.widget.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f16065f) {
            this.f16064e = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        uw uwVar = this.i;
        if (uwVar != null) {
            Context context = this.h;
            if (context == null) {
                context = getContext();
            }
            Resources.Theme theme = context.getTheme();
            brk brkVar = new brk();
            brkVar.f12072a = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                brkVar.f12073b = (ListAdapter) spinnerAdapter;
            }
            if (theme != null && Build.VERSION.SDK_INT >= 23 && gnm.o(spinnerAdapter)) {
                cee.a(gnm.ac(spinnerAdapter), theme);
            }
            uwVar.h(brkVar);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        dum dumVar = this.f16066g;
        if (dumVar != null) {
            dumVar.i();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        dum dumVar = this.f16066g;
        if (dumVar != null) {
            dumVar.k(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i) {
        uw uwVar = this.i;
        if (uwVar == null) {
            super.setDropDownHorizontalOffset(i);
        } else {
            uwVar.j(i);
            uwVar.k(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i) {
        uw uwVar = this.i;
        if (uwVar != null) {
            uwVar.i(i);
        } else {
            super.setDropDownVerticalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i) {
        if (this.i != null) {
            this.f16062c = i;
        } else {
            super.setDropDownWidth(i);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        uw uwVar = this.i;
        if (uwVar != null) {
            uwVar.a(drawable);
        } else {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i) {
        setPopupBackgroundDrawable(fso.ai(getPopupContext(), i));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        uw uwVar = this.i;
        if (uwVar != null) {
            uwVar._cg(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        dum dumVar = this.f16066g;
        if (dumVar != null) {
            dumVar.g(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        dum dumVar = this.f16066g;
        if (dumVar != null) {
            dumVar.l(mode);
        }
    }
}
