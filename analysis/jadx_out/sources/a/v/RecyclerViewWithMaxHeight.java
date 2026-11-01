package a.v;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import g.cjh;

/* loaded from: classes.dex */
public class RecyclerViewWithMaxHeight extends RecyclerView {
    private int maxHeight;

    public RecyclerViewWithMaxHeight(Context context) {
        super(context, null);
        this.maxHeight = -1;
        init(context, null);
    }

    public RecyclerViewWithMaxHeight(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.maxHeight = -1;
        init(context, attributeSet);
    }

    public RecyclerViewWithMaxHeight(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.maxHeight = -1;
        init(context, attributeSet);
    }

    private void init(Context context, AttributeSet attributeSet) {
        initAttrs(context, attributeSet);
    }

    private void initAttrs(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            this.maxHeight = -1;
            return;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, cjh.f12979b);
        this.maxHeight = obtainStyledAttributes.getDimensionPixelSize(0, -1);
        obtainStyledAttributes.recycle();
    }

    public int getMaxHeight() {
        return this.maxHeight;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public void onMeasure(int i, int i2) {
        try {
            int size = View.MeasureSpec.getSize(i2);
            int i3 = this.maxHeight;
            if (i3 >= 0 && size > i3) {
                size = i3;
            }
            i2 = View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE);
            getLayoutParams().height = size;
        } catch (Exception unused) {
        } finally {
            super.onMeasure(i, i2);
        }
    }

    public RecyclerViewWithMaxHeight setMaxHeight(int i) {
        this.maxHeight = i;
        return this;
    }
}
