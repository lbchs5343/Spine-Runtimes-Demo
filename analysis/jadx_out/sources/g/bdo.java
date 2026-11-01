package g;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public abstract class bdo implements View.OnTouchListener, View.OnAttachStateChangeListener {

    /* renamed from: e, reason: collision with root package name */
    public int f11330e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f11331f;

    /* renamed from: g, reason: collision with root package name */
    public final int f11332g;
    public final View h;
    public eim i;
    public final float j;
    public final int[] k = new int[2];
    public final int l;
    public eim m;

    public bdo(View view) {
        this.h = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.j = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.l = tapTimeout;
        this.f11332g = (ViewConfiguration.getLongPressTimeout() + tapTimeout) / 2;
    }

    public abstract erj c();

    public abstract boolean d();

    public boolean n() {
        erj c2 = c();
        if (c2 == null || !c2.isShowing()) {
            return true;
        }
        c2.dismiss();
        return true;
    }

    public final void o() {
        eim eimVar = this.m;
        View view = this.h;
        if (eimVar != null) {
            view.removeCallbacks(eimVar);
        }
        eim eimVar2 = this.i;
        if (eimVar2 != null) {
            view.removeCallbacks(eimVar2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0059, code lost:
    
        if (r14 != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007b, code lost:
    
        if (r4 != 3) goto L58;
     */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0100  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z;
        bgv aq;
        boolean z2 = this.f11331f;
        View view2 = this.h;
        if (z2) {
            erj c2 = c();
            if (c2 != null && c2.isShowing() && (aq = c2.aq()) != null && aq.isShown()) {
                MotionEvent obtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
                int[] iArr = this.k;
                view2.getLocationOnScreen(iArr);
                obtainNoHistory.offsetLocation(iArr[0], iArr[1]);
                aq.getLocationOnScreen(iArr);
                obtainNoHistory.offsetLocation(-iArr[0], -iArr[1]);
                boolean n = aq.n(obtainNoHistory, this.f11330e);
                obtainNoHistory.recycle();
                int actionMasked = motionEvent.getActionMasked();
                boolean z3 = (actionMasked == 1 || actionMasked == 3) ? false : true;
                if (n) {
                }
            }
            if (n()) {
                z = false;
            }
            z = true;
        } else {
            if (view2.isEnabled()) {
                int actionMasked2 = motionEvent.getActionMasked();
                if (actionMasked2 != 0) {
                    if (actionMasked2 != 1) {
                        if (actionMasked2 == 2) {
                            int findPointerIndex = motionEvent.findPointerIndex(this.f11330e);
                            if (findPointerIndex >= 0) {
                                float x = motionEvent.getX(findPointerIndex);
                                float y = motionEvent.getY(findPointerIndex);
                                float f2 = this.j;
                                float f3 = -f2;
                                if (x < f3 || y < f3 || x >= (view2.getRight() - view2.getLeft()) + f2 || y >= (view2.getBottom() - view2.getTop()) + f2) {
                                    o();
                                    view2.getParent().requestDisallowInterceptTouchEvent(true);
                                    if (d()) {
                                        z = true;
                                        if (z) {
                                            long uptimeMillis = SystemClock.uptimeMillis();
                                            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0);
                                            view2.onTouchEvent(obtain);
                                            obtain.recycle();
                                        }
                                    }
                                }
                            }
                        }
                    }
                    o();
                } else {
                    this.f11330e = motionEvent.getPointerId(0);
                    if (this.i == null) {
                        this.i = new eim(this, 0);
                    }
                    view2.postDelayed(this.i, this.l);
                    if (this.m == null) {
                        this.m = new eim(this, 1);
                    }
                    view2.postDelayed(this.m, this.f11332g);
                }
            }
            z = false;
            if (z) {
            }
        }
        this.f11331f = z;
        return z || z2;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.f11331f = false;
        this.f11330e = -1;
        eim eimVar = this.i;
        if (eimVar != null) {
            this.h.removeCallbacks(eimVar);
        }
    }
}
