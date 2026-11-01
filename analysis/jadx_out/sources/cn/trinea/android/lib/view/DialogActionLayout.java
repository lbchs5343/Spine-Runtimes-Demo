package cn.trinea.android.lib.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;

/* loaded from: classes.dex */
public class DialogActionLayout extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    public boolean f396a;

    /* renamed from: b, reason: collision with root package name */
    public int f397b;

    public DialogActionLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f397b = 0;
        this.f397b = getOrientation();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3 = 1;
        this.f396a = true;
        int size = (View.MeasureSpec.getSize(i) - getPaddingLeft()) - getPaddingRight();
        int i4 = 0;
        for (int i5 = 0; i5 < getChildCount(); i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
                i4 += childAt.getMeasuredWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
            }
        }
        if (this.f397b != 1 && (View.MeasureSpec.getMode(i) == 0 || i4 <= size)) {
            i3 = 0;
        }
        setOrientation(i3);
        super.onMeasure(i, i2);
        this.f396a = false;
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        if (!this.f396a) {
            this.f397b = i;
        }
        super.setOrientation(i);
    }
}
