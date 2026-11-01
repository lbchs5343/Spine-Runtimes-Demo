package g;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;

/* loaded from: classes.dex */
public final class dit {

    /* renamed from: a, reason: collision with root package name */
    public boolean f14245a;

    /* renamed from: b, reason: collision with root package name */
    public int[] f14246b;

    /* renamed from: c, reason: collision with root package name */
    public ViewParent f14247c;

    /* renamed from: d, reason: collision with root package name */
    public ViewParent f14248d;

    /* renamed from: e, reason: collision with root package name */
    public final ViewGroup f14249e;

    public dit(ViewGroup viewGroup) {
        this.f14249e = viewGroup;
    }

    public final void f(int i) {
        ViewParent h = h(i);
        if (h != null) {
            boolean z = h instanceof ept;
            ViewGroup viewGroup = this.f14249e;
            if (z) {
                ((ept) h).al(i, viewGroup);
            } else if (i == 0) {
                try {
                    h.onStopNestedScroll(viewGroup);
                } catch (AbstractMethodError e2) {
                    Log.e("ViewParentCompat", "ViewParent " + h + " does not implement interface method onStopNestedScroll", e2);
                }
            }
            if (i == 0) {
                this.f14247c = null;
            } else {
                if (i != 1) {
                    return;
                }
                this.f14248d = null;
            }
        }
    }

    public final boolean g(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        ViewParent h;
        int i6;
        int i7;
        int[] iArr3;
        if (this.f14245a && (h = h(i5)) != null) {
            if (i != 0 || i2 != 0 || i3 != 0 || i4 != 0) {
                ViewGroup viewGroup = this.f14249e;
                if (iArr != null) {
                    viewGroup.getLocationInWindow(iArr);
                    i6 = iArr[0];
                    i7 = iArr[1];
                } else {
                    i6 = 0;
                    i7 = 0;
                }
                if (iArr2 == null) {
                    if (this.f14246b == null) {
                        this.f14246b = new int[2];
                    }
                    int[] iArr4 = this.f14246b;
                    iArr4[0] = 0;
                    iArr4[1] = 0;
                    iArr3 = iArr4;
                } else {
                    iArr3 = iArr2;
                }
                if (h instanceof gcp) {
                    ((gcp) h).ao(viewGroup, i, i2, i3, i4, i5, iArr3);
                } else {
                    iArr3[0] = iArr3[0] + i3;
                    iArr3[1] = iArr3[1] + i4;
                    if (h instanceof ept) {
                        ((ept) h).aq(viewGroup, i, i2, i3, i4, i5);
                    } else if (i5 == 0) {
                        try {
                            h.onNestedScroll(viewGroup, i, i2, i3, i4);
                        } catch (AbstractMethodError e2) {
                            Log.e("ViewParentCompat", "ViewParent " + h + " does not implement interface method onNestedScroll", e2);
                        }
                    }
                }
                if (iArr != null) {
                    viewGroup.getLocationInWindow(iArr);
                    iArr[0] = iArr[0] - i6;
                    iArr[1] = iArr[1] - i7;
                }
                return true;
            }
            if (iArr != null) {
                iArr[0] = 0;
                iArr[1] = 0;
                return false;
            }
        }
        return false;
    }

    public final ViewParent h(int i) {
        if (i == 0) {
            return this.f14247c;
        }
        if (i != 1) {
            return null;
        }
        return this.f14248d;
    }

    public final boolean i(float f2, float f3, boolean z) {
        ViewParent h;
        if (this.f14245a && (h = h(0)) != null) {
            try {
                return h.onNestedFling(this.f14249e, f2, f3, z);
            } catch (AbstractMethodError e2) {
                Log.e("ViewParentCompat", "ViewParent " + h + " does not implement interface method onNestedFling", e2);
            }
        }
        return false;
    }

    public final boolean j(int i) {
        return h(i) != null;
    }

    public final boolean k(float f2, float f3) {
        ViewParent h;
        if (this.f14245a && (h = h(0)) != null) {
            try {
                return h.onNestedPreFling(this.f14249e, f2, f3);
            } catch (AbstractMethodError e2) {
                Log.e("ViewParentCompat", "ViewParent " + h + " does not implement interface method onNestedPreFling", e2);
            }
        }
        return false;
    }

    public final boolean l(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        ViewParent h;
        int i4;
        int i5;
        if (!this.f14245a || (h = h(i3)) == null) {
            return false;
        }
        if (i == 0 && i2 == 0) {
            if (iArr2 == null) {
                return false;
            }
            iArr2[0] = 0;
            iArr2[1] = 0;
            return false;
        }
        ViewGroup viewGroup = this.f14249e;
        if (iArr2 != null) {
            viewGroup.getLocationInWindow(iArr2);
            i4 = iArr2[0];
            i5 = iArr2[1];
        } else {
            i4 = 0;
            i5 = 0;
        }
        if (iArr == null) {
            if (this.f14246b == null) {
                this.f14246b = new int[2];
            }
            iArr = this.f14246b;
        }
        int[] iArr3 = iArr;
        iArr3[0] = 0;
        iArr3[1] = 0;
        if (h instanceof ept) {
            ((ept) h).am(viewGroup, i, i2, iArr3, i3);
        } else if (i3 == 0) {
            try {
                h.onNestedPreScroll(viewGroup, i, i2, iArr3);
            } catch (AbstractMethodError e2) {
                Log.e("ViewParentCompat", "ViewParent " + h + " does not implement interface method onNestedPreScroll", e2);
            }
        }
        if (iArr2 != null) {
            viewGroup.getLocationInWindow(iArr2);
            iArr2[0] = iArr2[0] - i4;
            iArr2[1] = iArr2[1] - i5;
        }
        return (iArr3[0] == 0 && iArr3[1] == 0) ? false : true;
    }

    public final boolean m(int i, int i2) {
        boolean onStartNestedScroll;
        if (!j(i2)) {
            if (this.f14245a) {
                View view = this.f14249e;
                View view2 = view;
                for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
                    boolean z = parent instanceof ept;
                    if (z) {
                        onStartNestedScroll = ((ept) parent).ai(view2, view, i, i2);
                    } else {
                        if (i2 == 0) {
                            try {
                                onStartNestedScroll = parent.onStartNestedScroll(view2, view, i);
                            } catch (AbstractMethodError e2) {
                                Log.e("ViewParentCompat", "ViewParent " + parent + " does not implement interface method onStartNestedScroll", e2);
                            }
                        }
                        onStartNestedScroll = false;
                    }
                    if (onStartNestedScroll) {
                        if (i2 == 0) {
                            this.f14247c = parent;
                        } else if (i2 == 1) {
                            this.f14248d = parent;
                        }
                        if (z) {
                            ((ept) parent).ak(view2, view, i, i2);
                        } else if (i2 == 0) {
                            try {
                                parent.onNestedScrollAccepted(view2, view, i);
                            } catch (AbstractMethodError e3) {
                                Log.e("ViewParentCompat", "ViewParent " + parent + " does not implement interface method onNestedScrollAccepted", e3);
                            }
                        }
                    } else {
                        if (parent instanceof View) {
                            view2 = parent;
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }
}
