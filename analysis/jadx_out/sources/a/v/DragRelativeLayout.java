package a.v;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;

/* loaded from: classes.dex */
public class DragRelativeLayout extends RelativeLayout {
    private View dragView;
    private View.OnTouchListener onDragListener;

    public DragRelativeLayout(Context context) {
        super(context);
    }

    public DragRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public View getDragView() {
        return this.dragView;
    }

    public View.OnTouchListener getOnDragListener() {
        return this.onDragListener;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        View.OnTouchListener onTouchListener = this.onDragListener;
        if (onTouchListener != null) {
            View view = this.dragView;
            if (view == null) {
                view = this;
            }
            onTouchListener.onTouch(view, motionEvent);
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void setDragView(View view) {
        this.dragView = view;
    }

    public void setOnDragListener(View.OnTouchListener onTouchListener) {
        this.onDragListener = onTouchListener;
    }
}
