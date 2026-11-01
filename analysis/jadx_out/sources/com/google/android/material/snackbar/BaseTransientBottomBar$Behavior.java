package com.google.android.material.snackbar;

import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.material.behavior.SwipeDismissBehavior;
import g.cnp;
import g.duw;
import g.emr;
import g.rl;

/* loaded from: classes3.dex */
public class BaseTransientBottomBar$Behavior extends SwipeDismissBehavior<View> {
    public final emr w;

    public BaseTransientBottomBar$Behavior() {
        emr emrVar = new emr(5);
        this.r = Math.min(Math.max(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0.1f), 1.0f);
        this.u = Math.min(Math.max(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0.6f), 1.0f);
        this.p = 0;
        this.w = emrVar;
    }

    @Override // com.google.android.material.behavior.SwipeDismissBehavior, g.dip
    public final boolean j(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        emr emrVar = this.w;
        emrVar.getClass();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 3) {
                duw.j().s((rl) emrVar.n);
            }
        } else if (coordinatorLayout.af(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
            duw.j().q((rl) emrVar.n);
        }
        return super.j(coordinatorLayout, view, motionEvent);
    }

    @Override // com.google.android.material.behavior.SwipeDismissBehavior
    public final boolean v(View view) {
        this.w.getClass();
        return view instanceof cnp;
    }
}
