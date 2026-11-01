package com.google.android.material.floatingactionbutton;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import g.dip;
import g.eu;
import g.git;

/* loaded from: classes3.dex */
public class FloatingActionButton$BaseBehavior<T> extends dip {
    public FloatingActionButton$BaseBehavior() {
    }

    public FloatingActionButton$BaseBehavior(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, git.x);
        obtainStyledAttributes.getBoolean(0, true);
        obtainStyledAttributes.recycle();
    }

    @Override // g.dip
    public final boolean _i(View view) {
        throw new ClassCastException();
    }

    @Override // g.dip
    public final boolean c(CoordinatorLayout coordinatorLayout, View view, View view2) {
        throw new ClassCastException();
    }

    @Override // g.dip
    public final void cj(eu euVar) {
        if (euVar.f16159a == 0) {
            euVar.f16159a = 80;
        }
    }

    @Override // g.dip
    public final boolean o(CoordinatorLayout coordinatorLayout, View view, int i) {
        throw new ClassCastException();
    }
}
