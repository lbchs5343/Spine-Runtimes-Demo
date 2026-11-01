package cn.trinea.android.lib.view;

import a.v.ScrollViewWithMaxHeight;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;

/* loaded from: classes.dex */
public class DialogContentLayout extends LinearLayout {
    public DialogContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int size = View.MeasureSpec.getMode(i2) == 0 ? getResources().getDisplayMetrics().heightPixels : View.MeasureSpec.getSize(i2);
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        ScrollViewWithMaxHeight scrollViewWithMaxHeight = null;
        int i4 = 0;
        while (i4 < getChildCount()) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() == 8) {
                i3 = i;
            } else {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
                paddingBottom += layoutParams.topMargin + layoutParams.bottomMargin;
                if (childAt instanceof ScrollViewWithMaxHeight) {
                    i3 = i;
                    scrollViewWithMaxHeight = (ScrollViewWithMaxHeight) childAt;
                } else {
                    i3 = i;
                    measureChildWithMargins(childAt, i3, 0, View.MeasureSpec.makeMeasureSpec(0, 0), 0);
                    paddingBottom = childAt.getMeasuredHeight() + paddingBottom;
                }
            }
            i4++;
            i = i3;
        }
        int i5 = i;
        if (scrollViewWithMaxHeight != null) {
            scrollViewWithMaxHeight.getLayoutParams().height = -2;
            scrollViewWithMaxHeight.setMaxHeight(Math.max(0, size - paddingBottom));
        }
        super.onMeasure(i5, i2);
    }
}
