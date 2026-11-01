package com.google.android.material.divider;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import cn.trinea.android.developertools.R;
import g.ddm;
import g.egh;
import g.eyt;
import g.git;
import g.gs;

/* loaded from: classes3.dex */
public class MaterialDivider extends View {

    /* renamed from: a, reason: collision with root package name */
    public int f9045a;

    /* renamed from: b, reason: collision with root package name */
    public int f9046b;

    /* renamed from: c, reason: collision with root package name */
    public int f9047c;

    /* renamed from: d, reason: collision with root package name */
    public final ddm f9048d;

    /* renamed from: e, reason: collision with root package name */
    public int f9049e;

    public MaterialDivider(Context context, AttributeSet attributeSet) {
        super(egh.ax(context, attributeSet, R.attr.materialDividerStyle, R.style.Widget_MaterialComponents_MaterialDivider), attributeSet, R.attr.materialDividerStyle);
        Context context2 = getContext();
        this.f9048d = new ddm();
        TypedArray bd = eyt.bd(context2, attributeSet, git.n, R.attr.materialDividerStyle, R.style.Widget_MaterialComponents_MaterialDivider, new int[0]);
        this.f9049e = bd.getDimensionPixelSize(3, getResources().getDimensionPixelSize(R.dimen.material_divider_thickness));
        this.f9046b = bd.getDimensionPixelOffset(2, 0);
        this.f9047c = bd.getDimensionPixelOffset(1, 0);
        setDividerColor(gs.ai(context2, bd, 0).getDefaultColor());
        bd.recycle();
    }

    public int getDividerColor() {
        return this.f9045a;
    }

    public int getDividerInsetEnd() {
        return this.f9047c;
    }

    public int getDividerInsetStart() {
        return this.f9046b;
    }

    public int getDividerThickness() {
        return this.f9049e;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int width;
        int i;
        super.onDraw(canvas);
        boolean z = getLayoutDirection() == 1;
        int i2 = z ? this.f9047c : this.f9046b;
        if (z) {
            width = getWidth();
            i = this.f9046b;
        } else {
            width = getWidth();
            i = this.f9047c;
        }
        int i3 = width - i;
        int bottom = getBottom() - getTop();
        ddm ddmVar = this.f9048d;
        ddmVar.setBounds(i2, 0, i3, bottom);
        ddmVar.draw(canvas);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        int measuredHeight = getMeasuredHeight();
        if (mode == Integer.MIN_VALUE || mode == 0) {
            int i3 = this.f9049e;
            if (i3 > 0 && measuredHeight != i3) {
                measuredHeight = i3;
            }
            setMeasuredDimension(getMeasuredWidth(), measuredHeight);
        }
    }

    public void setDividerColor(int i) {
        if (this.f9045a != i) {
            this.f9045a = i;
            this.f9048d.en(ColorStateList.valueOf(i));
            invalidate();
        }
    }

    public void setDividerColorResource(int i) {
        setDividerColor(eyt.af(getContext(), i));
    }

    public void setDividerInsetEnd(int i) {
        this.f9047c = i;
    }

    public void setDividerInsetEndResource(int i) {
        setDividerInsetEnd(getContext().getResources().getDimensionPixelOffset(i));
    }

    public void setDividerInsetStart(int i) {
        this.f9046b = i;
    }

    public void setDividerInsetStartResource(int i) {
        setDividerInsetStart(getContext().getResources().getDimensionPixelOffset(i));
    }

    public void setDividerThickness(int i) {
        if (this.f9049e != i) {
            this.f9049e = i;
            requestLayout();
        }
    }

    public void setDividerThicknessResource(int i) {
        setDividerThickness(getContext().getResources().getDimensionPixelSize(i));
    }
}
