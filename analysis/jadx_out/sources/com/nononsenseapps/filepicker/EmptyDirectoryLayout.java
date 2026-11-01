package com.nononsenseapps.filepicker;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.b;
import g.yx;

/* loaded from: classes3.dex */
public class EmptyDirectoryLayout extends LinearLayout {
    public EmptyDirectoryLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        RecyclerView recyclerView;
        b layoutManager;
        View cz;
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(0, 0));
        if (!(getParent() instanceof RecyclerView) || (layoutManager = (recyclerView = (RecyclerView) getParent()).getLayoutManager()) == null || (cz = layoutManager.cz(0)) == null) {
            return;
        }
        yx yxVar = (yx) cz.getLayoutParams();
        setMeasuredDimension(getMeasuredWidth(), Math.max(getMeasuredHeight(), ((layoutManager.dn - recyclerView.getPaddingTop()) - recyclerView.getPaddingBottom()) - ((b.ea(cz) + ((ViewGroup.MarginLayoutParams) yxVar).topMargin) + ((ViewGroup.MarginLayoutParams) yxVar).bottomMargin)));
    }
}
