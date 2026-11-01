package g;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class cdp extends ViewGroup {

    /* renamed from: a, reason: collision with root package name */
    public Drawable f12698a;

    /* renamed from: b, reason: collision with root package name */
    public List f12699b;

    /* renamed from: c, reason: collision with root package name */
    public Drawable f12700c;

    /* renamed from: d, reason: collision with root package name */
    public fdy f12701d;

    /* renamed from: e, reason: collision with root package name */
    public int f12702e;

    /* renamed from: f, reason: collision with root package name */
    public int f12703f;

    /* renamed from: g, reason: collision with root package name */
    public int f12704g;
    public int h;
    public int i;
    public int j;
    public ta k;
    public int l;
    public int m;
    public int n;
    public SparseIntArray o;
    public bsq p;
    public int[] q;
    public int r;

    public final boolean aa() {
        int i = this.l;
        return i == 0 || i == 1;
    }

    public final void ab(Canvas canvas, boolean z, boolean z2) {
        int paddingTop = getPaddingTop();
        int max = Math.max(0, (getHeight() - getPaddingBottom()) - paddingTop);
        int size = this.f12699b.size();
        for (int i = 0; i < size; i++) {
            gzl gzlVar = (gzl) this.f12699b.get(i);
            for (int i2 = 0; i2 < gzlVar.f19054a; i2++) {
                int i3 = gzlVar.f19056c + i2;
                View t = t(i3);
                if (t != null && t.getVisibility() != 8) {
                    avj avjVar = (avj) t.getLayoutParams();
                    if (z(i3, i2)) {
                        x(canvas, gzlVar.h, z2 ? t.getBottom() + ((ViewGroup.MarginLayoutParams) avjVar).bottomMargin : (t.getTop() - ((ViewGroup.MarginLayoutParams) avjVar).topMargin) - this.h, gzlVar.q);
                    }
                    if (i2 == gzlVar.f19054a - 1 && (this.m & 4) > 0) {
                        x(canvas, gzlVar.h, z2 ? (t.getTop() - ((ViewGroup.MarginLayoutParams) avjVar).topMargin) - this.h : t.getBottom() + ((ViewGroup.MarginLayoutParams) avjVar).bottomMargin, gzlVar.q);
                    }
                }
            }
            if (v(i)) {
                ae(canvas, z ? gzlVar.p : gzlVar.h - this.f12704g, paddingTop, max);
            }
            if (ac(i) && (this.f12702e & 4) > 0) {
                ae(canvas, z ? gzlVar.h - this.f12704g : gzlVar.p, paddingTop, max);
            }
        }
    }

    public final boolean ac(int i) {
        if (i >= 0 && i < this.f12699b.size()) {
            for (int i2 = i + 1; i2 < this.f12699b.size(); i2++) {
                if (((gzl) this.f12699b.get(i2)).r() > 0) {
                    return false;
                }
            }
            if (aa()) {
                return (this.m & 4) != 0;
            }
            if ((this.f12702e & 4) != 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00c4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void ad(int i, int i2) {
        int i3;
        ta taVar = this.k;
        fdy fdyVar = this.f12701d;
        if (this.o == null) {
            this.o = new SparseIntArray(getChildCount());
        }
        SparseIntArray sparseIntArray = this.o;
        cdp cdpVar = (cdp) fdyVar.f16634c;
        int flexItemCount = cdpVar.getFlexItemCount();
        if (sparseIntArray.size() == flexItemCount) {
            for (int i4 = 0; i4 < flexItemCount; i4++) {
                View childAt = cdpVar.getChildAt(i4);
                if (childAt == null || ((gth) childAt.getLayoutParams()).ox() == sparseIntArray.get(i4)) {
                }
            }
            i3 = this.l;
            if (i3 == 0 && i3 != 1) {
                if (i3 != 2 && i3 != 3) {
                    throw new IllegalStateException("Invalid value for the flex direction is set: " + this.l);
                }
                this.f12699b.clear();
                taVar.f20025a = null;
                taVar.f20026b = 0;
                this.f12701d.x(this.k, i2, i);
                this.f12699b = taVar.f20025a;
                fdyVar.j(i, i2);
                fdyVar.af(i, i2, getPaddingRight() + getPaddingLeft());
                fdyVar.am();
                u(this.l, i, i2, taVar.f20026b);
                return;
            }
            this.f12699b.clear();
            taVar.f20025a = null;
            taVar.f20026b = 0;
            this.f12701d.x(this.k, i, i2);
            this.f12699b = taVar.f20025a;
            fdyVar.j(i, i2);
            if (this.i == 3) {
                for (gzl gzlVar : this.f12699b) {
                    int i5 = Integer.MIN_VALUE;
                    for (int i6 = 0; i6 < gzlVar.f19054a; i6++) {
                        View t = t(gzlVar.f19056c + i6);
                        if (t != null && t.getVisibility() != 8) {
                            avj avjVar = (avj) t.getLayoutParams();
                            i5 = this.n != 2 ? Math.max(i5, t.getMeasuredHeight() + Math.max(gzlVar.f19059f - t.getBaseline(), ((ViewGroup.MarginLayoutParams) avjVar).topMargin) + ((ViewGroup.MarginLayoutParams) avjVar).bottomMargin) : Math.max(i5, t.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) avjVar).topMargin + Math.max(t.getBaseline() + (gzlVar.f19059f - t.getMeasuredHeight()), ((ViewGroup.MarginLayoutParams) avjVar).bottomMargin));
                        }
                    }
                    gzlVar.q = i5;
                }
            }
            fdyVar.af(i, i2, getPaddingBottom() + getPaddingTop());
            fdyVar.am();
            u(this.l, i, i2, taVar.f20026b);
        }
        SparseIntArray sparseIntArray2 = this.o;
        int flexItemCount2 = ((cdp) fdyVar.f16634c).getFlexItemCount();
        this.q = fdy.e(flexItemCount2, fdyVar.ae(flexItemCount2), sparseIntArray2);
        i3 = this.l;
        if (i3 == 0) {
        }
        this.f12699b.clear();
        taVar.f20025a = null;
        taVar.f20026b = 0;
        this.f12701d.x(this.k, i, i2);
        this.f12699b = taVar.f20025a;
        fdyVar.j(i, i2);
        if (this.i == 3) {
        }
        fdyVar.af(i, i2, getPaddingBottom() + getPaddingTop());
        fdyVar.am();
        u(this.l, i, i2, taVar.f20026b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (this.o == null) {
            this.o = new SparseIntArray(getChildCount());
        }
        fdy fdyVar = this.f12701d;
        SparseIntArray sparseIntArray = this.o;
        cdp cdpVar = (cdp) fdyVar.f16634c;
        int flexItemCount = cdpVar.getFlexItemCount();
        ArrayList ae = fdyVar.ae(flexItemCount);
        dpl dplVar = new dpl();
        if (view == null || !(layoutParams instanceof gth)) {
            dplVar.f14593b = 1;
        } else {
            dplVar.f14593b = ((gth) layoutParams).ox();
        }
        if (i == -1 || i == flexItemCount) {
            dplVar.f14592a = flexItemCount;
        } else if (i < cdpVar.getFlexItemCount()) {
            dplVar.f14592a = i;
            for (int i2 = i; i2 < flexItemCount; i2++) {
                ((dpl) ae.get(i2)).f14592a++;
            }
        } else {
            dplVar.f14592a = flexItemCount;
        }
        ae.add(dplVar);
        this.q = fdy.e(flexItemCount + 1, ae, sparseIntArray);
        super.addView(view, i, layoutParams);
    }

    public final void ae(Canvas canvas, int i, int i2, int i3) {
        Drawable drawable = this.f12698a;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(i, i2, this.f12704g + i, i3 + i2);
        this.f12698a.draw(canvas);
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof avj;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof avj ? new avj((avj) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new avj((ViewGroup.MarginLayoutParams) layoutParams) : new avj(layoutParams);
    }

    public int getAlignContent() {
        return this.j;
    }

    public int getAlignItems() {
        return this.i;
    }

    public Drawable getDividerDrawableHorizontal() {
        return this.f12700c;
    }

    public Drawable getDividerDrawableVertical() {
        return this.f12698a;
    }

    public int getFlexDirection() {
        return this.l;
    }

    public int getFlexItemCount() {
        return getChildCount();
    }

    public List<gzl> getFlexLines() {
        ArrayList arrayList = new ArrayList(this.f12699b.size());
        for (gzl gzlVar : this.f12699b) {
            if (gzlVar.r() != 0) {
                arrayList.add(gzlVar);
            }
        }
        return arrayList;
    }

    public List<gzl> getFlexLinesInternal() {
        return this.f12699b;
    }

    public int getFlexWrap() {
        return this.n;
    }

    public int getJustifyContent() {
        return this.f12703f;
    }

    public int getLargestMainSize() {
        Iterator it = this.f12699b.iterator();
        int i = Integer.MIN_VALUE;
        while (it.hasNext()) {
            i = Math.max(i, ((gzl) it.next()).f19060g);
        }
        return i;
    }

    public int getMaxLine() {
        return this.r;
    }

    public int getShowDividerHorizontal() {
        return this.m;
    }

    public int getShowDividerVertical() {
        return this.f12702e;
    }

    public int getSumOfCrossSize() {
        int size = this.f12699b.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            gzl gzlVar = (gzl) this.f12699b.get(i2);
            if (v(i2)) {
                i += aa() ? this.h : this.f12704g;
            }
            if (ac(i2)) {
                i += aa() ? this.h : this.f12704g;
            }
            i += gzlVar.q;
        }
        return i;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        bsq bsqVar = this.p;
        if (bsqVar != null) {
            bsqVar.mn();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        bsq bsqVar = this.p;
        if (bsqVar != null) {
            bsqVar.ia();
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        if (this.f12698a == null && this.f12700c == null) {
            return;
        }
        if (this.m == 0 && this.f12702e == 0) {
            return;
        }
        int layoutDirection = getLayoutDirection();
        int i = this.l;
        if (i == 0) {
            s(canvas, layoutDirection == 1, this.n == 2);
            return;
        }
        if (i == 1) {
            s(canvas, layoutDirection != 1, this.n == 2);
            return;
        }
        if (i == 2) {
            boolean z = layoutDirection == 1;
            if (this.n == 2) {
                z = !z;
            }
            ab(canvas, z, false);
            return;
        }
        if (i != 3) {
            return;
        }
        boolean z2 = layoutDirection == 1;
        if (this.n == 2) {
            z2 = !z2;
        }
        ab(canvas, z2, true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        bsq bsqVar = this.p;
        if (bsqVar != null) {
            bsqVar.iw();
        }
        int layoutDirection = getLayoutDirection();
        int i5 = this.l;
        if (i5 == 0) {
            w(i, i2, i3, i4, layoutDirection == 1);
        } else if (i5 == 1) {
            w(i, i2, i3, i4, layoutDirection != 1);
        } else if (i5 == 2) {
            z2 = layoutDirection == 1;
            if (this.n == 2) {
                z2 = !z2;
            }
            y(i, i2, i3, z2, false, i4);
        } else {
            if (i5 != 3) {
                throw new IllegalStateException("Invalid flex direction is set: " + this.l);
            }
            z2 = layoutDirection == 1;
            if (this.n == 2) {
                z2 = !z2;
            }
            y(i, i2, i3, z2, true, i4);
        }
        bsq bsqVar2 = this.p;
        if (bsqVar2 != null) {
            bsqVar2.dq(i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        bsq bsqVar = this.p;
        if (bsqVar != null) {
            int[] dq = bsqVar.dq(i, i2);
            ad(dq[0], dq[1]);
        } else {
            ad(i, i2);
        }
        bsq bsqVar2 = this.p;
        if (bsqVar2 != null) {
            bsqVar2.s();
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        bsq bsqVar = this.p;
        if (bsqVar != null) {
            bsqVar.d(i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        bsq bsqVar = this.p;
        if (bsqVar != null) {
            bsqVar.dq(z);
        }
    }

    public final void s(Canvas canvas, boolean z, boolean z2) {
        int paddingLeft = getPaddingLeft();
        int max = Math.max(0, (getWidth() - getPaddingRight()) - paddingLeft);
        int size = this.f12699b.size();
        for (int i = 0; i < size; i++) {
            gzl gzlVar = (gzl) this.f12699b.get(i);
            for (int i2 = 0; i2 < gzlVar.f19054a; i2++) {
                int i3 = gzlVar.f19056c + i2;
                View t = t(i3);
                if (t != null && t.getVisibility() != 8) {
                    avj avjVar = (avj) t.getLayoutParams();
                    if (z(i3, i2)) {
                        ae(canvas, z ? t.getRight() + ((ViewGroup.MarginLayoutParams) avjVar).rightMargin : (t.getLeft() - ((ViewGroup.MarginLayoutParams) avjVar).leftMargin) - this.f12704g, gzlVar.m, gzlVar.q);
                    }
                    if (i2 == gzlVar.f19054a - 1 && (this.f12702e & 4) > 0) {
                        ae(canvas, z ? (t.getLeft() - ((ViewGroup.MarginLayoutParams) avjVar).leftMargin) - this.f12704g : t.getRight() + ((ViewGroup.MarginLayoutParams) avjVar).rightMargin, gzlVar.m, gzlVar.q);
                    }
                }
            }
            if (v(i)) {
                x(canvas, paddingLeft, z2 ? gzlVar.f19058e : gzlVar.m - this.h, max);
            }
            if (ac(i) && (this.m & 4) > 0) {
                x(canvas, paddingLeft, z2 ? gzlVar.m - this.h : gzlVar.f19058e, max);
            }
        }
    }

    public void setAlignContent(int i) {
        if (this.j != i) {
            this.j = i;
            requestLayout();
        }
    }

    public void setAlignItems(int i) {
        if (this.i != i) {
            this.i = i;
            requestLayout();
        }
    }

    public void setDividerDrawable(Drawable drawable) {
        setDividerDrawableHorizontal(drawable);
        setDividerDrawableVertical(drawable);
    }

    public void setDividerDrawableHorizontal(Drawable drawable) {
        if (drawable == this.f12700c) {
            return;
        }
        this.f12700c = drawable;
        if (drawable != null) {
            this.h = drawable.getIntrinsicHeight();
        } else {
            this.h = 0;
        }
        if (this.f12700c == null && this.f12698a == null) {
            setWillNotDraw(true);
        } else {
            setWillNotDraw(false);
        }
        requestLayout();
    }

    public void setDividerDrawableVertical(Drawable drawable) {
        if (drawable == this.f12698a) {
            return;
        }
        this.f12698a = drawable;
        if (drawable != null) {
            this.f12704g = drawable.getIntrinsicWidth();
        } else {
            this.f12704g = 0;
        }
        if (this.f12700c == null && this.f12698a == null) {
            setWillNotDraw(true);
        } else {
            setWillNotDraw(false);
        }
        requestLayout();
    }

    public void setFlexDirection(int i) {
        if (this.l != i) {
            this.l = i;
            requestLayout();
        }
    }

    public void setFlexLines(List<gzl> list) {
        this.f12699b = list;
    }

    public void setFlexWrap(int i) {
        if (this.n != i) {
            this.n = i;
            requestLayout();
        }
    }

    public void setJustifyContent(int i) {
        if (this.f12703f != i) {
            this.f12703f = i;
            requestLayout();
        }
    }

    public void setMaxLine(int i) {
        if (this.r != i) {
            this.r = i;
            requestLayout();
        }
    }

    public void setShowDivider(int i) {
        setShowDividerVertical(i);
        setShowDividerHorizontal(i);
    }

    public void setShowDividerHorizontal(int i) {
        if (i != this.m) {
            this.m = i;
            requestLayout();
        }
    }

    public void setShowDividerVertical(int i) {
        if (i != this.f12702e) {
            this.f12702e = i;
            requestLayout();
        }
    }

    public final View t(int i) {
        if (i < 0) {
            return null;
        }
        int[] iArr = this.q;
        if (i >= iArr.length) {
            return null;
        }
        return getChildAt(iArr[i]);
    }

    public final void u(int i, int i2, int i3, int i4) {
        int paddingBottom;
        int largestMainSize;
        int resolveSizeAndState;
        int resolveSizeAndState2;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        if (i == 0 || i == 1) {
            paddingBottom = getPaddingBottom() + getPaddingTop() + getSumOfCrossSize();
            largestMainSize = getLargestMainSize();
        } else {
            if (i != 2 && i != 3) {
                throw new IllegalArgumentException("Invalid flex direction: ".concat(String.valueOf(i)));
            }
            paddingBottom = getLargestMainSize();
            largestMainSize = getPaddingRight() + getPaddingLeft() + getSumOfCrossSize();
        }
        if (mode == Integer.MIN_VALUE) {
            if (size < largestMainSize) {
                i4 = View.combineMeasuredStates(i4, 16777216);
            } else {
                size = largestMainSize;
            }
            resolveSizeAndState = View.resolveSizeAndState(size, i2, i4);
        } else if (mode == 0) {
            resolveSizeAndState = View.resolveSizeAndState(largestMainSize, i2, i4);
        } else {
            if (mode != 1073741824) {
                throw new IllegalStateException("Unknown width mode is set: ".concat(String.valueOf(mode)));
            }
            if (size < largestMainSize) {
                i4 = View.combineMeasuredStates(i4, 16777216);
            }
            resolveSizeAndState = View.resolveSizeAndState(size, i2, i4);
        }
        if (mode2 == Integer.MIN_VALUE) {
            if (size2 < paddingBottom) {
                i4 = View.combineMeasuredStates(i4, 256);
            } else {
                size2 = paddingBottom;
            }
            resolveSizeAndState2 = View.resolveSizeAndState(size2, i3, i4);
        } else if (mode2 == 0) {
            resolveSizeAndState2 = View.resolveSizeAndState(paddingBottom, i3, i4);
        } else {
            if (mode2 != 1073741824) {
                throw new IllegalStateException("Unknown height mode is set: ".concat(String.valueOf(mode2)));
            }
            if (size2 < paddingBottom) {
                i4 = View.combineMeasuredStates(i4, 256);
            }
            resolveSizeAndState2 = View.resolveSizeAndState(size2, i3, i4);
        }
        setMeasuredDimension(resolveSizeAndState, resolveSizeAndState2);
    }

    public final boolean v(int i) {
        if (i >= 0 && i < this.f12699b.size()) {
            for (int i2 = 0; i2 < i; i2++) {
                if (((gzl) this.f12699b.get(i2)).r() > 0) {
                    return aa() ? (this.m & 2) != 0 : (this.f12702e & 2) != 0;
                }
            }
            if (aa()) {
                return (this.m & 1) != 0;
            }
            if ((this.f12702e & 1) != 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00d5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void w(int i, int i2, int i3, int i4, boolean z) {
        float f2;
        float f3;
        float f4;
        int i5;
        int i6;
        int i7;
        int i8;
        View view;
        gzl gzlVar;
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int i9 = i3 - i;
        int paddingBottom = (i4 - i2) - getPaddingBottom();
        int paddingTop = getPaddingTop();
        int size = this.f12699b.size();
        for (int i10 = 0; i10 < size; i10++) {
            gzl gzlVar2 = (gzl) this.f12699b.get(i10);
            if (v(i10)) {
                int i11 = this.h;
                paddingBottom -= i11;
                paddingTop += i11;
            }
            int i12 = paddingBottom;
            int i13 = this.f12703f;
            int i14 = 2;
            if (i13 == 0) {
                f2 = paddingLeft;
                f3 = i9 - paddingRight;
            } else if (i13 == 1) {
                int i15 = gzlVar2.f19060g;
                f3 = i15 - paddingLeft;
                f2 = (i9 - i15) + paddingRight;
            } else if (i13 != 2) {
                if (i13 == 3) {
                    f2 = paddingLeft;
                    f4 = (i9 - gzlVar2.f19060g) / (gzlVar2.r() != 1 ? r7 - 1 : 1.0f);
                    f3 = i9 - paddingRight;
                } else if (i13 == 4) {
                    int r = gzlVar2.r();
                    float f5 = r != 0 ? (i9 - gzlVar2.f19060g) / r : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                    float f6 = f5 / 2.0f;
                    f2 = paddingLeft + f6;
                    float f7 = (i9 - paddingRight) - f6;
                    f4 = f5;
                    f3 = f7;
                } else {
                    if (i13 != 5) {
                        throw new IllegalStateException("Invalid justifyContent is set: " + this.f12703f);
                    }
                    f4 = gzlVar2.r() != 0 ? (i9 - gzlVar2.f19060g) / (r3 + 1) : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                    f2 = paddingLeft + f4;
                    f3 = (i9 - paddingRight) - f4;
                }
                float max = Math.max(f4, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                i5 = 0;
                while (i5 < gzlVar2.f19054a) {
                    int i16 = gzlVar2.f19056c + i5;
                    View t = t(i16);
                    if (t == null || t.getVisibility() == 8) {
                        i6 = i5;
                        i7 = i12;
                    } else {
                        avj avjVar = (avj) t.getLayoutParams();
                        float f8 = f2 + ((ViewGroup.MarginLayoutParams) avjVar).leftMargin;
                        float f9 = f3 - ((ViewGroup.MarginLayoutParams) avjVar).rightMargin;
                        if (z(i16, i5)) {
                            int i17 = this.f12704g;
                            float f10 = i17;
                            f8 += f10;
                            f9 -= f10;
                            i8 = i17;
                        } else {
                            i8 = 0;
                        }
                        float f11 = f9;
                        int i18 = (i5 != gzlVar2.f19054a + (-1) || (this.f12702e & 4) <= 0) ? 0 : this.f12704g;
                        if (this.n == i14) {
                            if (z) {
                                i6 = i5;
                                view = t;
                                this.f12701d.aa(view, gzlVar2, Math.round(f11) - t.getMeasuredWidth(), i12 - t.getMeasuredHeight(), Math.round(f11), i12);
                            } else {
                                i6 = i5;
                                view = t;
                                this.f12701d.aa(view, gzlVar2, Math.round(f8), i12 - view.getMeasuredHeight(), view.getMeasuredWidth() + Math.round(f8), i12);
                            }
                            i7 = i12;
                        } else {
                            i6 = i5;
                            view = t;
                            i7 = i12;
                            if (z) {
                                this.f12701d.aa(view, gzlVar2, Math.round(f11) - view.getMeasuredWidth(), paddingTop, Math.round(f11), view.getMeasuredHeight() + paddingTop);
                            } else {
                                int i19 = paddingTop;
                                this.f12701d.aa(view, gzlVar2, Math.round(f8), i19, view.getMeasuredWidth() + Math.round(f8), view.getMeasuredHeight() + i19);
                                paddingTop = i19;
                            }
                        }
                        f2 = f8 + view.getMeasuredWidth() + max + ((ViewGroup.MarginLayoutParams) avjVar).rightMargin;
                        float measuredWidth = f11 - ((view.getMeasuredWidth() + max) + ((ViewGroup.MarginLayoutParams) avjVar).leftMargin);
                        if (z) {
                            gzlVar = gzlVar2;
                            gzlVar.s(view, i18, 0, i8, 0);
                        } else {
                            gzlVar = gzlVar2;
                            gzlVar.s(view, i8, 0, i18, 0);
                        }
                        gzlVar2 = gzlVar;
                        f3 = measuredWidth;
                    }
                    i5 = i6 + 1;
                    i12 = i7;
                    i14 = 2;
                }
                int i20 = gzlVar2.q;
                paddingTop += i20;
                paddingBottom = i12 - i20;
            } else {
                int i21 = gzlVar2.f19060g;
                f2 = paddingLeft + ((i9 - i21) / 2.0f);
                f3 = (i9 - paddingRight) - ((i9 - i21) / 2.0f);
            }
            f4 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            float max2 = Math.max(f4, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            i5 = 0;
            while (i5 < gzlVar2.f19054a) {
            }
            int i202 = gzlVar2.q;
            paddingTop += i202;
            paddingBottom = i12 - i202;
        }
    }

    public final void x(Canvas canvas, int i, int i2, int i3) {
        Drawable drawable = this.f12700c;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(i, i2, i3 + i, this.h + i2);
        this.f12700c.draw(canvas);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00d0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void y(int i, int i2, int i3, boolean z, boolean z2, int i4) {
        float f2;
        float f3;
        float f4;
        int i5;
        int i6;
        int i7;
        int i8;
        gzl gzlVar;
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int paddingRight = getPaddingRight();
        int paddingLeft = getPaddingLeft();
        int i9 = i4 - i2;
        int i10 = (i3 - i) - paddingRight;
        int size = this.f12699b.size();
        for (int i11 = 0; i11 < size; i11++) {
            gzl gzlVar2 = (gzl) this.f12699b.get(i11);
            if (v(i11)) {
                int i12 = this.f12704g;
                paddingLeft += i12;
                i10 -= i12;
            }
            int i13 = i10;
            int i14 = this.f12703f;
            if (i14 == 0) {
                f2 = paddingTop;
                f3 = i9 - paddingBottom;
            } else if (i14 == 1) {
                int i15 = gzlVar2.f19060g;
                f3 = i15 - paddingTop;
                f2 = (i9 - i15) + paddingBottom;
            } else if (i14 != 2) {
                if (i14 == 3) {
                    f2 = paddingTop;
                    f4 = (i9 - gzlVar2.f19060g) / (gzlVar2.r() != 1 ? r13 - 1 : 1.0f);
                    f3 = i9 - paddingBottom;
                } else if (i14 == 4) {
                    int r = gzlVar2.r();
                    f4 = r != 0 ? (i9 - gzlVar2.f19060g) / r : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                    float f5 = f4 / 2.0f;
                    f2 = paddingTop + f5;
                    f3 = (i9 - paddingBottom) - f5;
                } else {
                    if (i14 != 5) {
                        throw new IllegalStateException("Invalid justifyContent is set: " + this.f12703f);
                    }
                    f4 = gzlVar2.r() != 0 ? (i9 - gzlVar2.f19060g) / (r5 + 1) : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                    f2 = paddingTop + f4;
                    f3 = (i9 - paddingBottom) - f4;
                }
                float max = Math.max(f4, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                i5 = 0;
                while (i5 < gzlVar2.f19054a) {
                    int i16 = gzlVar2.f19056c + i5;
                    View t = t(i16);
                    if (t != null && t.getVisibility() != 8) {
                        avj avjVar = (avj) t.getLayoutParams();
                        float f6 = f2 + ((ViewGroup.MarginLayoutParams) avjVar).topMargin;
                        float f7 = f3 - ((ViewGroup.MarginLayoutParams) avjVar).bottomMargin;
                        if (z(i16, i5)) {
                            i8 = this.h;
                            float f8 = i8;
                            f6 += f8;
                            f7 -= f8;
                        } else {
                            i8 = 0;
                        }
                        float f9 = f7;
                        int i17 = (i5 != gzlVar2.f19054a - 1 || (this.m & 4) <= 0) ? 0 : this.h;
                        if (z) {
                            if (z2) {
                                i6 = i5;
                                this.f12701d.ah(t, gzlVar2, true, i13 - t.getMeasuredWidth(), Math.round(f9) - t.getMeasuredHeight(), i13, Math.round(f9));
                            } else {
                                i6 = i5;
                                this.f12701d.ah(t, gzlVar2, true, i13 - t.getMeasuredWidth(), Math.round(f6), i13, t.getMeasuredHeight() + Math.round(f6));
                            }
                            i7 = i13;
                        } else {
                            i6 = i5;
                            i7 = i13;
                            if (z2) {
                                this.f12701d.ah(t, gzlVar2, false, paddingLeft, Math.round(f9) - t.getMeasuredHeight(), t.getMeasuredWidth() + paddingLeft, Math.round(f9));
                            } else {
                                int i18 = paddingLeft;
                                this.f12701d.ah(t, gzlVar2, false, i18, Math.round(f6), t.getMeasuredWidth() + i18, t.getMeasuredHeight() + Math.round(f6));
                                paddingLeft = i18;
                            }
                        }
                        f2 = f6 + t.getMeasuredHeight() + max + ((ViewGroup.MarginLayoutParams) avjVar).bottomMargin;
                        float measuredHeight = f9 - ((t.getMeasuredHeight() + max) + ((ViewGroup.MarginLayoutParams) avjVar).topMargin);
                        if (z2) {
                            gzlVar = gzlVar2;
                            gzlVar.s(t, 0, i17, 0, i8);
                        } else {
                            gzlVar = gzlVar2;
                            gzlVar.s(t, 0, i8, 0, i17);
                        }
                        gzlVar2 = gzlVar;
                        f3 = measuredHeight;
                        i5 = i6 + 1;
                        i13 = i7;
                    }
                    i6 = i5;
                    i7 = i13;
                    i5 = i6 + 1;
                    i13 = i7;
                }
                int i19 = gzlVar2.q;
                paddingLeft += i19;
                i10 = i13 - i19;
            } else {
                float f10 = (i9 - gzlVar2.f19060g) / 2.0f;
                f2 = paddingTop + f10;
                f3 = (i9 - paddingBottom) - f10;
            }
            f4 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            float max2 = Math.max(f4, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            i5 = 0;
            while (i5 < gzlVar2.f19054a) {
            }
            int i192 = gzlVar2.q;
            paddingLeft += i192;
            i10 = i13 - i192;
        }
    }

    public final boolean z(int i, int i2) {
        for (int i3 = 1; i3 <= i2; i3++) {
            View t = t(i - i3);
            if (t != null && t.getVisibility() != 8) {
                return aa() ? (this.f12702e & 2) != 0 : (this.m & 2) != 0;
            }
        }
        return aa() ? (this.f12702e & 1) != 0 : (this.m & 1) != 0;
    }
}
