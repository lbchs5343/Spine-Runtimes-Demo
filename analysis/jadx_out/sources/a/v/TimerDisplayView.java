package a.v;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public class TimerDisplayView extends LCDView {
    public TimerDisplayView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // a.v.LCDView, android.view.View
    public void onDraw(Canvas canvas) {
        float width = (getWidth() - getPaddingLeft()) - getPaddingRight();
        float allTextWidth = getAllTextWidth();
        float min = allTextWidth > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? Math.min(1.0f, Math.max(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, width) / allTextWidth) : 1.0f;
        int save = canvas.save();
        canvas.scale(min, min, (width / 2.0f) + getPaddingLeft(), (((getHeight() - getPaddingTop()) - getPaddingBottom()) / 2.0f) + getPaddingTop());
        super.onDraw(canvas);
        canvas.restoreToCount(save);
    }

    @Override // a.v.LCDView
    public void setCustomTimeText(String str) {
        float allTextWidth = getAllTextWidth();
        super.setCustomTimeText(str);
        if (Float.compare(allTextWidth, getAllTextWidth()) != 0) {
            requestLayout();
        }
    }
}
