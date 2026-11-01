package g;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final class har extends SeekBar {

    /* renamed from: a, reason: collision with root package name */
    public final foi f19144a;

    public har(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.seekBarStyle);
        fgt.i(getContext(), this);
        foi foiVar = new foi(this);
        this.f19144a = foiVar;
        foiVar.w(attributeSet, R.attr.seekBarStyle);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        foi foiVar = this.f19144a;
        har harVar = foiVar.as;
        Drawable drawable = foiVar.ao;
        if (drawable != null && drawable.isStateful() && drawable.setState(harVar.getDrawableState())) {
            harVar.invalidateDrawable(drawable);
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f19144a.ao;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f19144a.at(canvas);
    }
}
