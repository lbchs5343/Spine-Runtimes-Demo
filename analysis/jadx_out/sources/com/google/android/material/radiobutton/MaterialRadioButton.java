package com.google.android.material.radiobutton;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import g.ajz;
import g.egh;
import g.eyt;
import g.git;
import g.gs;

/* loaded from: classes3.dex */
public class MaterialRadioButton extends ajz {

    /* renamed from: a, reason: collision with root package name */
    public static final int[][] f9065a = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};

    /* renamed from: b, reason: collision with root package name */
    public ColorStateList f9066b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f9067c;

    public MaterialRadioButton(Context context, AttributeSet attributeSet) {
        super(egh.ax(context, attributeSet, cn.trinea.android.developertools.R.attr.radioButtonStyle, cn.trinea.android.developertools.R.style.Widget_MaterialComponents_CompoundButton_RadioButton), attributeSet);
        Context context2 = getContext();
        TypedArray bd = eyt.bd(context2, attributeSet, git.q, cn.trinea.android.developertools.R.attr.radioButtonStyle, cn.trinea.android.developertools.R.style.Widget_MaterialComponents_CompoundButton_RadioButton, new int[0]);
        if (bd.hasValue(0)) {
            setButtonTintList(gs.ai(context2, bd, 0));
        }
        this.f9067c = bd.getBoolean(1, false);
        bd.recycle();
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f9066b == null) {
            int bs = eyt.bs(cn.trinea.android.developertools.R.attr.colorControlActivated, this);
            int bs2 = eyt.bs(cn.trinea.android.developertools.R.attr.colorOnSurface, this);
            int bs3 = eyt.bs(cn.trinea.android.developertools.R.attr.colorSurface, this);
            this.f9066b = new ColorStateList(f9065a, new int[]{eyt.ac(bs3, 1.0f, bs), eyt.ac(bs3, 0.54f, bs2), eyt.ac(bs3, 0.38f, bs2), eyt.ac(bs3, 0.38f, bs2)});
        }
        return this.f9066b;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f9067c && getButtonTintList() == null) {
            setUseMaterialThemeColors(true);
        }
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.f9067c = z;
        if (z) {
            setButtonTintList(getMaterialThemeColorsTintList());
        } else {
            setButtonTintList(null);
        }
    }
}
