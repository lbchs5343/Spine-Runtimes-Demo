package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import g.akz;
import g.aob;
import g.bff;
import g.dzm;
import g.ebq;
import g.far;
import g.fbs;
import g.ffb;
import g.goi;
import g.gvj;

/* loaded from: classes3.dex */
public class NavigationMenuItemView extends gvj implements ebq {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f9057a = {R.attr.state_checked};

    /* renamed from: b, reason: collision with root package name */
    public final boolean f9058b;

    /* renamed from: c, reason: collision with root package name */
    public int f9059c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f9060d;

    /* renamed from: e, reason: collision with root package name */
    public ColorStateList f9061e;

    /* renamed from: f, reason: collision with root package name */
    public final akz f9062f;

    /* renamed from: g, reason: collision with root package name */
    public Drawable f9063g;
    public final CheckedTextView h;
    public boolean i;
    public far j;
    public boolean k;
    public FrameLayout l;

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9058b = true;
        akz akzVar = new akz(5, this);
        this.f9062f = akzVar;
        setOrientation(0);
        LayoutInflater.from(context).inflate(cn.trinea.android.developertools.R.layout.design_navigation_menu_item, (ViewGroup) this, true);
        setIconSize(context.getResources().getDimensionPixelSize(cn.trinea.android.developertools.R.dimen.design_navigation_icon_size));
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(cn.trinea.android.developertools.R.id.design_menu_item_text);
        this.h = checkedTextView;
        goi.ab(checkedTextView, akzVar);
    }

    private void setActionView(View view) {
        if (view != null) {
            if (this.l == null) {
                this.l = (FrameLayout) ((ViewStub) findViewById(cn.trinea.android.developertools.R.id.design_menu_item_action_area_stub)).inflate();
            }
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            this.l.removeAllViews();
            this.l.addView(view);
        }
    }

    @Override // g.ebq
    public far getItemData() {
        return this.j;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        far farVar = this.j;
        if (farVar != null && farVar.isCheckable() && this.j.isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, f9057a);
        }
        return onCreateDrawableState;
    }

    @Override // g.ebq
    public final void p(far farVar) {
        StateListDrawable stateListDrawable;
        this.j = farVar;
        int i = farVar.k;
        if (i > 0) {
            setId(i);
        }
        setVisibility(farVar.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            TypedValue typedValue = new TypedValue();
            if (getContext().getTheme().resolveAttribute(cn.trinea.android.developertools.R.attr.colorControlHighlight, typedValue, true)) {
                stateListDrawable = new StateListDrawable();
                stateListDrawable.addState(f9057a, new ColorDrawable(typedValue.data));
                stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
            } else {
                stateListDrawable = null;
            }
            setBackground(stateListDrawable);
        }
        setCheckable(farVar.isCheckable());
        setChecked(farVar.isChecked());
        setEnabled(farVar.isEnabled());
        setTitle(farVar.j);
        setIcon(farVar.getIcon());
        setActionView(farVar.getActionView());
        setContentDescription(farVar.y);
        ffb.ay(this, farVar.ae);
        far farVar2 = this.j;
        CharSequence charSequence = farVar2.j;
        CheckedTextView checkedTextView = this.h;
        if (charSequence == null && farVar2.getIcon() == null && this.j.getActionView() != null) {
            checkedTextView.setVisibility(8);
            FrameLayout frameLayout = this.l;
            if (frameLayout != null) {
                aob aobVar = (aob) frameLayout.getLayoutParams();
                ((LinearLayout.LayoutParams) aobVar).width = -1;
                this.l.setLayoutParams(aobVar);
                return;
            }
            return;
        }
        checkedTextView.setVisibility(0);
        FrameLayout frameLayout2 = this.l;
        if (frameLayout2 != null) {
            aob aobVar2 = (aob) frameLayout2.getLayoutParams();
            ((LinearLayout.LayoutParams) aobVar2).width = -2;
            this.l.setLayoutParams(aobVar2);
        }
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
        if (this.i != z) {
            this.i = z;
            this.f9062f.f(this.h, 2048);
        }
    }

    public void setChecked(boolean z) {
        refreshDrawableState();
        CheckedTextView checkedTextView = this.h;
        checkedTextView.setChecked(z);
        checkedTextView.setTypeface(checkedTextView.getTypeface(), (z && this.f9058b) ? 1 : 0);
    }

    public void setHorizontalPadding(int i) {
        setPadding(i, getPaddingTop(), i, getPaddingBottom());
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            if (this.f9060d) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = dzm.aw(drawable).mutate();
                drawable.setTintList(this.f9061e);
            }
            int i = this.f9059c;
            drawable.setBounds(0, 0, i, i);
        } else if (this.k) {
            if (this.f9063g == null) {
                Resources resources = getResources();
                Resources.Theme theme = getContext().getTheme();
                ThreadLocal threadLocal = fbs.f16530a;
                Drawable drawable2 = resources.getDrawable(cn.trinea.android.developertools.R.drawable.navigation_empty_icon, theme);
                this.f9063g = drawable2;
                if (drawable2 != null) {
                    int i2 = this.f9059c;
                    drawable2.setBounds(0, 0, i2, i2);
                }
            }
            drawable = this.f9063g;
        }
        this.h.setCompoundDrawablesRelative(drawable, null, null, null);
    }

    public void setIconPadding(int i) {
        this.h.setCompoundDrawablePadding(i);
    }

    public void setIconSize(int i) {
        this.f9059c = i;
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.f9061e = colorStateList;
        this.f9060d = colorStateList != null;
        far farVar = this.j;
        if (farVar != null) {
            setIcon(farVar.getIcon());
        }
    }

    public void setMaxLines(int i) {
        this.h.setMaxLines(i);
    }

    public void setNeedsEmptyIcon(boolean z) {
        this.k = z;
    }

    public void setTextAppearance(int i) {
        bff.g(this.h, i);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.h.setTextColor(colorStateList);
    }

    public void setTitle(CharSequence charSequence) {
        this.h.setText(charSequence);
    }
}
