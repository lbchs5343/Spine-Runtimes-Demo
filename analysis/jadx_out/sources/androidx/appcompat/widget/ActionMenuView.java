package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.ActionMenuItemView;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.aob;
import g.bvk;
import g.caf;
import g.csq;
import g.cwb;
import g.dhl;
import g.di;
import g.dnh;
import g.dwm;
import g.eao;
import g.egz;
import g.ena;
import g.esf;
import g.far;
import g.fnq;
import g.ftn;
import g.gez;
import g.he;
import g.jc;

/* loaded from: classes.dex */
public class ActionMenuView extends bvk implements dhl, eao {

    /* renamed from: a, reason: collision with root package name */
    public ftn f81a;

    /* renamed from: b, reason: collision with root package name */
    public esf f82b;

    /* renamed from: e, reason: collision with root package name */
    public final int f83e;

    /* renamed from: f, reason: collision with root package name */
    public egz f84f;

    /* renamed from: g, reason: collision with root package name */
    public gez f85g;
    public boolean h;
    public int i;
    public final int j;
    public int k;
    public boolean l;
    public cwb m;
    public Context n;

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        setBaselineAligned(false);
        float f2 = context.getResources().getDisplayMetrics().density;
        this.f83e = (int) (56.0f * f2);
        this.j = (int) (f2 * 4.0f);
        this.n = context;
        this.i = 0;
    }

    public static jc o(ViewGroup.LayoutParams layoutParams) {
        jc jcVar;
        if (layoutParams == null) {
            return p();
        }
        if (layoutParams instanceof jc) {
            jc jcVar2 = (jc) layoutParams;
            jcVar = new jc(jcVar2);
            jcVar.f19465c = jcVar2.f19465c;
        } else {
            jcVar = new jc(layoutParams);
        }
        if (((LinearLayout.LayoutParams) jcVar).gravity <= 0) {
            ((LinearLayout.LayoutParams) jcVar).gravity = 16;
        }
        return jcVar;
    }

    public static jc p() {
        jc jcVar = new jc(-2, -2);
        jcVar.f19465c = false;
        ((LinearLayout.LayoutParams) jcVar).gravity = 16;
        return jcVar;
    }

    @Override // g.eao
    public final void c(ftn ftnVar) {
        this.f81a = ftnVar;
    }

    @Override // g.bvk, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof jc;
    }

    @Override // g.dhl
    public final boolean d(far farVar) {
        return this.f81a.ar(farVar, null, 0);
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @Override // g.bvk, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return p();
    }

    @Override // g.bvk, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new jc(getContext(), attributeSet);
    }

    @Override // g.bvk, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return o(layoutParams);
    }

    public Menu getMenu() {
        if (this.f81a == null) {
            Context context = getContext();
            ftn ftnVar = new ftn(context);
            this.f81a = ftnVar;
            ftnVar.h = new fnq(2, this);
            esf esfVar = new esf(context);
            this.f82b = esfVar;
            esfVar.q = true;
            esfVar.ad = true;
            caf cafVar = this.f85g;
            if (cafVar == null) {
                cafVar = new dwm(23);
            }
            esfVar.v = cafVar;
            this.f81a.ap(esfVar, this.n);
            esf esfVar2 = this.f82b;
            esfVar2.i = this;
            this.f81a = esfVar2.p;
        }
        return this.f81a;
    }

    public Drawable getOverflowIcon() {
        getMenu();
        esf esfVar = this.f82b;
        ena enaVar = esfVar.y;
        if (enaVar != null) {
            return enaVar.getDrawable();
        }
        if (esfVar.r) {
            return esfVar.o;
        }
        return null;
    }

    public int getPopupTheme() {
        return this.i;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        esf esfVar = this.f82b;
        if (esfVar != null) {
            esfVar.c();
            if (this.f82b.af()) {
                this.f82b.ah();
                this.f82b.ag();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        esf esfVar = this.f82b;
        if (esfVar != null) {
            esfVar.ah();
            csq csqVar = esfVar.k;
            if (csqVar == null || !csqVar.n()) {
                return;
            }
            csqVar.f12458g.dismiss();
        }
    }

    @Override // g.bvk, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int width;
        int i5;
        if (!this.l) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int childCount = getChildCount();
        int i6 = (i4 - i2) / 2;
        int dividerWidth = getDividerWidth();
        int i7 = i3 - i;
        int paddingRight = (i7 - getPaddingRight()) - getPaddingLeft();
        boolean z2 = dnh.f14457a;
        boolean z3 = getLayoutDirection() == 1;
        int i8 = 0;
        int i9 = 0;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                jc jcVar = (jc) childAt.getLayoutParams();
                if (jcVar.f19465c) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (r(i10)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (z3) {
                        i5 = getPaddingLeft() + ((LinearLayout.LayoutParams) jcVar).leftMargin;
                        width = i5 + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((LinearLayout.LayoutParams) jcVar).rightMargin;
                        i5 = width - measuredWidth;
                    }
                    int i11 = i6 - (measuredHeight / 2);
                    childAt.layout(i5, i11, width, measuredHeight + i11);
                    paddingRight -= measuredWidth;
                    i8 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((LinearLayout.LayoutParams) jcVar).leftMargin) + ((LinearLayout.LayoutParams) jcVar).rightMargin;
                    r(i10);
                    i9++;
                }
            }
        }
        if (childCount == 1 && i8 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i12 = (i7 / 2) - (measuredWidth2 / 2);
            int i13 = i6 - (measuredHeight2 / 2);
            childAt2.layout(i12, i13, measuredWidth2 + i12, measuredHeight2 + i13);
            return;
        }
        int i14 = i9 - (i8 ^ 1);
        int max = Math.max(0, i14 > 0 ? paddingRight / i14 : 0);
        if (z3) {
            int width2 = getWidth() - getPaddingRight();
            for (int i15 = 0; i15 < childCount; i15++) {
                View childAt3 = getChildAt(i15);
                jc jcVar2 = (jc) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !jcVar2.f19465c) {
                    int i16 = width2 - ((LinearLayout.LayoutParams) jcVar2).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i17 = i6 - (measuredHeight3 / 2);
                    childAt3.layout(i16 - measuredWidth3, i17, i16, measuredHeight3 + i17);
                    width2 = i16 - ((measuredWidth3 + ((LinearLayout.LayoutParams) jcVar2).leftMargin) + max);
                }
            }
            return;
        }
        int paddingLeft = getPaddingLeft();
        for (int i18 = 0; i18 < childCount; i18++) {
            View childAt4 = getChildAt(i18);
            jc jcVar3 = (jc) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !jcVar3.f19465c) {
                int i19 = paddingLeft + ((LinearLayout.LayoutParams) jcVar3).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i20 = i6 - (measuredHeight4 / 2);
                childAt4.layout(i19, i20, i19 + measuredWidth4, measuredHeight4 + i20);
                paddingLeft = measuredWidth4 + ((LinearLayout.LayoutParams) jcVar3).rightMargin + max + i19;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r11v15 */
    /* JADX WARN: Type inference failed for: r11v16, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v41 */
    @Override // g.bvk, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int i4;
        ?? r11;
        int i5;
        int i6;
        ftn ftnVar;
        boolean z = this.l;
        boolean z2 = View.MeasureSpec.getMode(i) == 1073741824;
        this.l = z2;
        if (z != z2) {
            this.k = 0;
        }
        int size = View.MeasureSpec.getSize(i);
        if (this.l && (ftnVar = this.f81a) != null && size != this.k) {
            this.k = size;
            ftnVar.am(true);
        }
        int childCount = getChildCount();
        if (!this.l || childCount <= 0) {
            for (int i7 = 0; i7 < childCount; i7++) {
                jc jcVar = (jc) getChildAt(i7).getLayoutParams();
                ((LinearLayout.LayoutParams) jcVar).rightMargin = 0;
                ((LinearLayout.LayoutParams) jcVar).leftMargin = 0;
            }
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i);
        int size3 = View.MeasureSpec.getSize(i2);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, paddingBottom, -2);
        int i8 = size2 - paddingRight;
        int i9 = this.f83e;
        int i10 = i8 / i9;
        int i11 = i8 % i9;
        if (i10 == 0) {
            setMeasuredDimension(i8, 0);
            return;
        }
        int i12 = (i11 / i10) + i9;
        int childCount2 = getChildCount();
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        boolean z3 = false;
        int i17 = 0;
        long j = 0;
        while (true) {
            i3 = this.j;
            if (i16 >= childCount2) {
                break;
            }
            View childAt = getChildAt(i16);
            int i18 = size3;
            int i19 = paddingBottom;
            if (childAt.getVisibility() == 8) {
                i5 = i12;
            } else {
                boolean z4 = childAt instanceof ActionMenuItemView;
                i14++;
                if (z4) {
                    childAt.setPadding(i3, 0, i3, 0);
                }
                jc jcVar2 = (jc) childAt.getLayoutParams();
                jcVar2.f19466d = false;
                jcVar2.f19468f = 0;
                jcVar2.f19467e = 0;
                jcVar2.f19463a = false;
                ((LinearLayout.LayoutParams) jcVar2).leftMargin = 0;
                ((LinearLayout.LayoutParams) jcVar2).rightMargin = 0;
                jcVar2.f19464b = z4 && !TextUtils.isEmpty(((ActionMenuItemView) childAt).getText());
                int i20 = jcVar2.f19465c ? 1 : i10;
                jc jcVar3 = (jc) childAt.getLayoutParams();
                int i21 = i10;
                i5 = i12;
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(childMeasureSpec) - i19, View.MeasureSpec.getMode(childMeasureSpec));
                ActionMenuItemView actionMenuItemView = z4 ? (ActionMenuItemView) childAt : null;
                boolean z5 = (actionMenuItemView == null || TextUtils.isEmpty(actionMenuItemView.getText())) ? false : true;
                boolean z6 = z5;
                if (i20 <= 0 || (z5 && i20 < 2)) {
                    i6 = 0;
                } else {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(i5 * i20, Integer.MIN_VALUE), makeMeasureSpec);
                    int measuredWidth = childAt.getMeasuredWidth();
                    i6 = measuredWidth / i5;
                    if (measuredWidth % i5 != 0) {
                        i6++;
                    }
                    if (z6 && i6 < 2) {
                        i6 = 2;
                    }
                }
                jcVar3.f19463a = !jcVar3.f19465c && z6;
                jcVar3.f19467e = i6;
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i6 * i5, C.ENCODING_PCM_32BIT), makeMeasureSpec);
                i15 = Math.max(i15, i6);
                if (jcVar2.f19463a) {
                    i17++;
                }
                if (jcVar2.f19465c) {
                    z3 = true;
                }
                i10 = i21 - i6;
                i13 = Math.max(i13, childAt.getMeasuredHeight());
                if (i6 == 1) {
                    j |= 1 << i16;
                }
            }
            i16++;
            size3 = i18;
            paddingBottom = i19;
            i12 = i5;
        }
        int i22 = size3;
        int i23 = i10;
        int i24 = i12;
        boolean z7 = z3 && i14 == 2;
        int i25 = i23;
        boolean z8 = false;
        while (i17 > 0 && i25 > 0) {
            int i26 = he.UNDEFINED_ITEM_ID;
            long j2 = 0;
            int i27 = 0;
            int i28 = 0;
            while (i28 < childCount2) {
                int i29 = i13;
                jc jcVar4 = (jc) getChildAt(i28).getLayoutParams();
                boolean z9 = z7;
                if (jcVar4.f19463a) {
                    int i30 = jcVar4.f19467e;
                    if (i30 < i26) {
                        j2 = 1 << i28;
                        i26 = i30;
                        i27 = 1;
                    } else if (i30 == i26) {
                        j2 |= 1 << i28;
                        i27++;
                    }
                }
                i28++;
                z7 = z9;
                i13 = i29;
            }
            i4 = i13;
            boolean z10 = z7;
            j |= j2;
            if (i27 > i25) {
                break;
            }
            int i31 = i26 + 1;
            int i32 = 0;
            while (i32 < childCount2) {
                View childAt2 = getChildAt(i32);
                jc jcVar5 = (jc) childAt2.getLayoutParams();
                boolean z11 = z3;
                long j3 = 1 << i32;
                if ((j2 & j3) != 0) {
                    if (z10 && jcVar5.f19464b) {
                        r11 = 1;
                        r11 = 1;
                        if (i25 == 1) {
                            childAt2.setPadding(i3 + i24, 0, i3, 0);
                        }
                    } else {
                        r11 = 1;
                    }
                    jcVar5.f19467e += r11;
                    jcVar5.f19466d = r11;
                    i25--;
                } else if (jcVar5.f19467e == i31) {
                    j |= j3;
                }
                i32++;
                z3 = z11;
            }
            z7 = z10;
            i13 = i4;
            z8 = true;
        }
        i4 = i13;
        boolean z12 = !z3 && i14 == 1;
        if (i25 > 0 && j != 0 && (i25 < i14 - 1 || z12 || i15 > 1)) {
            float bitCount = Long.bitCount(j);
            if (!z12) {
                if ((j & 1) != 0 && !((jc) getChildAt(0).getLayoutParams()).f19464b) {
                    bitCount -= 0.5f;
                }
                int i33 = childCount2 - 1;
                if ((j & (1 << i33)) != 0 && !((jc) getChildAt(i33).getLayoutParams()).f19464b) {
                    bitCount -= 0.5f;
                }
            }
            int i34 = bitCount > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? (int) ((i25 * i24) / bitCount) : 0;
            boolean z13 = z8;
            for (int i35 = 0; i35 < childCount2; i35++) {
                if ((j & (1 << i35)) != 0) {
                    View childAt3 = getChildAt(i35);
                    jc jcVar6 = (jc) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        jcVar6.f19468f = i34;
                        jcVar6.f19466d = true;
                        if (i35 == 0 && !jcVar6.f19464b) {
                            ((LinearLayout.LayoutParams) jcVar6).leftMargin = (-i34) / 2;
                        }
                        z13 = true;
                    } else if (jcVar6.f19465c) {
                        jcVar6.f19468f = i34;
                        jcVar6.f19466d = true;
                        ((LinearLayout.LayoutParams) jcVar6).rightMargin = (-i34) / 2;
                        z13 = true;
                    } else {
                        if (i35 != 0) {
                            ((LinearLayout.LayoutParams) jcVar6).leftMargin = i34 / 2;
                        }
                        if (i35 != childCount2 - 1) {
                            ((LinearLayout.LayoutParams) jcVar6).rightMargin = i34 / 2;
                        }
                    }
                }
            }
            z8 = z13;
        }
        if (z8) {
            for (int i36 = 0; i36 < childCount2; i36++) {
                View childAt4 = getChildAt(i36);
                jc jcVar7 = (jc) childAt4.getLayoutParams();
                if (jcVar7.f19466d) {
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec((jcVar7.f19467e * i24) + jcVar7.f19468f, C.ENCODING_PCM_32BIT), childMeasureSpec);
                }
            }
        }
        setMeasuredDimension(i8, mode != 1073741824 ? i4 : i22);
    }

    @Override // g.bvk
    /* renamed from: q */
    public final /* bridge */ /* synthetic */ aob generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return o(layoutParams);
    }

    public final boolean r(int i) {
        boolean z = false;
        if (i == 0) {
            return false;
        }
        KeyEvent.Callback childAt = getChildAt(i - 1);
        KeyEvent.Callback childAt2 = getChildAt(i);
        if (i < getChildCount() && (childAt instanceof di)) {
            z = ((di) childAt).n();
        }
        return (i <= 0 || !(childAt2 instanceof di)) ? z : ((di) childAt2).o() | z;
    }

    @Override // g.bvk
    /* renamed from: s */
    public final /* bridge */ /* synthetic */ aob generateDefaultLayoutParams() {
        return p();
    }

    public void setExpandedActionViewsExclusive(boolean z) {
        this.f82b.ac = z;
    }

    public void setOnMenuItemClickListener(cwb cwbVar) {
        this.m = cwbVar;
    }

    public void setOverflowIcon(Drawable drawable) {
        getMenu();
        esf esfVar = this.f82b;
        ena enaVar = esfVar.y;
        if (enaVar != null) {
            enaVar.setImageDrawable(drawable);
        } else {
            esfVar.r = true;
            esfVar.o = drawable;
        }
    }

    public void setOverflowReserved(boolean z) {
        this.h = z;
    }

    public void setPopupTheme(int i) {
        if (this.i != i) {
            this.i = i;
            if (i == 0) {
                this.n = getContext();
            } else {
                this.n = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setPresenter(esf esfVar) {
        this.f82b = esfVar;
        esfVar.i = this;
        this.f81a = esfVar.p;
    }

    @Override // g.bvk
    /* renamed from: t */
    public final aob generateLayoutParams(AttributeSet attributeSet) {
        return new jc(getContext(), attributeSet);
    }
}
