package a.v;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import g.cjh;
import g.ezn;

/* loaded from: classes.dex */
public class SlidableViewPager extends ezn {
    private boolean isSlidable;

    public SlidableViewPager(Context context) {
        super(context);
        this.isSlidable = true;
    }

    public SlidableViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isSlidable = true;
    }

    private void getAttrs(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, cjh.f12980c);
        this.isSlidable = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
    }

    public boolean isSlidable() {
        return this.isSlidable;
    }

    @Override // g.ezn, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return !this.isSlidable || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // g.ezn, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return !this.isSlidable || super.onTouchEvent(motionEvent);
    }

    public SlidableViewPager setSlidable(boolean z) {
        this.isSlidable = z;
        return this;
    }
}
