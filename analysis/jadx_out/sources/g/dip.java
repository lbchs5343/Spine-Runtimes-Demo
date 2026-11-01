package g;

import android.os.Parcelable;
import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* loaded from: classes.dex */
public abstract class dip {
    public boolean _i(View view) {
        return false;
    }

    public boolean c(CoordinatorLayout coordinatorLayout, View view, View view2) {
        return false;
    }

    public void ca() {
    }

    public boolean cf(View view) {
        return false;
    }

    public void cj(eu euVar) {
    }

    public void d(CoordinatorLayout coordinatorLayout, View view) {
    }

    public void e(View view) {
    }

    public boolean f(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
        return false;
    }

    public void g(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int[] iArr) {
        iArr[0] = iArr[0] + i2;
        iArr[1] = iArr[1] + i3;
    }

    public boolean h(View view, int i, int i2) {
        return false;
    }

    public Parcelable i(View view) {
        return View.BaseSavedState.EMPTY_STATE;
    }

    public boolean j(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        return false;
    }

    public void k(View view, View view2, int i) {
    }

    public void l(View view, Parcelable parcelable) {
    }

    public void m(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int[] iArr, int i3) {
    }

    public boolean n(View view, MotionEvent motionEvent) {
        return false;
    }

    public boolean o(CoordinatorLayout coordinatorLayout, View view, int i) {
        return false;
    }
}
