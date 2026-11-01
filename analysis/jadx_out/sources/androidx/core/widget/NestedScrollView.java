package androidx.core.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AnimationUtils;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.akj;
import g.aot;
import g.aoy;
import g.awf;
import g.bgn;
import g.cd;
import g.crt;
import g.cuq;
import g.dit;
import g.dyd;
import g.eg;
import g.fos;
import g.gcp;
import g.glf;
import g.gni;
import g.goi;
import g.gzo;
import g.he;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class NestedScrollView extends FrameLayout implements gcp {
    public boolean aa;

    /* renamed from: ab, reason: collision with root package name */
    public int f160ab;
    public float ac;
    public final int ad;
    public VelocityTracker ae;
    public final EdgeEffect af;

    /* renamed from: d, reason: collision with root package name */
    public int f161d;

    /* renamed from: e, reason: collision with root package name */
    public final int f162e;

    /* renamed from: f, reason: collision with root package name */
    public final int[] f163f;

    /* renamed from: g, reason: collision with root package name */
    public fos f164g;
    public final aot h;
    public int i;
    public boolean j;
    public boolean k;
    public final cuq l;
    public final Rect m;
    public boolean n;
    public View o;
    public final int[] p;
    public int q;
    public final OverScroller r;
    public final EdgeEffect s;
    public final int t;
    public final float u;
    public final dit v;
    public a w;
    public gni x;
    public boolean y;
    public long z;

    /* renamed from: a, reason: collision with root package name */
    public static final float f157a = (float) (Math.log(0.78d) / Math.log(0.9d));

    /* renamed from: c, reason: collision with root package name */
    public static final glf f159c = new glf(3);

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f158b = {R.attr.fillViewport};

    public static class a extends View.BaseSavedState {
        public static final Parcelable.Creator<a> CREATOR = new androidx.core.widget.a();
        public int scrollPosition;

        public a(Parcel parcel) {
            super(parcel);
            this.scrollPosition = parcel.readInt();
        }

        public a(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("HorizontalScrollView.SavedState{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" scrollPosition=");
            return awf.x(sb, this.scrollPosition, "}");
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.scrollPosition);
        }
    }

    public NestedScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, cn.trinea.android.developertools.R.attr.nestedScrollViewStyle);
        this.m = new Rect();
        this.y = true;
        this.k = false;
        this.o = null;
        this.n = false;
        this.j = true;
        this.q = -1;
        this.f163f = new int[2];
        this.p = new int[2];
        this.l = new cuq(getContext(), new aoy(this));
        int i = Build.VERSION.SDK_INT;
        this.s = i >= 31 ? gzo.a(context, attributeSet) : new EdgeEffect(context);
        this.af = i >= 31 ? gzo.a(context, attributeSet) : new EdgeEffect(context);
        this.u = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        this.r = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.f162e = viewConfiguration.getScaledTouchSlop();
        this.ad = viewConfiguration.getScaledMinimumFlingVelocity();
        this.t = viewConfiguration.getScaledMaximumFlingVelocity();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f158b, cn.trinea.android.developertools.R.attr.nestedScrollViewStyle, 0);
        setFillViewport(obtainStyledAttributes.getBoolean(0, false));
        obtainStyledAttributes.recycle();
        this.h = new aot(2);
        this.v = new dit(this);
        setNestedScrollingEnabled(true);
        goi.ab(this, f159c);
    }

    public static boolean ag(View view, NestedScrollView nestedScrollView) {
        if (view == nestedScrollView) {
            return true;
        }
        Object parent = view.getParent();
        return (parent instanceof ViewGroup) && ag((View) parent, nestedScrollView);
    }

    private fos getScrollFeedbackProvider() {
        if (this.f164g == null) {
            this.f164g = new fos(this);
        }
        return this.f164g;
    }

    @Override // android.view.ViewGroup
    public final void addView(View view) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, i);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, i, layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, layoutParams);
    }

    public final int ah(Rect rect) {
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (rect.top > 0) {
            scrollY += verticalFadingEdgeLength;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int i2 = rect.bottom < (childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin ? i - verticalFadingEdgeLength : i;
        int i3 = rect.bottom;
        if (i3 > i2 && rect.top > scrollY) {
            return Math.min(rect.height() > height ? rect.top - scrollY : rect.bottom - i2, (childAt.getBottom() + layoutParams.bottomMargin) - i);
        }
        if (rect.top >= scrollY || i3 >= i2) {
            return 0;
        }
        return Math.max(rect.height() > height ? 0 - (i2 - rect.bottom) : 0 - (scrollY - rect.top), -getScrollY());
    }

    @Override // g.ept
    public final boolean ai(View view, View view2, int i, int i2) {
        return (i & 2) != 0;
    }

    public final void aj(int i) {
        if (getChildCount() > 0) {
            this.r.fling(getScrollX(), getScrollY(), 0, i, 0, 0, Integer.MIN_VALUE, he.UNDEFINED_ITEM_ID, 0, 0);
            av(2, 1);
            this.f160ab = getScrollY();
            postInvalidateOnAnimation();
            if (Build.VERSION.SDK_INT >= 35) {
                crt.a(this, Math.abs(this.r.getCurrVelocity()));
            }
        }
    }

    @Override // g.ept
    public final void ak(View view, View view2, int i, int i2) {
        aot aotVar = this.h;
        if (i2 == 1) {
            aotVar.f10587c = i;
        } else {
            aotVar.f10586b = i;
        }
        av(2, i2);
    }

    @Override // g.ept
    public final void al(int i, View view) {
        aot aotVar = this.h;
        if (i == 1) {
            aotVar.f10587c = 0;
        } else {
            aotVar.f10586b = 0;
        }
        ap(i);
    }

    @Override // g.ept
    public final void am(View view, int i, int i2, int[] iArr, int i3) {
        ay(i, i2, iArr, null, i3);
    }

    public final void an(int i, int i2, int[] iArr) {
        int scrollY = getScrollY();
        scrollBy(0, i);
        int scrollY2 = getScrollY() - scrollY;
        if (iArr != null) {
            iArr[1] = iArr[1] + scrollY2;
        }
        this.v.g(0, scrollY2, 0, i - scrollY2, null, i2, iArr);
    }

    @Override // g.gcp
    public final void ao(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        an(i4, i5, iArr);
    }

    public final void ap(int i) {
        this.v.f(i);
    }

    @Override // g.ept
    public final void aq(View view, int i, int i2, int i3, int i4, int i5) {
        an(i4, i5, null);
    }

    public final boolean ar(View view, int i, int i2) {
        Rect rect = this.m;
        view.getDrawingRect(rect);
        offsetDescendantRectToMyCoords(view, rect);
        return rect.bottom + i >= getScrollY() && rect.top - i <= getScrollY() + i2;
    }

    public final boolean as(int i) {
        int childCount;
        boolean z = i == 130;
        int height = getHeight();
        Rect rect = this.m;
        rect.top = 0;
        rect.bottom = height;
        if (z && (childCount = getChildCount()) > 0) {
            View childAt = getChildAt(childCount - 1);
            int paddingBottom = getPaddingBottom() + childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
            rect.bottom = paddingBottom;
            rect.top = paddingBottom - height;
        }
        return aw(i, rect.top, rect.bottom);
    }

    public final boolean at(EdgeEffect edgeEffect, int i) {
        if (i > 0) {
            return true;
        }
        float w = eg.w(edgeEffect) * getHeight();
        float abs = Math.abs(-i) * 0.35f;
        float f2 = this.u * 0.015f;
        double log = Math.log(abs / f2);
        double d2 = f157a;
        return ((float) (Math.exp((d2 / (d2 - 1.0d)) * log) * ((double) f2))) < w;
    }

    public final void au(int i, int i2, boolean z) {
        if (getChildCount() == 0) {
            return;
        }
        if (AnimationUtils.currentAnimationTimeMillis() - this.z > 250) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int height = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            int max = Math.max(0, Math.min(i2 + scrollY, Math.max(0, height - height2))) - scrollY;
            this.r.startScroll(getScrollX(), scrollY, 0, max, MediaPlayer.MEDIA_PLAYER_OPTION_TT_HLS_DRM);
            if (z) {
                av(2, 1);
            } else {
                ap(1);
            }
            this.f160ab = getScrollY();
            postInvalidateOnAnimation();
        } else {
            if (!this.r.isFinished()) {
                this.r.abortAnimation();
                ap(1);
            }
            scrollBy(i, i2);
        }
        this.z = AnimationUtils.currentAnimationTimeMillis();
    }

    public final boolean av(int i, int i2) {
        return this.v.m(2, i2);
    }

    public final boolean aw(int i, int i2, int i3) {
        boolean z;
        int height = getHeight();
        int scrollY = getScrollY();
        int i4 = height + scrollY;
        boolean z2 = i == 33;
        ArrayList<View> focusables = getFocusables(2);
        int size = focusables.size();
        View view = null;
        boolean z3 = false;
        for (int i5 = 0; i5 < size; i5++) {
            View view2 = focusables.get(i5);
            int top = view2.getTop();
            int bottom = view2.getBottom();
            if (i2 < bottom && top < i3) {
                boolean z4 = i2 < top && bottom < i3;
                if (view == null) {
                    view = view2;
                    z3 = z4;
                } else {
                    boolean z5 = (z2 && top < view.getTop()) || (!z2 && bottom > view.getBottom());
                    if (z3) {
                        if (z4) {
                            if (!z5) {
                            }
                            view = view2;
                        }
                    } else if (z4) {
                        view = view2;
                        z3 = true;
                    } else {
                        if (!z5) {
                        }
                        view = view2;
                    }
                }
            }
        }
        View view3 = view == null ? this : view;
        if (i2 < scrollY || i3 > i4) {
            bb(z2 ? i2 - scrollY : i3 - i4, -1, null, 0, 1, true);
            z = true;
        } else {
            z = false;
        }
        if (view3 != findFocus()) {
            view3.requestFocus(i);
        }
        return z;
    }

    public final void ax(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.q) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f161d = (int) motionEvent.getY(i);
            this.q = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.ae;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    public final boolean ay(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return this.v.l(i, i2, iArr, null, i3);
    }

    public final boolean az(KeyEvent keyEvent) {
        this.m.setEmpty();
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            if (childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin > (getHeight() - getPaddingTop()) - getPaddingBottom()) {
                if (keyEvent.getAction() == 0) {
                    int keyCode = keyEvent.getKeyCode();
                    if (keyCode == 19) {
                        return keyEvent.isAltPressed() ? as(33) : bd(33);
                    }
                    if (keyCode == 20) {
                        return keyEvent.isAltPressed() ? as(130) : bd(130);
                    }
                    if (keyCode == 62) {
                        be(keyEvent.isShiftPressed() ? 33 : 130);
                        return false;
                    }
                    if (keyCode == 92) {
                        return as(33);
                    }
                    if (keyCode == 93) {
                        return as(130);
                    }
                    if (keyCode == 122) {
                        be(33);
                        return false;
                    }
                    if (keyCode == 123) {
                        be(130);
                        return false;
                    }
                }
                return false;
            }
        }
        if (isFocused() && keyEvent.getKeyCode() != 4) {
            View findFocus = findFocus();
            if (findFocus == this) {
                findFocus = null;
            }
            View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, 130);
            if (findNextFocus != null && findNextFocus != this && findNextFocus.requestFocus(130)) {
                return true;
            }
        }
        return false;
    }

    public final boolean ba(int i, int i2, int i3, int i4) {
        int i5;
        boolean z;
        int i6;
        boolean z2;
        getOverScrollMode();
        super.computeHorizontalScrollRange();
        super.computeHorizontalScrollExtent();
        computeVerticalScrollRange();
        super.computeVerticalScrollExtent();
        int i7 = i3 + i;
        if (i2 <= 0 && i2 >= 0) {
            i5 = i2;
            z = false;
        } else {
            z = true;
            i5 = 0;
        }
        if (i7 > i4) {
            i6 = i4;
            z2 = true;
        } else if (i7 < 0) {
            z2 = true;
            i6 = 0;
        } else {
            i6 = i7;
            z2 = false;
        }
        if (z2 && !this.v.j(1)) {
            this.r.springBack(i5, i6, 0, 0, 0, getScrollRange());
        }
        super.scrollTo(i5, i6);
        return z || z2;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0126  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int bb(int i, int i2, MotionEvent motionEvent, int i3, int i4, boolean z) {
        int i5;
        int i6;
        boolean z2;
        VelocityTracker velocityTracker;
        if (i4 == 1) {
            av(2, i4);
        }
        boolean l = this.v.l(0, i, this.p, this.f163f, i4);
        int[] iArr = this.f163f;
        int[] iArr2 = this.p;
        if (l) {
            i5 = i - iArr2[1];
            i6 = iArr[1];
        } else {
            i5 = i;
            i6 = 0;
        }
        int scrollY = getScrollY();
        int scrollRange = getScrollRange();
        int overScrollMode = getOverScrollMode();
        boolean z3 = (overScrollMode == 0 || (overScrollMode == 1 && getScrollRange() > 0)) && !z;
        boolean z4 = ba(i5, 0, scrollY, scrollRange) && !this.v.j(i4);
        int scrollY2 = getScrollY() - scrollY;
        if (motionEvent != null && scrollY2 != 0) {
            getScrollFeedbackProvider().f17158a.onScrollProgress(motionEvent.getDeviceId(), motionEvent.getSource(), i2, scrollY2);
        }
        iArr2[1] = 0;
        this.v.g(0, scrollY2, 0, i5 - scrollY2, this.f163f, i4, iArr2);
        int i7 = i6 + iArr[1];
        int i8 = i5 - iArr2[1];
        int i9 = scrollY + i8;
        EdgeEffect edgeEffect = this.af;
        EdgeEffect edgeEffect2 = this.s;
        if (i9 < 0) {
            if (z3) {
                eg.h(edgeEffect2, (-i8) / getHeight(), i3 / getWidth());
                if (motionEvent != null) {
                    getScrollFeedbackProvider().f17158a.onScrollLimit(motionEvent.getDeviceId(), motionEvent.getSource(), i2, true);
                }
                if (!edgeEffect.isFinished()) {
                    edgeEffect.onRelease();
                }
            }
        } else if (i9 > scrollRange && z3) {
            eg.h(edgeEffect, i8 / getHeight(), 1.0f - (i3 / getWidth()));
            if (motionEvent != null) {
                getScrollFeedbackProvider().f17158a.onScrollLimit(motionEvent.getDeviceId(), motionEvent.getSource(), i2, false);
            }
            if (!edgeEffect2.isFinished()) {
                edgeEffect2.onRelease();
            }
            if (edgeEffect2.isFinished() || !edgeEffect.isFinished()) {
                postInvalidateOnAnimation();
                z2 = false;
            } else {
                z2 = z4;
            }
            if (z2 && i4 == 0 && (velocityTracker = this.ae) != null) {
                velocityTracker.clear();
            }
            if (i4 == 1) {
                ap(i4);
                edgeEffect2.onRelease();
                edgeEffect.onRelease();
            }
            return i7;
        }
        if (edgeEffect2.isFinished()) {
        }
        postInvalidateOnAnimation();
        z2 = false;
        if (z2) {
            velocityTracker.clear();
        }
        if (i4 == 1) {
        }
        return i7;
    }

    public final boolean bc(MotionEvent motionEvent) {
        boolean z;
        EdgeEffect edgeEffect = this.s;
        if (eg.w(edgeEffect) != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            eg.h(edgeEffect, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, motionEvent.getX() / getWidth());
            z = true;
        } else {
            z = false;
        }
        EdgeEffect edgeEffect2 = this.af;
        if (eg.w(edgeEffect2) == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            return z;
        }
        eg.h(edgeEffect2, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f - (motionEvent.getX() / getWidth()));
        return true;
    }

    public final boolean bd(int i) {
        View findFocus = findFocus();
        if (findFocus == this) {
            findFocus = null;
        }
        View view = findFocus;
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, view, i);
        int maxScrollAmount = getMaxScrollAmount();
        if (findNextFocus == null || !ar(findNextFocus, maxScrollAmount, getHeight())) {
            if (i == 33 && getScrollY() < maxScrollAmount) {
                maxScrollAmount = getScrollY();
            } else if (i == 130 && getChildCount() > 0) {
                View childAt = getChildAt(0);
                maxScrollAmount = Math.min((childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin) - ((getHeight() + getScrollY()) - getPaddingBottom()), maxScrollAmount);
            }
            if (maxScrollAmount == 0) {
                return false;
            }
            if (i != 130) {
                maxScrollAmount = -maxScrollAmount;
            }
            bb(maxScrollAmount, -1, null, 0, 1, true);
        } else {
            Rect rect = this.m;
            findNextFocus.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(findNextFocus, rect);
            bb(ah(rect), -1, null, 0, 1, true);
            findNextFocus.requestFocus(i);
        }
        if (view != null && view.isFocused() && !ar(view, 0, getHeight())) {
            int descendantFocusability = getDescendantFocusability();
            setDescendantFocusability(131072);
            requestFocus();
            setDescendantFocusability(descendantFocusability);
        }
        return true;
    }

    public final void be(int i) {
        boolean z = i == 130;
        int height = getHeight();
        Rect rect = this.m;
        if (z) {
            rect.top = getScrollY() + height;
            int childCount = getChildCount();
            if (childCount > 0) {
                View childAt = getChildAt(childCount - 1);
                int paddingBottom = getPaddingBottom() + childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
                if (rect.top + height > paddingBottom) {
                    rect.top = paddingBottom - height;
                }
            }
        } else {
            int scrollY = getScrollY() - height;
            rect.top = scrollY;
            if (scrollY < 0) {
                rect.top = 0;
            }
        }
        int i2 = rect.top;
        int i3 = height + i2;
        rect.bottom = i3;
        aw(i, i2, i3);
    }

    @Override // android.view.View
    public final int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    @Override // android.view.View
    public final int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    @Override // android.view.View
    public final int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00bc  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void computeScroll() {
        int round;
        int i;
        int i2;
        if (this.r.isFinished()) {
            return;
        }
        this.r.computeScrollOffset();
        int currY = this.r.getCurrY();
        int i3 = currY - this.f160ab;
        int height = getHeight();
        EdgeEffect edgeEffect = this.s;
        EdgeEffect edgeEffect2 = this.af;
        if (i3 <= 0 || eg.w(edgeEffect) == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            if (i3 < 0 && eg.w(edgeEffect2) != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                float f2 = height;
                round = Math.round(eg.h(edgeEffect2, (i3 * 4.0f) / f2, 0.5f) * (f2 / 4.0f));
                if (round != i3) {
                    edgeEffect2.finish();
                }
            }
            this.f160ab = currY;
            int[] iArr = this.p;
            iArr[1] = 0;
            ay(0, i3, iArr, null, 1);
            i = i3 - iArr[1];
            int scrollRange = getScrollRange();
            if (Build.VERSION.SDK_INT >= 35) {
                crt.a(this, Math.abs(this.r.getCurrVelocity()));
            }
            if (i == 0) {
                int scrollY = getScrollY();
                ba(i, getScrollX(), scrollY, scrollRange);
                int scrollY2 = getScrollY() - scrollY;
                int i4 = i - scrollY2;
                iArr[1] = 0;
                i2 = 1;
                this.v.g(0, scrollY2, 0, i4, this.f163f, 1, iArr);
                i = i4 - iArr[1];
            } else {
                i2 = 1;
            }
            if (i != 0) {
                int overScrollMode = getOverScrollMode();
                if (overScrollMode == 0 || (overScrollMode == i2 && scrollRange > 0)) {
                    if (i < 0) {
                        if (edgeEffect.isFinished()) {
                            edgeEffect.onAbsorb((int) this.r.getCurrVelocity());
                        }
                    } else if (edgeEffect2.isFinished()) {
                        edgeEffect2.onAbsorb((int) this.r.getCurrVelocity());
                    }
                }
                this.r.abortAnimation();
                ap(i2);
            }
            if (this.r.isFinished()) {
                postInvalidateOnAnimation();
                return;
            } else {
                ap(i2);
                return;
            }
        }
        round = Math.round(eg.h(edgeEffect, ((-i3) * 4.0f) / height, 0.5f) * ((-height) / 4.0f));
        if (round != i3) {
            edgeEffect.finish();
        }
        i3 -= round;
        this.f160ab = currY;
        int[] iArr2 = this.p;
        iArr2[1] = 0;
        ay(0, i3, iArr2, null, 1);
        i = i3 - iArr2[1];
        int scrollRange2 = getScrollRange();
        if (Build.VERSION.SDK_INT >= 35) {
        }
        if (i == 0) {
        }
        if (i != 0) {
        }
        if (this.r.isFinished()) {
        }
    }

    @Override // android.view.View
    public final int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // android.view.View
    public final int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    @Override // android.view.View
    public final int computeVerticalScrollRange() {
        int childCount = getChildCount();
        int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        if (childCount == 0) {
            return height;
        }
        View childAt = getChildAt(0);
        int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
        int scrollY = getScrollY();
        int max = Math.max(0, bottom - height);
        return scrollY < 0 ? bottom - scrollY : scrollY > max ? (scrollY - max) + bottom : bottom;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || az(keyEvent);
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f2, float f3, boolean z) {
        return this.v.i(f2, f3, z);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f2, float f3) {
        return this.v.k(f2, f3);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.v.l(i, i2, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.v.g(i, i2, i3, i4, iArr, 0, null);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int i;
        super.draw(canvas);
        int scrollY = getScrollY();
        EdgeEffect edgeEffect = this.s;
        int i2 = 0;
        if (!edgeEffect.isFinished()) {
            int save = canvas.save();
            int width = getWidth();
            int height = getHeight();
            int min = Math.min(0, scrollY);
            if (getClipToPadding()) {
                width -= getPaddingRight() + getPaddingLeft();
                i = getPaddingLeft();
            } else {
                i = 0;
            }
            if (getClipToPadding()) {
                height -= getPaddingBottom() + getPaddingTop();
                min += getPaddingTop();
            }
            canvas.translate(i, min);
            edgeEffect.setSize(width, height);
            if (edgeEffect.draw(canvas)) {
                postInvalidateOnAnimation();
            }
            canvas.restoreToCount(save);
        }
        EdgeEffect edgeEffect2 = this.af;
        if (edgeEffect2.isFinished()) {
            return;
        }
        int save2 = canvas.save();
        int width2 = getWidth();
        int height2 = getHeight();
        int max = Math.max(getScrollRange(), scrollY) + height2;
        if (getClipToPadding()) {
            width2 -= getPaddingRight() + getPaddingLeft();
            i2 = getPaddingLeft();
        }
        if (getClipToPadding()) {
            height2 -= getPaddingBottom() + getPaddingTop();
            max -= getPaddingBottom();
        }
        canvas.translate(i2 - width2, max);
        canvas.rotate(180.0f, width2, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        edgeEffect2.setSize(width2, height2);
        if (edgeEffect2.draw(canvas)) {
            postInvalidateOnAnimation();
        }
        canvas.restoreToCount(save2);
    }

    @Override // android.view.View
    public float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = ((childAt.getBottom() + layoutParams.bottomMargin) - getScrollY()) - (getHeight() - getPaddingBottom());
        if (bottom < verticalFadingEdgeLength) {
            return bottom / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public int getMaxScrollAmount() {
        return (int) (getHeight() * 0.5f);
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        aot aotVar = this.h;
        return aotVar.f10587c | aotVar.f10586b;
    }

    public int getScrollRange() {
        if (getChildCount() <= 0) {
            return 0;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        return Math.max(0, ((childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin) - ((getHeight() - getPaddingTop()) - getPaddingBottom()));
    }

    @Override // android.view.View
    public float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int scrollY = getScrollY();
        if (scrollY < verticalFadingEdgeLength) {
            return scrollY / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public float getVerticalScrollFactorCompat() {
        if (this.ac == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            TypedValue typedValue = new TypedValue();
            Context context = getContext();
            if (!context.getTheme().resolveAttribute(R.attr.listPreferredItemHeight, typedValue, true)) {
                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
            this.ac = typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return this.ac;
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return this.v.j(0);
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return this.v.f14245a;
    }

    @Override // android.view.ViewGroup
    public final void measureChild(View view, int i, int i2) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft(), layoutParams.width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    public final void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 0));
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.k = false;
    }

    @Override // android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float f2;
        int i;
        int i2;
        if (motionEvent.getAction() == 8 && !this.n) {
            if (dyd.ag(motionEvent, 2)) {
                f2 = motionEvent.getAxisValue(9);
                i2 = (int) motionEvent.getX();
                i = 9;
            } else if (dyd.ag(motionEvent, 4194304)) {
                float axisValue = motionEvent.getAxisValue(26);
                i2 = getWidth() / 2;
                f2 = axisValue;
                i = 26;
            } else {
                f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                i = 0;
                i2 = 0;
            }
            if (f2 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                bb(-((int) (getVerticalScrollFactorCompat() * f2)), i, motionEvent, i2, 1, dyd.ag(motionEvent, 8194));
                if (i == 0) {
                    return true;
                }
                this.l.i(motionEvent, i);
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        boolean z = true;
        if (action == 2 && this.n) {
            return true;
        }
        int i = action & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    int i2 = this.q;
                    if (i2 != -1) {
                        int findPointerIndex = motionEvent.findPointerIndex(i2);
                        if (findPointerIndex == -1) {
                            Log.e("NestedScrollView", "Invalid pointerId=" + i2 + " in onInterceptTouchEvent");
                        } else {
                            int y = (int) motionEvent.getY(findPointerIndex);
                            if (Math.abs(y - this.f161d) > this.f162e && (2 & getNestedScrollAxes()) == 0) {
                                this.n = true;
                                this.f161d = y;
                                if (this.ae == null) {
                                    this.ae = VelocityTracker.obtain();
                                }
                                this.ae.addMovement(motionEvent);
                                this.i = 0;
                                ViewParent parent = getParent();
                                if (parent != null) {
                                    parent.requestDisallowInterceptTouchEvent(true);
                                }
                            }
                        }
                    }
                } else if (i != 3) {
                    if (i == 6) {
                        ax(motionEvent);
                    }
                }
            }
            this.n = false;
            this.q = -1;
            VelocityTracker velocityTracker = this.ae;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.ae = null;
            }
            if (this.r.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                postInvalidateOnAnimation();
            }
            ap(0);
        } else {
            int y2 = (int) motionEvent.getY();
            int x = (int) motionEvent.getX();
            if (getChildCount() > 0) {
                int scrollY = getScrollY();
                View childAt = getChildAt(0);
                if (y2 >= childAt.getTop() - scrollY && y2 < childAt.getBottom() - scrollY && x >= childAt.getLeft() && x < childAt.getRight()) {
                    this.f161d = y2;
                    this.q = motionEvent.getPointerId(0);
                    VelocityTracker velocityTracker2 = this.ae;
                    if (velocityTracker2 == null) {
                        this.ae = VelocityTracker.obtain();
                    } else {
                        velocityTracker2.clear();
                    }
                    this.ae.addMovement(motionEvent);
                    this.r.computeScrollOffset();
                    if (!bc(motionEvent) && this.r.isFinished()) {
                        z = false;
                    }
                    this.n = z;
                    av(2, 0);
                }
            }
            if (!bc(motionEvent) && this.r.isFinished()) {
                z = false;
            }
            this.n = z;
            VelocityTracker velocityTracker3 = this.ae;
            if (velocityTracker3 != null) {
                velocityTracker3.recycle();
                this.ae = null;
            }
        }
        return this.n;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        super.onLayout(z, i, i2, i3, i4);
        int i6 = 0;
        this.y = false;
        View view = this.o;
        if (view != null && ag(view, this)) {
            View view2 = this.o;
            Rect rect = this.m;
            view2.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(view2, rect);
            int ah = ah(rect);
            if (ah != 0) {
                scrollBy(0, ah);
            }
        }
        this.o = null;
        if (!this.k) {
            if (this.w != null) {
                scrollTo(getScrollX(), this.w.scrollPosition);
                this.w = null;
            }
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                i5 = childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            } else {
                i5 = 0;
            }
            int paddingTop = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            if (paddingTop < i5 && scrollY >= 0) {
                i6 = paddingTop + scrollY > i5 ? i5 - paddingTop : scrollY;
            }
            if (i6 != scrollY) {
                scrollTo(getScrollX(), i6);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.k = true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.aa && View.MeasureSpec.getMode(i2) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int measuredHeight2 = (((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - layoutParams.topMargin) - layoutParams.bottomMargin;
            if (measuredHeight < measuredHeight2) {
                childAt.measure(ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.width), View.MeasureSpec.makeMeasureSpec(measuredHeight2, C.ENCODING_PCM_32BIT));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f2, float f3, boolean z) {
        if (z) {
            return false;
        }
        dispatchNestedFling(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, f3, true);
        aj((int) f3);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f2, float f3) {
        return this.v.k(f2, f3);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        ay(i, i2, iArr, null, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        an(i4, 0, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i) {
        ak(view, view2, i, 0);
    }

    @Override // android.view.View
    public final void onOverScrolled(int i, int i2, boolean z, boolean z2) {
        super.scrollTo(i, i2);
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i, Rect rect) {
        if (i == 2) {
            i = 130;
        } else if (i == 1) {
            i = 33;
        }
        View findNextFocus = rect == null ? FocusFinder.getInstance().findNextFocus(this, null, i) : FocusFinder.getInstance().findNextFocusFromRect(this, rect, i);
        if (findNextFocus != null && ar(findNextFocus, 0, getHeight())) {
            return findNextFocus.requestFocus(i, rect);
        }
        return false;
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof a)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        a aVar = (a) parcelable;
        super.onRestoreInstanceState(aVar.getSuperState());
        this.w = aVar;
        requestLayout();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        a aVar = new a(super.onSaveInstanceState());
        aVar.scrollPosition = getScrollY();
        return aVar;
    }

    @Override // android.view.View
    public final void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        gni gniVar = this.x;
        if (gniVar != null) {
            akj akjVar = (akj) gniVar;
            bgn.aj(this, (View) akjVar.h, (View) akjVar.f10384f);
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        View findFocus = findFocus();
        if (findFocus == null || this == findFocus || !ar(findFocus, 0, i4)) {
            return;
        }
        Rect rect = this.m;
        findFocus.getDrawingRect(rect);
        offsetDescendantRectToMyCoords(findFocus, rect);
        int ah = ah(rect);
        if (ah != 0) {
            if (this.j) {
                au(0, ah, false);
            } else {
                scrollBy(0, ah);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i) {
        return ai(view, view2, i, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        al(0, view);
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0148  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        float h;
        int round;
        int i;
        ViewParent parent2;
        if (this.ae == null) {
            this.ae = VelocityTracker.obtain();
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.i = 0;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        float f2 = this.i;
        float f3 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        obtain.offsetLocation(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, f2);
        if (actionMasked != 0) {
            EdgeEffect edgeEffect = this.s;
            EdgeEffect edgeEffect2 = this.af;
            if (actionMasked == 1) {
                VelocityTracker velocityTracker = this.ae;
                velocityTracker.computeCurrentVelocity(1000, this.t);
                int yVelocity = (int) velocityTracker.getYVelocity(this.q);
                if (Math.abs(yVelocity) >= this.ad) {
                    if (eg.w(edgeEffect) != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        if (at(edgeEffect, yVelocity)) {
                            edgeEffect.onAbsorb(yVelocity);
                        } else {
                            aj(-yVelocity);
                        }
                    } else if (eg.w(edgeEffect2) != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        int i2 = -yVelocity;
                        if (at(edgeEffect2, i2)) {
                            edgeEffect2.onAbsorb(i2);
                        } else {
                            aj(i2);
                        }
                    } else {
                        int i3 = -yVelocity;
                        float f4 = i3;
                        if (!this.v.k(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, f4)) {
                            dispatchNestedFling(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, f4, true);
                            aj(i3);
                        }
                    }
                } else if (this.r.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    postInvalidateOnAnimation();
                }
                this.q = -1;
                this.n = false;
                VelocityTracker velocityTracker2 = this.ae;
                if (velocityTracker2 != null) {
                    velocityTracker2.recycle();
                    this.ae = null;
                }
                ap(0);
                this.s.onRelease();
                this.af.onRelease();
            } else if (actionMasked == 2) {
                int findPointerIndex = motionEvent.findPointerIndex(this.q);
                if (findPointerIndex == -1) {
                    Log.e("NestedScrollView", "Invalid pointerId=" + this.q + " in onTouchEvent");
                } else {
                    int y = (int) motionEvent.getY(findPointerIndex);
                    int i4 = this.f161d - y;
                    float x = motionEvent.getX(findPointerIndex) / getWidth();
                    float height = i4 / getHeight();
                    if (eg.w(edgeEffect) != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        h = -eg.h(edgeEffect, -height, x);
                        if (eg.w(edgeEffect) == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                            edgeEffect.onRelease();
                        }
                    } else {
                        if (eg.w(edgeEffect2) != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                            h = eg.h(edgeEffect2, height, 1.0f - x);
                            if (eg.w(edgeEffect2) == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                                edgeEffect2.onRelease();
                            }
                        }
                        round = Math.round(f3 * getHeight());
                        if (round != 0) {
                            invalidate();
                        }
                        i = i4 - round;
                        if (!this.n && Math.abs(i) > this.f162e) {
                            parent2 = getParent();
                            if (parent2 != null) {
                                parent2.requestDisallowInterceptTouchEvent(true);
                            }
                            this.n = true;
                            i = i <= 0 ? i - this.f162e : i + this.f162e;
                        }
                        if (this.n) {
                            int bb = bb(i, 1, motionEvent, (int) motionEvent.getX(findPointerIndex), 0, false);
                            this.f161d = y - bb;
                            this.i += bb;
                        }
                    }
                    f3 = h;
                    round = Math.round(f3 * getHeight());
                    if (round != 0) {
                    }
                    i = i4 - round;
                    if (!this.n) {
                        parent2 = getParent();
                        if (parent2 != null) {
                        }
                        this.n = true;
                        if (i <= 0) {
                        }
                    }
                    if (this.n) {
                    }
                }
            } else if (actionMasked == 3) {
                if (this.n && getChildCount() > 0) {
                    if (this.r.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                        postInvalidateOnAnimation();
                    }
                }
                this.q = -1;
                this.n = false;
                VelocityTracker velocityTracker3 = this.ae;
                if (velocityTracker3 != null) {
                    velocityTracker3.recycle();
                    this.ae = null;
                }
                ap(0);
                this.s.onRelease();
                this.af.onRelease();
            } else if (actionMasked == 5) {
                int actionIndex = motionEvent.getActionIndex();
                this.f161d = (int) motionEvent.getY(actionIndex);
                this.q = motionEvent.getPointerId(actionIndex);
            } else if (actionMasked == 6) {
                ax(motionEvent);
                this.f161d = (int) motionEvent.getY(motionEvent.findPointerIndex(this.q));
            }
        } else {
            if (getChildCount() == 0) {
                return false;
            }
            if (this.n && (parent = getParent()) != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            if (!this.r.isFinished()) {
                this.r.abortAnimation();
                ap(1);
            }
            int y2 = (int) motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            this.f161d = y2;
            this.q = pointerId;
            av(2, 0);
        }
        VelocityTracker velocityTracker4 = this.ae;
        if (velocityTracker4 != null) {
            velocityTracker4.addMovement(obtain);
        }
        obtain.recycle();
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        if (this.y) {
            this.o = view2;
        } else {
            Rect rect = this.m;
            view2.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(view2, rect);
            int ah = ah(rect);
            if (ah != 0) {
                scrollBy(0, ah);
            }
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        int ah = ah(rect);
        boolean z2 = ah != 0;
        if (z2) {
            if (z) {
                scrollBy(0, ah);
                return z2;
            }
            au(0, ah, false);
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        VelocityTracker velocityTracker;
        if (z && (velocityTracker = this.ae) != null) {
            velocityTracker.recycle();
            this.ae = null;
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        this.y = true;
        super.requestLayout();
    }

    @Override // android.view.View
    public final void scrollTo(int i, int i2) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
            int width2 = childAt.getWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
            int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int height2 = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            if (width >= width2 || i < 0) {
                i = 0;
            } else if (width + i > width2) {
                i = width2 - width;
            }
            if (height >= height2 || i2 < 0) {
                i2 = 0;
            } else if (height + i2 > height2) {
                i2 = height2 - height;
            }
            if (i == getScrollX() && i2 == getScrollY()) {
                return;
            }
            super.scrollTo(i, i2);
        }
    }

    public void setFillViewport(boolean z) {
        if (z != this.aa) {
            this.aa = z;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        dit ditVar = this.v;
        if (ditVar.f14245a) {
            ViewGroup viewGroup = ditVar.f14249e;
            WeakHashMap weakHashMap = goi.f18490c;
            cd.h(viewGroup);
        }
        ditVar.f14245a = z;
    }

    public void setOnScrollChangeListener(gni gniVar) {
        this.x = gniVar;
    }

    public void setSmoothScrollingEnabled(boolean z) {
        this.j = z;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i) {
        return this.v.m(i, 0);
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        ap(0);
    }
}
