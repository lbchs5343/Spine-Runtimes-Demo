package a.v;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ScrollView;
import g.cjh;

/* loaded from: classes.dex */
public class ScrollViewWithMaxHeight extends ScrollView {
    private int maxHeight;

    public ScrollViewWithMaxHeight(Context context) {
        super(context);
        this.maxHeight = -1;
        init(context, null);
    }

    public ScrollViewWithMaxHeight(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.maxHeight = -1;
        init(context, attributeSet);
    }

    public ScrollViewWithMaxHeight(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.maxHeight = -1;
        init(context, attributeSet);
    }

    @TargetApi(21)
    public ScrollViewWithMaxHeight(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
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

    @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.View
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

    public ScrollViewWithMaxHeight setMaxHeight(int i) {
        this.maxHeight = i;
        return this;
    }
}
