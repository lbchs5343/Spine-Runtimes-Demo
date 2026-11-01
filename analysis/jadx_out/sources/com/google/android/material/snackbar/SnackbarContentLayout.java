package com.google.android.material.snackbar;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.text.Layout;
import android.util.AttributeSet;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.trinea.android.developertools.R;
import g.biq;
import g.egh;
import g.gtk;

/* loaded from: classes3.dex */
public class SnackbarContentLayout extends LinearLayout implements biq {

    /* renamed from: a, reason: collision with root package name */
    public final TimeInterpolator f9070a;

    /* renamed from: b, reason: collision with root package name */
    public int f9071b;

    /* renamed from: c, reason: collision with root package name */
    public TextView f9072c;

    /* renamed from: d, reason: collision with root package name */
    public Button f9073d;

    public SnackbarContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9070a = egh.r(context, R.attr.motionEasingEmphasizedInterpolator, gtk.f18728c);
    }

    public final boolean e(int i, int i2, int i3) {
        boolean z;
        if (i != getOrientation()) {
            setOrientation(i);
            z = true;
        } else {
            z = false;
        }
        if (this.f9072c.getPaddingTop() == i2 && this.f9072c.getPaddingBottom() == i3) {
            return z;
        }
        TextView textView = this.f9072c;
        if (textView.isPaddingRelative()) {
            textView.setPaddingRelative(textView.getPaddingStart(), i2, textView.getPaddingEnd(), i3);
            return true;
        }
        textView.setPadding(textView.getPaddingLeft(), i2, textView.getPaddingRight(), i3);
        return true;
    }

    public Button getActionView() {
        return this.f9073d;
    }

    public TextView getMessageView() {
        return this.f9072c;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f9072c = (TextView) findViewById(R.id.snackbar_text);
        this.f9073d = (Button) findViewById(R.id.snackbar_action);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (getOrientation() == 1) {
            return;
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical_2lines);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical);
        Layout layout = this.f9072c.getLayout();
        boolean z = layout != null && layout.getLineCount() > 1;
        if (!z || this.f9071b <= 0 || this.f9073d.getMeasuredWidth() <= this.f9071b) {
            if (!z) {
                dimensionPixelSize = dimensionPixelSize2;
            }
            if (!e(0, dimensionPixelSize, dimensionPixelSize)) {
                return;
            }
        } else if (!e(1, dimensionPixelSize, dimensionPixelSize - dimensionPixelSize2)) {
            return;
        }
        super.onMeasure(i, i2);
    }

    public void setMaxInlineActionWidth(int i) {
        this.f9071b = i;
    }
}
