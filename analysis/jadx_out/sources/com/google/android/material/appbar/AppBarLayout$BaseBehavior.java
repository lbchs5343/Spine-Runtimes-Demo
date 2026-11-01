package com.google.android.material.appbar;

import android.content.Context;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import g.gbw;

/* loaded from: classes3.dex */
public class AppBarLayout$BaseBehavior<T> extends gbw {
    public VelocityTracker _f;
    public boolean _g;

    /* renamed from: a, reason: collision with root package name */
    public int f8994a;
    public int _h = -1;

    /* renamed from: b, reason: collision with root package name */
    public int f8995b = -1;

    public AppBarLayout$BaseBehavior() {
    }

    public AppBarLayout$BaseBehavior(Context context, AttributeSet attributeSet) {
    }

    @Override // g.dip
    public final boolean f(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
        throw new ClassCastException();
    }

    @Override // g.dip
    public final void g(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int[] iArr) {
        throw new ClassCastException();
    }

    @Override // g.dip
    public final boolean h(View view, int i, int i2) {
        throw new ClassCastException();
    }

    @Override // g.dip
    public final Parcelable i(View view) {
        throw new ClassCastException();
    }

    @Override // g.dip
    public final boolean j(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        int findPointerIndex;
        if (this.f8995b < 0) {
            this.f8995b = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getActionMasked() == 2 && this._g) {
            int i = this._h;
            if (i != -1 && (findPointerIndex = motionEvent.findPointerIndex(i)) != -1) {
                int y = (int) motionEvent.getY(findPointerIndex);
                if (Math.abs(y - this.f8994a) > this.f8995b) {
                    this.f8994a = y;
                    return true;
                }
            }
            return false;
        }
        if (motionEvent.getActionMasked() != 0) {
            VelocityTracker velocityTracker = this._f;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
            return false;
        }
        this._h = -1;
        motionEvent.getX();
        motionEvent.getY();
        throw new ClassCastException();
    }

    @Override // g.dip
    public final void k(View view, View view2, int i) {
        throw new ClassCastException();
    }

    @Override // g.dip
    public final void l(View view, Parcelable parcelable) {
        throw new ClassCastException();
    }

    @Override // g.dip
    public final /* synthetic */ void m(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int[] iArr, int i3) {
        throw new ClassCastException();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0063 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0064 A[RETURN] */
    @Override // g.dip
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean n(View view, MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1) {
            VelocityTracker velocityTracker2 = this._f;
            if (velocityTracker2 != null) {
                velocityTracker2.addMovement(motionEvent);
                this._f.computeCurrentVelocity(1000);
                this._f.getYVelocity(this._h);
                view.getClass();
                throw new ClassCastException();
            }
        } else {
            if (actionMasked == 2) {
                int findPointerIndex = motionEvent.findPointerIndex(this._h);
                if (findPointerIndex != -1) {
                    this.f8994a = (int) motionEvent.getY(findPointerIndex);
                    view.getClass();
                    throw new ClassCastException();
                }
            }
            if (actionMasked != 3) {
                if (actionMasked == 6) {
                    int i = motionEvent.getActionIndex() == 0 ? 1 : 0;
                    this._h = motionEvent.getPointerId(i);
                    this.f8994a = (int) (motionEvent.getY(i) + 0.5f);
                }
                velocityTracker = this._f;
                if (velocityTracker != null) {
                    velocityTracker.addMovement(motionEvent);
                }
                return !this._g;
            }
        }
        this._g = false;
        this._h = -1;
        VelocityTracker velocityTracker3 = this._f;
        if (velocityTracker3 != null) {
            velocityTracker3.recycle();
            this._f = null;
        }
        velocityTracker = this._f;
        if (velocityTracker != null) {
        }
        if (!this._g) {
        }
    }

    @Override // g.gbw, g.dip
    public final boolean o(CoordinatorLayout coordinatorLayout, View view, int i) {
        throw new ClassCastException();
    }
}
