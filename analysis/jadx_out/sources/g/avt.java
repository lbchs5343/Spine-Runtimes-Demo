package g;

import android.graphics.Canvas;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;

/* loaded from: classes.dex */
public final class avt extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public View f10941a;

    /* renamed from: b, reason: collision with root package name */
    public TextView f10942b;

    /* renamed from: c, reason: collision with root package name */
    public int f10943c;

    /* renamed from: d, reason: collision with root package name */
    public hew f10944d;

    /* renamed from: e, reason: collision with root package name */
    public View f10945e;

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        hew hewVar = this.f10944d;
        if (hewVar != null) {
            hewVar.mn();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        hew hewVar = this.f10944d;
        if (hewVar != null) {
            hewVar.ia();
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        hew hewVar = this.f10944d;
        if (hewVar != null) {
            hewVar.dq(i, i2, i3, i4);
        }
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        hew hewVar = this.f10944d;
        if (hewVar != null) {
            hewVar.dq(i, i2);
        }
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode != 1073741824) {
            size = mode == Integer.MIN_VALUE ? Math.min(0, size) : 0;
        }
        this.f10943c = size;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f10943c = i;
        hew hewVar = this.f10944d;
        if (hewVar != null) {
            hewVar.d(i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        hew hewVar = this.f10944d;
        if (hewVar != null) {
            hewVar.dq(z);
        }
    }

    public void setProgress(float f2) {
        int width = getWidth();
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f10945e.getLayoutParams();
        float f3 = width;
        float f4 = (f2 / 100.0f) * f3;
        layoutParams.width = (int) f4;
        this.f10945e.setLayoutParams(layoutParams);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.f10941a.getLayoutParams();
        layoutParams2.width = (int) (f3 - f4);
        this.f10941a.setLayoutParams(layoutParams2);
        FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.f10942b.getLayoutParams();
        layoutParams3.width = width;
        layoutParams3.gravity = 17;
        requestLayout();
    }

    public void setProgressBgColor(int i) {
        this.f10941a.setBackgroundColor(i);
    }

    public void setProgressColor(int i) {
        this.f10945e.setBackgroundColor(i);
    }

    public void setText(String str) {
        this.f10942b.setText(str);
    }

    public void setTextColor(int i) {
        this.f10942b.setTextColor(i);
    }
}
