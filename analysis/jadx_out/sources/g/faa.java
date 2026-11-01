package g;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AdapterView;
import android.widget.Filterable;
import android.widget.ListAdapter;
import cn.trinea.android.developertools.R;
import com.google.android.material.textfield.TextInputLayout;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class faa extends dzp {

    /* renamed from: a, reason: collision with root package name */
    public final int f16450a;

    /* renamed from: b, reason: collision with root package name */
    public final Rect f16451b;

    /* renamed from: c, reason: collision with root package name */
    public ColorStateList f16452c;
    public ColorStateList h;
    public int i;
    public final cfi j;
    public final float k;
    public final AccessibilityManager l;

    public faa(Context context, AttributeSet attributeSet) {
        super(egh.ax(context, attributeSet, R.attr.autoCompleteTextViewStyle, 0), attributeSet);
        this.f16451b = new Rect();
        Context context2 = getContext();
        TypedArray bd = eyt.bd(context2, attributeSet, git.w, R.attr.autoCompleteTextViewStyle, 2131952571, new int[0]);
        if (bd.hasValue(0) && bd.getInt(0, 0) == 0) {
            setKeyListener(null);
        }
        this.f16450a = bd.getResourceId(3, R.layout.mtrl_auto_complete_simple_item);
        this.k = bd.getDimensionPixelOffset(1, R.dimen.mtrl_exposed_dropdown_menu_popup_elevation);
        if (bd.hasValue(2)) {
            this.f16452c = ColorStateList.valueOf(bd.getColor(2, 0));
        }
        this.i = bd.getColor(4, 0);
        this.h = gs.ai(context2, bd, 5);
        this.l = (AccessibilityManager) context2.getSystemService("accessibility");
        cfi cfiVar = new cfi(context2, null, R.attr.listPopupWindowStyle, 0);
        this.j = cfiVar;
        cfiVar.t = true;
        cfiVar.ag.setFocusable(true);
        cfiVar.v = this;
        cfiVar.ag.setInputMethodMode(2);
        cfiVar.h(getAdapter());
        cfiVar.q = new yq(1, this);
        if (bd.hasValue(6)) {
            setSimpleItems(bd.getResourceId(6, 0));
        }
        bd.recycle();
    }

    @Override // android.widget.AutoCompleteTextView
    public final void dismissDropDown() {
        if (o()) {
            this.j.dismiss();
        } else {
            super.dismissDropDown();
        }
    }

    public ColorStateList getDropDownBackgroundTintList() {
        return this.f16452c;
    }

    @Override // android.widget.TextView
    public CharSequence getHint() {
        TextInputLayout n = n();
        return (n == null || !n.ad) ? super.getHint() : n.getHint();
    }

    public float getPopupElevation() {
        return this.k;
    }

    public int getSimpleItemSelectedColor() {
        return this.i;
    }

    public ColorStateList getSimpleItemSelectedRippleColor() {
        return this.h;
    }

    public final TextInputLayout n() {
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof TextInputLayout) {
                return (TextInputLayout) parent;
            }
        }
        return null;
    }

    public final boolean o() {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList;
        AccessibilityManager accessibilityManager = this.l;
        if (accessibilityManager != null && accessibilityManager.isTouchExplorationEnabled()) {
            return true;
        }
        if (accessibilityManager == null || !accessibilityManager.isEnabled() || (enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(16)) == null) {
            return false;
        }
        for (AccessibilityServiceInfo accessibilityServiceInfo : enabledAccessibilityServiceList) {
            if (accessibilityServiceInfo.getSettingsActivityName() != null && accessibilityServiceInfo.getSettingsActivityName().contains("SwitchAccess")) {
                return true;
            }
        }
        return false;
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextInputLayout n = n();
        if (n != null && n.ad && super.getHint() == null) {
            String str = Build.MANUFACTURER;
            if ((str != null ? str.toLowerCase(Locale.ENGLISH) : "").equals("meizu")) {
                setHint("");
            }
        }
    }

    @Override // android.widget.AutoCompleteTextView, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.j.dismiss();
    }

    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            int measuredWidth = getMeasuredWidth();
            ListAdapter adapter = getAdapter();
            TextInputLayout n = n();
            int i3 = 0;
            if (adapter != null && n != null) {
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
                int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
                cfi cfiVar = this.j;
                int min = Math.min(adapter.getCount(), Math.max(0, !cfiVar.ag.isShowing() ? -1 : cfiVar.x.getSelectedItemPosition()) + 15);
                View view = null;
                int i4 = 0;
                for (int max = Math.max(0, min - 15); max < min; max++) {
                    int itemViewType = adapter.getItemViewType(max);
                    if (itemViewType != i3) {
                        view = null;
                        i3 = itemViewType;
                    }
                    view = adapter.getView(max, view, n);
                    if (view.getLayoutParams() == null) {
                        view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
                    }
                    view.measure(makeMeasureSpec, makeMeasureSpec2);
                    i4 = Math.max(i4, view.getMeasuredWidth());
                }
                Drawable background = cfiVar.ag.getBackground();
                if (background != null) {
                    Rect rect = this.f16451b;
                    background.getPadding(rect);
                    i4 += rect.left + rect.right;
                }
                i3 = n.getEndIconView().getMeasuredWidth() + i4;
            }
            setMeasuredDimension(Math.min(Math.max(measuredWidth, i3), View.MeasureSpec.getSize(i)), getMeasuredHeight());
        }
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public final void onWindowFocusChanged(boolean z) {
        if (o()) {
            return;
        }
        super.onWindowFocusChanged(z);
    }

    @Override // android.widget.AutoCompleteTextView
    public <T extends ListAdapter & Filterable> void setAdapter(T t) {
        super.setAdapter(t);
        this.j.h(getAdapter());
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundDrawable(Drawable drawable) {
        super.setDropDownBackgroundDrawable(drawable);
        cfi cfiVar = this.j;
        if (cfiVar != null) {
            cfiVar.a(drawable);
        }
    }

    public void setDropDownBackgroundTint(int i) {
        setDropDownBackgroundTintList(ColorStateList.valueOf(i));
    }

    public void setDropDownBackgroundTintList(ColorStateList colorStateList) {
        this.f16452c = colorStateList;
        Drawable dropDownBackground = getDropDownBackground();
        if (dropDownBackground instanceof ddm) {
            ((ddm) dropDownBackground).en(this.f16452c);
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public void setOnItemSelectedListener(AdapterView.OnItemSelectedListener onItemSelectedListener) {
        super.setOnItemSelectedListener(onItemSelectedListener);
        this.j.am = getOnItemSelectedListener();
    }

    @Override // android.widget.TextView
    public void setRawInputType(int i) {
        super.setRawInputType(i);
        TextInputLayout n = n();
        if (n != null) {
            n.cm();
        }
    }

    public void setSimpleItemSelectedColor(int i) {
        this.i = i;
        if (getAdapter() instanceof dcx) {
            ((dcx) getAdapter()).d();
        }
    }

    public void setSimpleItemSelectedRippleColor(ColorStateList colorStateList) {
        this.h = colorStateList;
        if (getAdapter() instanceof dcx) {
            ((dcx) getAdapter()).d();
        }
    }

    public void setSimpleItems(int i) {
        setSimpleItems(getResources().getStringArray(i));
    }

    public void setSimpleItems(String[] strArr) {
        setAdapter(new dcx(this, getContext(), this.f16450a, strArr));
    }

    @Override // android.widget.AutoCompleteTextView
    public final void showDropDown() {
        if (o()) {
            this.j.show();
        } else {
            super.showDropDown();
        }
    }
}
