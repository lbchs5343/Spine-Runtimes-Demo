package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.dip;
import g.dzm;
import g.eu;
import g.gbw;
import g.git;
import g.goi;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class AppBarLayout$ScrollingViewBehavior extends gbw {

    /* renamed from: a, reason: collision with root package name */
    public final int f8996a;

    public AppBarLayout$ScrollingViewBehavior() {
        new Rect();
        new Rect();
    }

    public AppBarLayout$ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
        new Rect();
        new Rect();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, git.p);
        this.f8996a = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        obtainStyledAttributes.recycle();
    }

    public static void b(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
        }
    }

    @Override // g.dip
    public boolean c(CoordinatorLayout coordinatorLayout, View view, View view2) {
        dip dipVar = ((eu) view2.getLayoutParams()).h;
        if (dipVar instanceof AppBarLayout$BaseBehavior) {
            int bottom = view2.getBottom() - view.getTop();
            ((AppBarLayout$BaseBehavior) dipVar).getClass();
            int i = this.f8996a;
            goi.m(bottom - (i == 0 ? 0 : dzm.af((int) (TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT * i), 0, i)), view);
        }
        return false;
    }

    @Override // g.dip
    public final void d(CoordinatorLayout coordinatorLayout, View view) {
        b(coordinatorLayout.ar(view));
    }

    @Override // g.dip
    public final void e(View view) {
    }

    @Override // g.dip
    public final boolean f(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
        int i4 = view.getLayoutParams().height;
        if (i4 != -1 && i4 != -2) {
            return false;
        }
        b(coordinatorLayout.ar(view));
        return false;
    }

    @Override // g.gbw
    public final void p(CoordinatorLayout coordinatorLayout, View view, int i) {
        b(coordinatorLayout.ar(view));
        coordinatorLayout.as(i, view);
    }
}
