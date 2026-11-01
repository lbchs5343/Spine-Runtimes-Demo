package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import g.dip;
import java.util.ArrayList;

@Deprecated
/* loaded from: classes3.dex */
public abstract class ExpandableBehavior extends dip {
    public ExpandableBehavior() {
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
    }

    @Override // g.dip
    public final boolean c(CoordinatorLayout coordinatorLayout, View view, View view2) {
        view2.getClass();
        throw new ClassCastException();
    }

    @Override // g.dip
    public abstract void e(View view);

    @Override // g.dip
    public final boolean o(CoordinatorLayout coordinatorLayout, View view, int i) {
        if (!view.isLaidOut()) {
            ArrayList ar = coordinatorLayout.ar(view);
            int size = ar.size();
            for (int i2 = 0; i2 < size; i2++) {
                e(view);
            }
        }
        return false;
    }
}
