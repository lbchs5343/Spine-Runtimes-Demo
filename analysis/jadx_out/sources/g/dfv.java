package g;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class dfv {

    /* renamed from: a, reason: collision with root package name */
    public static final bur f14104a = new bur(1);

    /* renamed from: b, reason: collision with root package name */
    public int[] f14105b;

    /* renamed from: c, reason: collision with root package name */
    public int f14106c;

    /* renamed from: d, reason: collision with root package name */
    public final int f14107d;

    /* renamed from: e, reason: collision with root package name */
    public final float f14108e;

    /* renamed from: f, reason: collision with root package name */
    public float[] f14109f;

    /* renamed from: g, reason: collision with root package name */
    public VelocityTracker f14110g;
    public float[] h;
    public int i;
    public float[] k;
    public boolean l;
    public final OverScroller m;
    public final float n;
    public int[] o;
    public final int p;
    public int[] q;
    public final eg r;
    public final CoordinatorLayout s;
    public float[] u;
    public View v;
    public int t = -1;
    public final dyn j = new dyn(3, this);

    public dfv(Context context, CoordinatorLayout coordinatorLayout, eg egVar) {
        if (egVar == null) {
            throw new IllegalArgumentException("Callback may not be null");
        }
        this.s = coordinatorLayout;
        this.r = egVar;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f14107d = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
        this.p = viewConfiguration.getScaledTouchSlop();
        this.n = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f14108e = viewConfiguration.getScaledMinimumFlingVelocity();
        this.m = new OverScroller(context, f14104a);
    }

    public final void aa(int i) {
        float[] fArr = this.f14109f;
        if (fArr != null) {
            int i2 = this.f14106c;
            int i3 = 1 << i;
            if ((i2 & i3) != 0) {
                fArr[i] = 0.0f;
                this.h[i] = 0.0f;
                this.k[i] = 0.0f;
                this.u[i] = 0.0f;
                this.f14105b[i] = 0;
                this.o[i] = 0;
                this.q[i] = 0;
                this.f14106c = (~i3) & i2;
            }
        }
    }

    public final void ab(float f2, float f3, int i) {
        float[] fArr = this.f14109f;
        if (fArr == null || fArr.length <= i) {
            int i2 = i + 1;
            float[] fArr2 = new float[i2];
            float[] fArr3 = new float[i2];
            float[] fArr4 = new float[i2];
            float[] fArr5 = new float[i2];
            int[] iArr = new int[i2];
            int[] iArr2 = new int[i2];
            int[] iArr3 = new int[i2];
            if (fArr != null) {
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                float[] fArr6 = this.h;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.k;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.u;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.f14105b;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.o;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.q;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.f14109f = fArr2;
            this.h = fArr3;
            this.k = fArr4;
            this.u = fArr5;
            this.f14105b = iArr;
            this.o = iArr2;
            this.q = iArr3;
        }
        float[] fArr9 = this.f14109f;
        this.k[i] = f2;
        fArr9[i] = f2;
        float[] fArr10 = this.h;
        this.u[i] = f3;
        fArr10[i] = f3;
        int[] iArr7 = this.f14105b;
        int i3 = (int) f2;
        int i4 = (int) f3;
        CoordinatorLayout coordinatorLayout = this.s;
        int left = coordinatorLayout.getLeft();
        int i5 = this.f14107d;
        int i6 = i3 < left + i5 ? 1 : 0;
        if (i4 < coordinatorLayout.getTop() + i5) {
            i6 |= 4;
        }
        if (i3 > coordinatorLayout.getRight() - i5) {
            i6 |= 2;
        }
        if (i4 > coordinatorLayout.getBottom() - i5) {
            i6 |= 8;
        }
        iArr7[i] = i6;
        this.f14106c |= 1 << i;
    }

    public final int ac(int i, int i2, int i3) {
        if (i == 0) {
            return 0;
        }
        float width = this.s.getWidth() / 2;
        float sin = (((float) Math.sin((Math.min(1.0f, Math.abs(i) / r0) - 0.5f) * 0.47123894f)) * width) + width;
        int abs = Math.abs(i2);
        return Math.min(abs > 0 ? Math.round(Math.abs(sin / abs) * 1000.0f) * 4 : (int) (((Math.abs(i) / i3) + 1.0f) * 256.0f), 600);
    }

    public final void ad() {
        this.t = -1;
        float[] fArr = this.f14109f;
        if (fArr != null) {
            Arrays.fill(fArr, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            Arrays.fill(this.h, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            Arrays.fill(this.k, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            Arrays.fill(this.u, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            Arrays.fill(this.f14105b, 0);
            Arrays.fill(this.o, 0);
            Arrays.fill(this.q, 0);
            this.f14106c = 0;
        }
        VelocityTracker velocityTracker = this.f14110g;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f14110g = null;
        }
    }

    public final boolean ae() {
        if (this.i == 2) {
            OverScroller overScroller = this.m;
            boolean computeScrollOffset = overScroller.computeScrollOffset();
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int left = currX - this.v.getLeft();
            int top = currY - this.v.getTop();
            if (left != 0) {
                goi.i(left, this.v);
            }
            if (top != 0) {
                goi.m(top, this.v);
            }
            if (left != 0 || top != 0) {
                this.r.am(this.v, currX, currY);
            }
            if (computeScrollOffset && currX == overScroller.getFinalX() && currY == overScroller.getFinalY()) {
                overScroller.abortAnimation();
                computeScrollOffset = false;
            }
            if (!computeScrollOffset) {
                this.s.post(this.j);
            }
        }
        return this.i == 2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x00cd, code lost:
    
        if (r12 != r11) goto L52;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean af(MotionEvent motionEvent) {
        View am;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            ad();
        }
        if (this.f14110g == null) {
            this.f14110g = VelocityTracker.obtain();
        }
        this.f14110g.addMovement(motionEvent);
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        if (actionMasked == 5) {
                            int pointerId = motionEvent.getPointerId(actionIndex);
                            float x = motionEvent.getX(actionIndex);
                            float y = motionEvent.getY(actionIndex);
                            ab(x, y, pointerId);
                            int i = this.i;
                            if (i == 0) {
                                int i2 = this.f14105b[pointerId];
                            } else if (i == 2 && (am = am((int) x, (int) y)) == this.v) {
                                ak(pointerId, am);
                            }
                        } else if (actionMasked == 6) {
                            aa(motionEvent.getPointerId(actionIndex));
                        }
                    }
                } else if (this.f14109f != null && this.h != null) {
                    int pointerCount = motionEvent.getPointerCount();
                    for (int i3 = 0; i3 < pointerCount; i3++) {
                        int pointerId2 = motionEvent.getPointerId(i3);
                        if (ah(pointerId2)) {
                            float x2 = motionEvent.getX(i3);
                            float y2 = motionEvent.getY(i3);
                            float f2 = x2 - this.f14109f[pointerId2];
                            float f3 = y2 - this.h[pointerId2];
                            View am2 = am((int) x2, (int) y2);
                            boolean z = am2 != null && al(am2, f2, f3);
                            if (z) {
                                int left = am2.getLeft();
                                eg egVar = this.r;
                                int ak = egVar.ak(((int) f2) + left, am2);
                                int top = am2.getTop();
                                int an = egVar.an(((int) f3) + top, am2);
                                int ap = egVar.ap(am2);
                                int ar = egVar.ar();
                                if (ap != 0) {
                                    if (ap > 0) {
                                    }
                                }
                                if (ar == 0) {
                                    break;
                                }
                                if (ar > 0 && an == top) {
                                    break;
                                }
                            }
                            Math.abs(f2);
                            Math.abs(f3);
                            int i4 = this.f14105b[pointerId2];
                            Math.abs(f3);
                            Math.abs(f2);
                            int i5 = this.f14105b[pointerId2];
                            Math.abs(f2);
                            Math.abs(f3);
                            int i6 = this.f14105b[pointerId2];
                            Math.abs(f3);
                            Math.abs(f2);
                            int i7 = this.f14105b[pointerId2];
                            if (this.i == 1) {
                                break;
                            }
                            if (z && ak(pointerId2, am2)) {
                                break;
                            }
                        }
                    }
                    ag(motionEvent);
                }
            }
            ad();
        } else {
            float x3 = motionEvent.getX();
            float y3 = motionEvent.getY();
            int pointerId3 = motionEvent.getPointerId(0);
            ab(x3, y3, pointerId3);
            View am3 = am((int) x3, (int) y3);
            if (am3 == this.v && this.i == 2) {
                ak(pointerId3, am3);
            }
            int i8 = this.f14105b[pointerId3];
        }
        return this.i == 1;
    }

    public final void ag(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i = 0; i < pointerCount; i++) {
            int pointerId = motionEvent.getPointerId(i);
            if (ah(pointerId)) {
                float x = motionEvent.getX(i);
                float y = motionEvent.getY(i);
                this.k[pointerId] = x;
                this.u[pointerId] = y;
            }
        }
    }

    public final boolean ah(int i) {
        if ((this.f14106c & (1 << i)) != 0) {
            return true;
        }
        Log.e("ViewDragHelper", "Ignoring pointerId=" + i + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
        return false;
    }

    public final void ai(int i, View view) {
        ViewParent parent = view.getParent();
        CoordinatorLayout coordinatorLayout = this.s;
        if (parent != coordinatorLayout) {
            throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + coordinatorLayout + ")");
        }
        this.v = view;
        this.t = i;
        this.r.aq(i, view);
        z(1);
    }

    public final void aj(MotionEvent motionEvent) {
        int i;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            ad();
        }
        if (this.f14110g == null) {
            this.f14110g = VelocityTracker.obtain();
        }
        this.f14110g.addMovement(motionEvent);
        int i2 = 0;
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View am = am((int) x, (int) y);
            ab(x, y, pointerId);
            ak(pointerId, am);
            int i3 = this.f14105b[pointerId];
            return;
        }
        if (actionMasked == 1) {
            if (this.i == 1) {
                x();
            }
            ad();
            return;
        }
        eg egVar = this.r;
        if (actionMasked != 2) {
            if (actionMasked == 3) {
                if (this.i == 1) {
                    this.l = true;
                    egVar.al(this.v, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                    this.l = false;
                    if (this.i == 1) {
                        z(0);
                    }
                }
                ad();
                return;
            }
            if (actionMasked == 5) {
                int pointerId2 = motionEvent.getPointerId(actionIndex);
                float x2 = motionEvent.getX(actionIndex);
                float y2 = motionEvent.getY(actionIndex);
                ab(x2, y2, pointerId2);
                if (this.i == 0) {
                    ak(pointerId2, am((int) x2, (int) y2));
                    int i4 = this.f14105b[pointerId2];
                    return;
                }
                int i5 = (int) x2;
                int i6 = (int) y2;
                View view = this.v;
                if (view != null && i5 >= view.getLeft() && i5 < view.getRight() && i6 >= view.getTop() && i6 < view.getBottom()) {
                    i2 = 1;
                }
                if (i2 != 0) {
                    ak(pointerId2, this.v);
                    return;
                }
                return;
            }
            if (actionMasked != 6) {
                return;
            }
            int pointerId3 = motionEvent.getPointerId(actionIndex);
            if (this.i == 1 && pointerId3 == this.t) {
                int pointerCount = motionEvent.getPointerCount();
                while (true) {
                    if (i2 >= pointerCount) {
                        i = -1;
                        break;
                    }
                    int pointerId4 = motionEvent.getPointerId(i2);
                    if (pointerId4 != this.t) {
                        View am2 = am((int) motionEvent.getX(i2), (int) motionEvent.getY(i2));
                        View view2 = this.v;
                        if (am2 == view2 && ak(pointerId4, view2)) {
                            i = this.t;
                            break;
                        }
                    }
                    i2++;
                }
                if (i == -1) {
                    x();
                }
            }
            aa(pointerId3);
            return;
        }
        if (this.i == 1) {
            if (ah(this.t)) {
                int findPointerIndex = motionEvent.findPointerIndex(this.t);
                float x3 = motionEvent.getX(findPointerIndex);
                float y3 = motionEvent.getY(findPointerIndex);
                float[] fArr = this.k;
                int i7 = this.t;
                int i8 = (int) (x3 - fArr[i7]);
                int i9 = (int) (y3 - this.u[i7]);
                int left = this.v.getLeft() + i8;
                int top = this.v.getTop() + i9;
                int left2 = this.v.getLeft();
                int top2 = this.v.getTop();
                if (i8 != 0) {
                    left = egVar.ak(left, this.v);
                    goi.i(left - left2, this.v);
                }
                if (i9 != 0) {
                    top = egVar.an(top, this.v);
                    goi.m(top - top2, this.v);
                }
                if (i8 != 0 || i9 != 0) {
                    egVar.am(this.v, left, top);
                }
                ag(motionEvent);
                return;
            }
            return;
        }
        int pointerCount2 = motionEvent.getPointerCount();
        while (i2 < pointerCount2) {
            int pointerId5 = motionEvent.getPointerId(i2);
            if (ah(pointerId5)) {
                float x4 = motionEvent.getX(i2);
                float y4 = motionEvent.getY(i2);
                float f2 = x4 - this.f14109f[pointerId5];
                float f3 = y4 - this.h[pointerId5];
                Math.abs(f2);
                Math.abs(f3);
                int i10 = this.f14105b[pointerId5];
                Math.abs(f3);
                Math.abs(f2);
                int i11 = this.f14105b[pointerId5];
                Math.abs(f2);
                Math.abs(f3);
                int i12 = this.f14105b[pointerId5];
                Math.abs(f3);
                Math.abs(f2);
                int i13 = this.f14105b[pointerId5];
                if (this.i != 1) {
                    View am3 = am((int) x4, (int) y4);
                    if (al(am3, f2, f3) && ak(pointerId5, am3)) {
                        break;
                    }
                } else {
                    break;
                }
            }
            i2++;
        }
        ag(motionEvent);
    }

    public final boolean ak(int i, View view) {
        if (view == this.v && this.t == i) {
            return true;
        }
        if (view == null || !this.r.as(i, view)) {
            return false;
        }
        this.t = i;
        ai(i, view);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0047 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean al(View view, float f2, float f3) {
        if (view != null) {
            eg egVar = this.r;
            boolean z = egVar.ap(view) > 0;
            boolean z2 = egVar.ar() > 0;
            if (z && z2) {
                float f4 = (f3 * f3) + (f2 * f2);
                int i = this.p;
                if (f4 > i * i) {
                }
            } else if (!z ? !(!z2 || Math.abs(f3) <= this.p) : Math.abs(f2) > this.p) {
                return true;
            }
        }
        return false;
    }

    public final View am(int i, int i2) {
        CoordinatorLayout coordinatorLayout = this.s;
        for (int childCount = coordinatorLayout.getChildCount() - 1; childCount >= 0; childCount--) {
            this.r.getClass();
            View childAt = coordinatorLayout.getChildAt(childCount);
            if (i >= childAt.getLeft() && i < childAt.getRight() && i2 >= childAt.getTop() && i2 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    public final boolean w(int i, int i2, int i3, int i4) {
        float f2;
        float f3;
        float f4;
        float f5;
        int left = this.v.getLeft();
        int top = this.v.getTop();
        int i5 = i - left;
        int i6 = i2 - top;
        OverScroller overScroller = this.m;
        if (i5 == 0 && i6 == 0) {
            overScroller.abortAnimation();
            z(0);
            return false;
        }
        View view = this.v;
        int i7 = (int) this.f14108e;
        int i8 = (int) this.n;
        int abs = Math.abs(i3);
        if (abs < i7) {
            i3 = 0;
        } else if (abs > i8) {
            i3 = i3 > 0 ? i8 : -i8;
        }
        int abs2 = Math.abs(i4);
        if (abs2 < i7) {
            i4 = 0;
        } else if (abs2 > i8) {
            i4 = i4 > 0 ? i8 : -i8;
        }
        int abs3 = Math.abs(i5);
        int abs4 = Math.abs(i6);
        int abs5 = Math.abs(i3);
        int abs6 = Math.abs(i4);
        int i9 = abs5 + abs6;
        int i10 = abs3 + abs4;
        if (i3 != 0) {
            f2 = abs5;
            f3 = i9;
        } else {
            f2 = abs3;
            f3 = i10;
        }
        float f6 = f2 / f3;
        if (i4 != 0) {
            f4 = abs6;
            f5 = i9;
        } else {
            f4 = abs4;
            f5 = i10;
        }
        float f7 = f4 / f5;
        eg egVar = this.r;
        overScroller.startScroll(left, top, i5, i6, (int) ((ac(i6, i4, egVar.ar()) * f7) + (ac(i5, i3, egVar.ap(view)) * f6)));
        z(2);
        return true;
    }

    public final void x() {
        VelocityTracker velocityTracker = this.f14110g;
        float f2 = this.n;
        velocityTracker.computeCurrentVelocity(1000, f2);
        float xVelocity = this.f14110g.getXVelocity(this.t);
        float abs = Math.abs(xVelocity);
        float f3 = this.f14108e;
        if (abs < f3) {
            xVelocity = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        } else if (abs > f2) {
            xVelocity = xVelocity > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? f2 : -f2;
        }
        float yVelocity = this.f14110g.getYVelocity(this.t);
        float abs2 = Math.abs(yVelocity);
        if (abs2 < f3) {
            f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        } else if (abs2 <= f2) {
            f2 = yVelocity;
        } else if (yVelocity <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            f2 = -f2;
        }
        this.l = true;
        this.r.al(this.v, xVelocity, f2);
        this.l = false;
        if (this.i == 1) {
            z(0);
        }
    }

    public final boolean y(int i, int i2) {
        if (this.l) {
            return w(i, i2, (int) this.f14110g.getXVelocity(this.t), (int) this.f14110g.getYVelocity(this.t));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    public final void z(int i) {
        this.s.removeCallbacks(this.j);
        if (this.i != i) {
            this.i = i;
            this.r.aj(i);
            if (this.i == 0) {
                this.v = null;
            }
        }
    }
}
