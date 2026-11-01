package androidx.recyclerview.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.akj;
import g.aqz;
import g.awf;
import g.bcp;
import g.dgn;
import g.eie;
import g.emr;
import g.fc;
import g.fmk;
import g.fnz;
import g.goi;
import g.gur;
import g.he;
import g.kr;
import g.yx;
import g.zg;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public abstract class b {
    public final boolean dl;
    public boolean dm;
    public int dn;

    /* renamed from: do, reason: not valid java name */
    public int f0do;
    public final akj dp;
    public int dq;
    public i dr;
    public n ds;
    public boolean dt;
    public int du;
    public final boolean dv;
    public RecyclerView dw;
    public int dx;
    public final akj dy;
    public boolean dz;

    public b() {
        eie eieVar = new eie(16, this);
        emr emrVar = new emr(15, this);
        this.dy = new akj(eieVar);
        this.dp = new akj(emrVar);
        this.dt = false;
        this.dz = false;
        this.dl = true;
        this.dv = true;
    }

    public static int ea(View view) {
        Rect rect = ((yx) view.getLayoutParams()).f20372c;
        return view.getMeasuredHeight() + rect.top + rect.bottom;
    }

    public static gur eb(Context context, AttributeSet attributeSet, int i, int i2) {
        gur gurVar = new gur();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, zg.f20393a, i, i2);
        gurVar.f18784b = obtainStyledAttributes.getInt(0, 1);
        gurVar.f18785c = obtainStyledAttributes.getInt(10, 1);
        gurVar.f18786d = obtainStyledAttributes.getBoolean(9, false);
        gurVar.f18783a = obtainStyledAttributes.getBoolean(11, false);
        obtainStyledAttributes.recycle();
        return gurVar;
    }

    public static void ec(View view, int i, int i2, int i3, int i4) {
        yx yxVar = (yx) view.getLayoutParams();
        Rect rect = yxVar.f20372c;
        view.layout(i + rect.left + ((ViewGroup.MarginLayoutParams) yxVar).leftMargin, i2 + rect.top + ((ViewGroup.MarginLayoutParams) yxVar).topMargin, (i3 - rect.right) - ((ViewGroup.MarginLayoutParams) yxVar).rightMargin, (i4 - rect.bottom) - ((ViewGroup.MarginLayoutParams) yxVar).bottomMargin);
    }

    public static int ed(View view) {
        return ((yx) view.getLayoutParams()).f20371b.ag();
    }

    public static boolean ee(int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (i3 > 0 && i != i3) {
            return false;
        }
        if (mode == Integer.MIN_VALUE) {
            return size >= i;
        }
        if (mode != 0) {
            return mode == 1073741824 && size == i;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0019, code lost:
    
        if (r5 == 1073741824) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int ef(int i, int i2, int i3, int i4, boolean z) {
        int max = Math.max(0, i - i3);
        if (z) {
            if (i4 < 0) {
                if (i4 == -1) {
                    if (i2 != Integer.MIN_VALUE) {
                        if (i2 != 0) {
                        }
                    }
                    i4 = max;
                }
                i2 = 0;
                i4 = 0;
            }
            i2 = C.ENCODING_PCM_32BIT;
        } else {
            if (i4 < 0) {
                if (i4 != -1) {
                    if (i4 == -2) {
                        i2 = (i2 == Integer.MIN_VALUE || i2 == 1073741824) ? Integer.MIN_VALUE : 0;
                    }
                    i2 = 0;
                    i4 = 0;
                }
                i4 = max;
            }
            i2 = C.ENCODING_PCM_32BIT;
        }
        return View.MeasureSpec.makeMeasureSpec(i4, i2);
    }

    public static int eg(View view) {
        Rect rect = ((yx) view.getLayoutParams()).f20372c;
        return view.getMeasuredWidth() + rect.left + rect.right;
    }

    public static int eh(int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        return mode != Integer.MIN_VALUE ? mode != 1073741824 ? Math.max(i2, i3) : size : Math.min(size, Math.max(i2, i3));
    }

    public boolean ab(yx yxVar) {
        return yxVar != null;
    }

    public yx ae(Context context, AttributeSet attributeSet) {
        return new yx(context, attributeSet);
    }

    public void ag(int i, int i2) {
    }

    public boolean ah() {
        return false;
    }

    public abstract View aj(View view, int i, f fVar, aqz aqzVar);

    public abstract int am(int i, f fVar, aqz aqzVar);

    public yx ao(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof yx ? new yx((yx) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new yx((ViewGroup.MarginLayoutParams) layoutParams) : new yx(layoutParams);
    }

    public abstract void ap(aqz aqzVar);

    public void au() {
    }

    public int av(f fVar, aqz aqzVar) {
        RecyclerView recyclerView = this.dw;
        if (recyclerView == null || recyclerView.mAdapter == null || !cd()) {
            return 1;
        }
        return this.dw.mAdapter.getItemCount();
    }

    public int aw(f fVar, aqz aqzVar) {
        RecyclerView recyclerView = this.dw;
        if (recyclerView == null || recyclerView.mAdapter == null || !ca()) {
            return 1;
        }
        return this.dw.mAdapter.getItemCount();
    }

    public void ay(Rect rect, int i, int i2) {
        int fj = fj() + eq() + rect.width();
        int er = er() + fd() + rect.height();
        RecyclerView recyclerView = this.dw;
        WeakHashMap weakHashMap = goi.f18490c;
        this.dw.setMeasuredDimension(eh(i, fj, recyclerView.getMinimumWidth()), eh(i2, er, this.dw.getMinimumHeight()));
    }

    public abstract yx az();

    public void bb(int i, int i2) {
    }

    public void bu(int i, int i2, aqz aqzVar, r rVar) {
    }

    public boolean bx() {
        return false;
    }

    public abstract boolean ca();

    public Parcelable cc() {
        return null;
    }

    public abstract boolean cd();

    public void ce(AccessibilityEvent accessibilityEvent) {
        RecyclerView recyclerView = this.dw;
        f fVar = recyclerView.mRecycler;
        if (accessibilityEvent == null) {
            return;
        }
        boolean z = true;
        if (!recyclerView.canScrollVertically(1) && !this.dw.canScrollVertically(-1) && !this.dw.canScrollHorizontally(-1) && !this.dw.canScrollHorizontally(1)) {
            z = false;
        }
        accessibilityEvent.setScrollable(z);
        m mVar = this.dw.mAdapter;
        if (mVar != null) {
            accessibilityEvent.setItemCount(mVar.getItemCount());
        }
    }

    public abstract boolean ch();

    public abstract void cm(RecyclerView recyclerView, int i);

    public boolean cn() {
        return false;
    }

    public abstract int cr(aqz aqzVar);

    public void cs(int i, r rVar) {
    }

    public abstract int cx(aqz aqzVar);

    public View cz(int i) {
        int et = et();
        for (int i2 = 0; i2 < et; i2++) {
            View eo = eo(i2);
            p childViewHolderInt = RecyclerView.getChildViewHolderInt(eo);
            if (childViewHolderInt != null && childViewHolderInt.ag() == i && !childViewHolderInt.w() && (this.dw.mState.n || !childViewHolderInt.u())) {
                return eo;
            }
        }
        return null;
    }

    public abstract void dc(RecyclerView recyclerView);

    public void de(String str) {
        RecyclerView recyclerView = this.dw;
        if (recyclerView != null) {
            recyclerView.assertNotInLayoutOrScroll(str);
        }
    }

    public void dg(Parcelable parcelable) {
    }

    public abstract void dh(int i);

    public void ei(int i) {
    }

    public final void ej(int i) {
        if (eo(i) != null) {
            n nVar = this.ds;
            fc fcVar = nVar.f305c;
            int i2 = nVar.f303a;
            if (i2 == 1) {
                throw new IllegalStateException("Cannot call removeView(At) within removeView(At)");
            }
            if (i2 == 2) {
                throw new IllegalStateException("Cannot call removeView(At) within removeViewIfHidden");
            }
            try {
                int j = nVar.j(i);
                View childAt = ((RecyclerView) fcVar.f16548e).getChildAt(j);
                if (childAt != null) {
                    nVar.f303a = 1;
                    nVar.f304b = childAt;
                    if (nVar.f306d.i(j)) {
                        nVar.m(childAt);
                    }
                    fcVar.u(j);
                }
                nVar.f303a = 0;
                nVar.f304b = null;
            } catch (Throwable th) {
                nVar.f303a = 0;
                nVar.f304b = null;
                throw th;
            }
        }
    }

    public void ek(View view, Rect rect) {
        RecyclerView.getDecoratedBoundsWithMarginsInt(view, rect);
    }

    public void el() {
    }

    public final void em() {
        RecyclerView recyclerView = this.dw;
        if (recyclerView != null) {
            recyclerView.requestLayout();
        }
    }

    public final int en() {
        RecyclerView recyclerView = this.dw;
        m adapter = recyclerView != null ? recyclerView.getAdapter() : null;
        if (adapter != null) {
            return adapter.getItemCount();
        }
        return 0;
    }

    public final View eo(int i) {
        n nVar = this.ds;
        if (nVar != null) {
            return nVar.g(i);
        }
        return null;
    }

    public final void ep(i iVar) {
        i iVar2 = this.dr;
        if (iVar2 != null && iVar != iVar2 && iVar2.f292g) {
            iVar2.u();
        }
        this.dr = iVar;
        RecyclerView recyclerView = this.dw;
        k kVar = recyclerView.mViewFlinger;
        kVar.f295a.removeCallbacks(kVar);
        kVar.f296b.abortAnimation();
        iVar.l = recyclerView;
        iVar.n = this;
        int i = iVar.h;
        if (i == -1) {
            throw new IllegalArgumentException("Invalid target position");
        }
        recyclerView.mState.f10687g = i;
        iVar.f292g = true;
        iVar.f290e = true;
        iVar.i = recyclerView.mLayout.cz(i);
        iVar.l.mViewFlinger.i();
    }

    public final int eq() {
        RecyclerView recyclerView = this.dw;
        if (recyclerView != null) {
            return recyclerView.getPaddingLeft();
        }
        return 0;
    }

    public final int er() {
        RecyclerView recyclerView = this.dw;
        if (recyclerView != null) {
            return recyclerView.getPaddingBottom();
        }
        return 0;
    }

    public final void es(int i, int i2) {
        this.f0do = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        this.dq = mode;
        if (mode == 0 && !RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
            this.f0do = 0;
        }
        this.dn = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        this.du = mode2;
        if (mode2 != 0 || RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
            return;
        }
        this.dn = 0;
    }

    public final int et() {
        n nVar = this.ds;
        if (nVar != null) {
            return nVar.h();
        }
        return 0;
    }

    public final void eu(View view, fnz fnzVar) {
        p childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt == null || childViewHolderInt.u()) {
            return;
        }
        n nVar = this.ds;
        if (nVar.f307e.contains(childViewHolderInt.n)) {
            return;
        }
        RecyclerView recyclerView = this.dw;
        z(recyclerView.mRecycler, recyclerView.mState, view, fnzVar);
    }

    public final void ev(f fVar) {
        ArrayList arrayList = fVar.f276d;
        int size = arrayList.size();
        for (int i = size - 1; i >= 0; i--) {
            View view = ((p) arrayList.get(i)).n;
            p childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (!childViewHolderInt.w()) {
                childViewHolderInt.x(false);
                if (childViewHolderInt.ah()) {
                    this.dw.removeDetachedView(view, false);
                }
                dgn dgnVar = this.dw.mItemAnimator;
                if (dgnVar != null) {
                    dgnVar.h(childViewHolderInt);
                }
                childViewHolderInt.x(true);
                p childViewHolderInt2 = RecyclerView.getChildViewHolderInt(view);
                childViewHolderInt2.q = null;
                childViewHolderInt2.f312e = false;
                childViewHolderInt2.f313f &= -33;
                fVar.k(childViewHolderInt2);
            }
        }
        arrayList.clear();
        ArrayList arrayList2 = fVar.f278f;
        if (arrayList2 != null) {
            arrayList2.clear();
        }
        if (size > 0) {
            this.dw.invalidate();
        }
    }

    public final void ew(Rect rect, View view) {
        Matrix matrix;
        Rect rect2 = ((yx) view.getLayoutParams()).f20372c;
        rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
        if (this.dw != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
            RectF rectF = this.dw.mTempRectF;
            rectF.set(rect);
            matrix.mapRect(rectF);
            rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
        }
        rect.offset(view.getLeft(), view.getTop());
    }

    public final void ex(f fVar) {
        for (int et = et() - 1; et >= 0; et--) {
            View eo = eo(et);
            p childViewHolderInt = RecyclerView.getChildViewHolderInt(eo);
            if (childViewHolderInt.w()) {
                if (RecyclerView.sVerboseLoggingEnabled) {
                    childViewHolderInt.toString();
                }
            } else if (!childViewHolderInt.ac() || childViewHolderInt.u() || this.dw.mAdapter.hasStableIds()) {
                eo(et);
                this.ds.n(et);
                fVar.o(eo);
                this.dw.mViewInfoStore.f(childViewHolderInt);
            } else {
                ej(et);
                fVar.k(childViewHolderInt);
            }
        }
    }

    public void ey(RecyclerView recyclerView) {
    }

    public void ez(int i) {
        RecyclerView recyclerView = this.dw;
        if (recyclerView != null) {
            recyclerView.offsetChildrenVertical(i);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x00ad, code lost:
    
        if ((r5.bottom - r10) > r2) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean fa(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
        int eq = eq();
        int fd = fd();
        int fj = this.f0do - fj();
        int er = this.dn - er();
        int left = (view.getLeft() + rect.left) - view.getScrollX();
        int top = (view.getTop() + rect.top) - view.getScrollY();
        int width = rect.width() + left;
        int height = rect.height() + top;
        int i = left - eq;
        int min = Math.min(0, i);
        int i2 = top - fd;
        int min2 = Math.min(0, i2);
        int i3 = width - fj;
        int max = Math.max(0, i3);
        int max2 = Math.max(0, height - er);
        if (this.dw.getLayoutDirection() != 1) {
            if (min == 0) {
                min = Math.min(i, max);
            }
            max = min;
        } else if (max == 0) {
            max = Math.max(min, i3);
        }
        if (min2 == 0) {
            min2 = Math.min(i2, max2);
        }
        int[] iArr = {max, min2};
        int i4 = iArr[0];
        int i5 = iArr[1];
        if (z2) {
            View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild != null) {
                int eq2 = eq();
                int fd2 = fd();
                int fj2 = this.f0do - fj();
                int er2 = this.dn - er();
                Rect rect2 = this.dw.mTempRect;
                ek(focusedChild, rect2);
                if (rect2.left - i4 < fj2) {
                    if (rect2.right - i4 > eq2) {
                        if (rect2.top - i5 < er2) {
                        }
                    }
                }
            }
            return false;
        }
        if (i4 != 0 || i5 != 0) {
            if (z) {
                recyclerView.scrollBy(i4, i5);
                return true;
            }
            recyclerView.smoothScrollBy(i4, i5);
            return true;
        }
        return false;
    }

    public final void fb(RecyclerView recyclerView) {
        if (recyclerView == null) {
            this.dw = null;
            this.ds = null;
            this.f0do = 0;
            this.dn = 0;
        } else {
            this.dw = recyclerView;
            this.ds = recyclerView.mChildHelper;
            this.f0do = recyclerView.getWidth();
            this.dn = recyclerView.getHeight();
        }
        this.dq = C.ENCODING_PCM_32BIT;
        this.du = C.ENCODING_PCM_32BIT;
    }

    public final void fc(View view, int i, boolean z) {
        p childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (z || childViewHolderInt.u()) {
            bcp bcpVar = this.dw.mViewInfoStore.f11868a;
            kr krVar = (kr) bcpVar.get(childViewHolderInt);
            if (krVar == null) {
                krVar = kr.e();
                bcpVar.put(childViewHolderInt, krVar);
            }
            krVar.f19562b |= 1;
        } else {
            this.dw.mViewInfoStore.f(childViewHolderInt);
        }
        yx yxVar = (yx) view.getLayoutParams();
        if (childViewHolderInt.ad() || childViewHolderInt.af()) {
            if (childViewHolderInt.af()) {
                childViewHolderInt.q.m(childViewHolderInt);
            } else {
                childViewHolderInt.f313f &= -33;
            }
            this.ds.l(view, i, view.getLayoutParams(), false);
        } else if (view.getParent() == this.dw) {
            n nVar = this.ds;
            fmk fmkVar = nVar.f306d;
            int indexOfChild = ((RecyclerView) nVar.f305c.f16548e).indexOfChild(view);
            int k = (indexOfChild == -1 || fmkVar.f(indexOfChild)) ? -1 : indexOfChild - fmkVar.k(indexOfChild);
            if (i == -1) {
                i = this.ds.h();
            }
            if (k == -1) {
                StringBuilder sb = new StringBuilder("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:");
                sb.append(this.dw.indexOfChild(view));
                throw new IllegalStateException(awf.u(this.dw, sb));
            }
            if (k != i) {
                b bVar = this.dw.mLayout;
                View eo = bVar.eo(k);
                if (eo == null) {
                    throw new IllegalArgumentException("Cannot move a child from non-existing index:" + k + bVar.dw.toString());
                }
                bVar.eo(k);
                bVar.ds.n(k);
                yx yxVar2 = (yx) eo.getLayoutParams();
                p childViewHolderInt2 = RecyclerView.getChildViewHolderInt(eo);
                if (childViewHolderInt2.u()) {
                    bcp bcpVar2 = bVar.dw.mViewInfoStore.f11868a;
                    kr krVar2 = (kr) bcpVar2.get(childViewHolderInt2);
                    if (krVar2 == null) {
                        krVar2 = kr.e();
                        bcpVar2.put(childViewHolderInt2, krVar2);
                    }
                    krVar2.f19562b = 1 | krVar2.f19562b;
                } else {
                    bVar.dw.mViewInfoStore.f(childViewHolderInt2);
                }
                bVar.ds.l(eo, i, yxVar2, childViewHolderInt2.u());
            }
        } else {
            this.ds.i(view, i, false);
            yxVar.f20373d = true;
            i iVar = this.dr;
            if (iVar != null && iVar.f292g && iVar.l.getChildLayoutPosition(view) == iVar.h) {
                iVar.i = view;
            }
        }
        if (yxVar.f20370a) {
            if (RecyclerView.sVerboseLoggingEnabled) {
                Objects.toString(yxVar.f20371b);
            }
            childViewHolderInt.n.invalidate();
            yxVar.f20370a = false;
        }
    }

    public final int fd() {
        RecyclerView recyclerView = this.dw;
        if (recyclerView != null) {
            return recyclerView.getPaddingTop();
        }
        return 0;
    }

    public void fe(int i) {
        RecyclerView recyclerView = this.dw;
        if (recyclerView != null) {
            recyclerView.offsetChildrenHorizontal(i);
        }
    }

    public final boolean ff(View view, int i, int i2, yx yxVar) {
        return (this.dl && ee(view.getMeasuredWidth(), i, ((ViewGroup.MarginLayoutParams) yxVar).width) && ee(view.getMeasuredHeight(), i2, ((ViewGroup.MarginLayoutParams) yxVar).height)) ? false : true;
    }

    public final void fg(RecyclerView recyclerView) {
        es(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), C.ENCODING_PCM_32BIT));
    }

    public final void fh(f fVar) {
        for (int et = et() - 1; et >= 0; et--) {
            if (!RecyclerView.getChildViewHolderInt(eo(et)).w()) {
                View eo = eo(et);
                ej(et);
                fVar.u(eo);
            }
        }
    }

    public final void fi(View view, f fVar) {
        n nVar = this.ds;
        fc fcVar = nVar.f305c;
        int i = nVar.f303a;
        if (i == 1) {
            throw new IllegalStateException("Cannot call removeView(At) within removeView(At)");
        }
        if (i == 2) {
            throw new IllegalStateException("Cannot call removeView(At) within removeViewIfHidden");
        }
        try {
            nVar.f303a = 1;
            nVar.f304b = view;
            int indexOfChild = ((RecyclerView) fcVar.f16548e).indexOfChild(view);
            if (indexOfChild >= 0) {
                if (nVar.f306d.i(indexOfChild)) {
                    nVar.m(view);
                }
                fcVar.u(indexOfChild);
            }
            nVar.f303a = 0;
            nVar.f304b = null;
            fVar.u(view);
        } catch (Throwable th) {
            nVar.f303a = 0;
            nVar.f304b = null;
            throw th;
        }
    }

    public final int fj() {
        RecyclerView recyclerView = this.dw;
        if (recyclerView != null) {
            return recyclerView.getPaddingRight();
        }
        return 0;
    }

    public final boolean fk(View view, int i, int i2, yx yxVar) {
        return (!view.isLayoutRequested() && this.dl && ee(view.getWidth(), i, ((ViewGroup.MarginLayoutParams) yxVar).width) && ee(view.getHeight(), i2, ((ViewGroup.MarginLayoutParams) yxVar).height)) ? false : true;
    }

    public final void fl(int i, int i2) {
        int et = et();
        if (et == 0) {
            this.dw.defaultOnMeasure(i, i2);
            return;
        }
        int i3 = Integer.MIN_VALUE;
        int i4 = Integer.MIN_VALUE;
        int i5 = he.UNDEFINED_ITEM_ID;
        int i6 = he.UNDEFINED_ITEM_ID;
        for (int i7 = 0; i7 < et; i7++) {
            View eo = eo(i7);
            Rect rect = this.dw.mTempRect;
            ek(eo, rect);
            int i8 = rect.left;
            if (i8 < i5) {
                i5 = i8;
            }
            int i9 = rect.right;
            if (i9 > i3) {
                i3 = i9;
            }
            int i10 = rect.top;
            if (i10 < i6) {
                i6 = i10;
            }
            int i11 = rect.bottom;
            if (i11 > i4) {
                i4 = i11;
            }
        }
        this.dw.mTempRect.set(i5, i6, i3, i4);
        ay(this.dw.mTempRect, i, i2);
    }

    public abstract int m(int i, f fVar, aqz aqzVar);

    public boolean n(int i, Bundle bundle) {
        int fd;
        int eq;
        float f2;
        f fVar = this.dw.mRecycler;
        int i2 = this.dn;
        int i3 = this.f0do;
        Rect rect = new Rect();
        if (this.dw.getMatrix().isIdentity() && this.dw.getGlobalVisibleRect(rect)) {
            i2 = rect.height();
            i3 = rect.width();
        }
        if (i != 4096) {
            if (i != 8192) {
                fd = 0;
            } else {
                fd = this.dw.canScrollVertically(-1) ? -((i2 - fd()) - er()) : 0;
                if (this.dw.canScrollHorizontally(-1)) {
                    eq = -((i3 - eq()) - fj());
                }
            }
            eq = 0;
        } else {
            fd = this.dw.canScrollVertically(1) ? (i2 - fd()) - er() : 0;
            if (this.dw.canScrollHorizontally(1)) {
                eq = (i3 - eq()) - fj();
            }
            eq = 0;
        }
        if (fd != 0 || eq != 0) {
            if (bundle != null) {
                f2 = bundle.getFloat("androidx.core.view.accessibility.action.ARGUMENT_SCROLL_AMOUNT_FLOAT", 1.0f);
                if (f2 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    if (RecyclerView.sDebugAssertionsEnabled) {
                        throw new IllegalArgumentException("attempting to use ACTION_ARGUMENT_SCROLL_AMOUNT_FLOAT with a negative value (" + f2 + ")");
                    }
                }
            } else {
                f2 = 1.0f;
            }
            if (Float.compare(f2, Float.POSITIVE_INFINITY) != 0) {
                if (Float.compare(1.0f, f2) != 0 && Float.compare(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, f2) != 0) {
                    eq = (int) (eq * f2);
                    fd = (int) (fd * f2);
                }
                this.dw.smoothScrollBy(eq, fd, null, Integer.MIN_VALUE, true);
                return true;
            }
            RecyclerView recyclerView = this.dw;
            m mVar = recyclerView.mAdapter;
            if (mVar != null) {
                if (i == 4096) {
                    recyclerView.smoothScrollToPosition(mVar.getItemCount() - 1);
                    return true;
                }
                if (i != 8192) {
                    return true;
                }
                recyclerView.smoothScrollToPosition(0);
                return true;
            }
        }
        return false;
    }

    public abstract int q(aqz aqzVar);

    public abstract void r(f fVar, aqz aqzVar);

    public abstract int s(aqz aqzVar);

    public void u(int i, int i2) {
    }

    public void v(f fVar, aqz aqzVar, fnz fnzVar) {
        AccessibilityNodeInfo accessibilityNodeInfo = fnzVar.f17119b;
        if (this.dw.canScrollVertically(-1) || this.dw.canScrollHorizontally(-1)) {
            fnzVar.h(8192);
            accessibilityNodeInfo.setScrollable(true);
            fnzVar.e(TTAdConstant.KEY_CLICK_AREA, true);
        }
        if (this.dw.canScrollVertically(1) || this.dw.canScrollHorizontally(1)) {
            fnzVar.h(4096);
            accessibilityNodeInfo.setScrollable(true);
            fnzVar.e(TTAdConstant.KEY_CLICK_AREA, true);
        }
        accessibilityNodeInfo.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(av(fVar, aqzVar), aw(fVar, aqzVar), false, 0));
    }

    public abstract int w(aqz aqzVar);

    public abstract int x(aqz aqzVar);

    public void y(int i, int i2) {
    }

    public void z(f fVar, aqz aqzVar, View view, fnz fnzVar) {
        fnzVar.l(fc.f(cd() ? ed(view) : 0, 1, ca() ? ed(view) : 0, 1, false));
    }
}
