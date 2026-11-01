package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.csk;
import g.dcq;
import g.dfv;
import g.dip;
import g.eie;
import g.fwq;
import g.goi;

/* loaded from: classes3.dex */
public class SwipeDismissBehavior<V extends View> extends dip {

    /* renamed from: b, reason: collision with root package name */
    public boolean f9002b;
    public dfv q;
    public eie s;
    public boolean t;
    public int p = 2;
    public float r = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    public float u = 0.5f;

    /* renamed from: a, reason: collision with root package name */
    public final fwq f9001a = new fwq(this);

    @Override // g.dip
    public boolean j(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        boolean z = this.t;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            z = coordinatorLayout.af(view, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.t = z;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.t = false;
        }
        if (z) {
            if (this.q == null) {
                this.q = new dfv(coordinatorLayout.getContext(), coordinatorLayout, this.f9001a);
            }
            if (!this.f9002b && this.q.af(motionEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // g.dip
    public final boolean n(View view, MotionEvent motionEvent) {
        if (this.q == null) {
            return false;
        }
        if (this.f9002b && motionEvent.getActionMasked() == 3) {
            return true;
        }
        this.q.aj(motionEvent);
        return true;
    }

    @Override // g.dip
    public final boolean o(CoordinatorLayout coordinatorLayout, View view, int i) {
        if (view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
            goi.j(1048576, view);
            goi.w(0, view);
            if (v(view)) {
                goi.s(view, csk.i, new dcq(17, this));
            }
        }
        return false;
    }

    public boolean v(View view) {
        return true;
    }
}
