package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Gravity;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.C;
import g.acs;
import g.arz;
import g.bjn;
import g.bkp;
import g.bti;
import g.cck;
import g.dcq;
import g.dnh;
import g.dqp;
import g.dyn;
import g.dzh;
import g.emr;
import g.end;
import g.eop;
import g.esf;
import g.far;
import g.fck;
import g.ffb;
import g.fnq;
import g.fps;
import g.fso;
import g.ftn;
import g.fxu;
import g.get;
import g.gez;
import g.glz;
import g.goi;
import g.gsw;
import g.hax;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class Toolbar extends ViewGroup implements bkp {

    /* renamed from: a, reason: collision with root package name */
    public AppCompatImageButton f114a;
    public int aa;

    /* renamed from: ab, reason: collision with root package name */
    public ActionMenuView f115ab;
    public hax ac;
    public ColorStateList ad;
    public CharSequence ae;
    public boolean af;
    public View ag;
    public AppCompatTextView ah;
    public final int ai;
    public final int aj;
    public glz ak;
    public ColorStateList al;
    public OnBackInvokedDispatcher am;
    public gez an;
    public final dyn ao;
    public ArrayList ap;
    public int aq;
    public int ar;
    public final Drawable as;
    public final fck at;

    /* renamed from: b, reason: collision with root package name */
    public OnBackInvokedCallback f116b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f117c;

    /* renamed from: d, reason: collision with root package name */
    public int f118d;

    /* renamed from: e, reason: collision with root package name */
    public end f119e;

    /* renamed from: f, reason: collision with root package name */
    public esf f120f;

    /* renamed from: g, reason: collision with root package name */
    public final CharSequence f121g;
    public CharSequence h;
    public int i;
    public final int j;
    public fxu k;
    public final ArrayList l;
    public Context m;
    public dcq n;
    public boolean o;
    public AppCompatTextView p;
    public int q;
    public final emr r;
    public int s;
    public int t;
    public final int[] u;
    public int v;
    public AppCompatImageButton w;
    public final ArrayList x;
    public AppCompatImageView y;
    public boolean z;

    public static class a extends gsw {
        public static final Parcelable.Creator<a> CREATOR = new androidx.appcompat.widget.a();
        int expandedMenuItemId;
        boolean isOverflowOpen;

        public a(Parcel parcel) {
            this(parcel, null);
        }

        public a(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.expandedMenuItemId = parcel.readInt();
            this.isOverflowOpen = parcel.readInt() != 0;
        }

        public a(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // g.gsw, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.expandedMenuItemId);
            parcel.writeInt(this.isOverflowOpen ? 1 : 0);
        }
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, R.attr.toolbarStyle);
        this.aj = 8388627;
        this.l = new ArrayList();
        this.x = new ArrayList();
        this.u = new int[2];
        this.at = new fck(new bti(this, 1));
        this.ap = new ArrayList();
        this.r = new emr(17, this);
        this.ao = new dyn(1, this);
        Context context2 = getContext();
        int[] iArr = acs.y;
        dzh j = dzh.j(context2, attributeSet, iArr, R.attr.toolbarStyle);
        goi.x(this, context, iArr, attributeSet, (TypedArray) j.f15121f, R.attr.toolbarStyle);
        TypedArray typedArray = (TypedArray) j.f15121f;
        this.q = typedArray.getResourceId(28, 0);
        this.ar = typedArray.getResourceId(19, 0);
        this.aj = typedArray.getInteger(0, 8388627);
        this.ai = typedArray.getInteger(2, 48);
        int dimensionPixelOffset = typedArray.getDimensionPixelOffset(22, 0);
        dimensionPixelOffset = typedArray.hasValue(27) ? typedArray.getDimensionPixelOffset(27, dimensionPixelOffset) : dimensionPixelOffset;
        this.v = dimensionPixelOffset;
        this.aa = dimensionPixelOffset;
        this.aq = dimensionPixelOffset;
        this.f118d = dimensionPixelOffset;
        int dimensionPixelOffset2 = typedArray.getDimensionPixelOffset(25, -1);
        if (dimensionPixelOffset2 >= 0) {
            this.f118d = dimensionPixelOffset2;
        }
        int dimensionPixelOffset3 = typedArray.getDimensionPixelOffset(24, -1);
        if (dimensionPixelOffset3 >= 0) {
            this.aq = dimensionPixelOffset3;
        }
        int dimensionPixelOffset4 = typedArray.getDimensionPixelOffset(26, -1);
        if (dimensionPixelOffset4 >= 0) {
            this.aa = dimensionPixelOffset4;
        }
        int dimensionPixelOffset5 = typedArray.getDimensionPixelOffset(23, -1);
        if (dimensionPixelOffset5 >= 0) {
            this.v = dimensionPixelOffset5;
        }
        this.j = typedArray.getDimensionPixelSize(13, -1);
        int dimensionPixelOffset6 = typedArray.getDimensionPixelOffset(9, Integer.MIN_VALUE);
        int dimensionPixelOffset7 = typedArray.getDimensionPixelOffset(5, Integer.MIN_VALUE);
        int dimensionPixelSize = typedArray.getDimensionPixelSize(7, 0);
        int dimensionPixelSize2 = typedArray.getDimensionPixelSize(8, 0);
        ba();
        end endVar = this.f119e;
        endVar.f15848a = false;
        if (dimensionPixelSize != Integer.MIN_VALUE) {
            endVar.f15850c = dimensionPixelSize;
            endVar.f15851d = dimensionPixelSize;
        }
        if (dimensionPixelSize2 != Integer.MIN_VALUE) {
            endVar.f15852e = dimensionPixelSize2;
            endVar.f15853f = dimensionPixelSize2;
        }
        if (dimensionPixelOffset6 != Integer.MIN_VALUE || dimensionPixelOffset7 != Integer.MIN_VALUE) {
            endVar.i(dimensionPixelOffset6, dimensionPixelOffset7);
        }
        this.t = typedArray.getDimensionPixelOffset(10, Integer.MIN_VALUE);
        this.i = typedArray.getDimensionPixelOffset(6, Integer.MIN_VALUE);
        this.as = j.o(4);
        this.f121g = typedArray.getText(3);
        CharSequence text = typedArray.getText(21);
        if (!TextUtils.isEmpty(text)) {
            setTitle(text);
        }
        CharSequence text2 = typedArray.getText(18);
        if (!TextUtils.isEmpty(text2)) {
            setSubtitle(text2);
        }
        this.m = getContext();
        setPopupTheme(typedArray.getResourceId(17, 0));
        Drawable o = j.o(16);
        if (o != null) {
            setNavigationIcon(o);
        }
        CharSequence text3 = typedArray.getText(15);
        if (!TextUtils.isEmpty(text3)) {
            setNavigationContentDescription(text3);
        }
        Drawable o2 = j.o(11);
        if (o2 != null) {
            setLogo(o2);
        }
        CharSequence text4 = typedArray.getText(12);
        if (!TextUtils.isEmpty(text4)) {
            setLogoDescription(text4);
        }
        if (typedArray.hasValue(29)) {
            setTitleTextColor(j.aa(29));
        }
        if (typedArray.hasValue(20)) {
            setSubtitleTextColor(j.aa(20));
        }
        if (typedArray.hasValue(14)) {
            getMenuInflater().inflate(typedArray.getResourceId(14, 0), getMenu());
        }
        j.af();
    }

    public static dqp au() {
        dqp dqpVar = new dqp(-2, -2);
        dqpVar.f14649b = 0;
        dqpVar.f14648a = 8388627;
        return dqpVar;
    }

    public static int av(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.getMarginEnd() + marginLayoutParams.getMarginStart();
    }

    public static int aw(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    public static dqp ax(ViewGroup.LayoutParams layoutParams) {
        boolean z = layoutParams instanceof dqp;
        if (z) {
            dqp dqpVar = (dqp) layoutParams;
            dqp dqpVar2 = new dqp(dqpVar);
            dqpVar2.f14649b = 0;
            dqpVar2.f14649b = dqpVar.f14649b;
            return dqpVar2;
        }
        if (z) {
            dqp dqpVar3 = new dqp((dqp) layoutParams);
            dqpVar3.f14649b = 0;
            return dqpVar3;
        }
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            dqp dqpVar4 = new dqp(layoutParams);
            dqpVar4.f14649b = 0;
            return dqpVar4;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        dqp dqpVar5 = new dqp(marginLayoutParams);
        dqpVar5.f14649b = 0;
        ((ViewGroup.MarginLayoutParams) dqpVar5).leftMargin = marginLayoutParams.leftMargin;
        ((ViewGroup.MarginLayoutParams) dqpVar5).topMargin = marginLayoutParams.topMargin;
        ((ViewGroup.MarginLayoutParams) dqpVar5).rightMargin = marginLayoutParams.rightMargin;
        ((ViewGroup.MarginLayoutParams) dqpVar5).bottomMargin = marginLayoutParams.bottomMargin;
        return dqpVar5;
    }

    private ArrayList<MenuItem> getCurrentMenuItems() {
        ArrayList<MenuItem> arrayList = new ArrayList<>();
        Menu menu = getMenu();
        for (int i = 0; i < menu.size(); i++) {
            arrayList.add(menu.getItem(i));
        }
        return arrayList;
    }

    private MenuInflater getMenuInflater() {
        return new cck(getContext());
    }

    @Override // g.bkp
    public final void addMenuProvider(arz arzVar) {
        fck fckVar = this.at;
        fckVar.f16566b.add(arzVar);
        fckVar.f16565a.run();
    }

    public final boolean ay() {
        esf esfVar;
        ActionMenuView actionMenuView = this.f115ab;
        return (actionMenuView == null || (esfVar = actionMenuView.f82b) == null || !esfVar.af()) ? false : true;
    }

    public final boolean az(View view) {
        return view.getParent() == this || this.x.contains(view);
    }

    public final void ba() {
        if (this.f119e == null) {
            end endVar = new end();
            endVar.f15851d = 0;
            endVar.f15853f = 0;
            endVar.f15854g = Integer.MIN_VALUE;
            endVar.f15849b = Integer.MIN_VALUE;
            endVar.f15850c = 0;
            endVar.f15852e = 0;
            endVar.h = false;
            endVar.f15848a = false;
            this.f119e = endVar;
        }
    }

    public final void bb() {
        bf();
        ActionMenuView actionMenuView = this.f115ab;
        if (actionMenuView.f81a == null) {
            ftn ftnVar = (ftn) actionMenuView.getMenu();
            if (this.ak == null) {
                this.ak = new glz(this);
            }
            this.f115ab.setExpandedActionViewsExclusive(true);
            ftnVar.ap(this.ak, this.m);
            be();
        }
    }

    public final void bc(int i, ArrayList arrayList) {
        boolean z = getLayoutDirection() == 1;
        int childCount = getChildCount();
        int absoluteGravity = Gravity.getAbsoluteGravity(i, getLayoutDirection());
        arrayList.clear();
        if (!z) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                dqp dqpVar = (dqp) childAt.getLayoutParams();
                if (dqpVar.f14649b == 0 && bm(childAt)) {
                    int i3 = dqpVar.f14648a;
                    int layoutDirection = getLayoutDirection();
                    int absoluteGravity2 = Gravity.getAbsoluteGravity(i3, layoutDirection) & 7;
                    if (absoluteGravity2 != 1 && absoluteGravity2 != 3 && absoluteGravity2 != 5) {
                        absoluteGravity2 = layoutDirection == 1 ? 5 : 3;
                    }
                    if (absoluteGravity2 == absoluteGravity) {
                        arrayList.add(childAt);
                    }
                }
            }
            return;
        }
        for (int i4 = childCount - 1; i4 >= 0; i4--) {
            View childAt2 = getChildAt(i4);
            dqp dqpVar2 = (dqp) childAt2.getLayoutParams();
            if (dqpVar2.f14649b == 0 && bm(childAt2)) {
                int i5 = dqpVar2.f14648a;
                int layoutDirection2 = getLayoutDirection();
                int absoluteGravity3 = Gravity.getAbsoluteGravity(i5, layoutDirection2) & 7;
                if (absoluteGravity3 != 1 && absoluteGravity3 != 3 && absoluteGravity3 != 5) {
                    absoluteGravity3 = layoutDirection2 == 1 ? 5 : 3;
                }
                if (absoluteGravity3 == absoluteGravity) {
                    arrayList.add(childAt2);
                }
            }
        }
    }

    public final boolean bd() {
        esf esfVar;
        ActionMenuView actionMenuView = this.f115ab;
        return (actionMenuView == null || (esfVar = actionMenuView.f82b) == null || !esfVar.ag()) ? false : true;
    }

    public final void be() {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        if (Build.VERSION.SDK_INT >= 33) {
            OnBackInvokedDispatcher b2 = eop.b(this);
            glz glzVar = this.ak;
            boolean z = (glzVar == null || glzVar.k == null || b2 == null || !isAttachedToWindow() || !this.z) ? false : true;
            if (z && this.am == null) {
                if (this.f116b == null) {
                    this.f116b = eop.c(new bti(this, 0));
                }
                eop.d(b2, this.f116b);
                this.am = b2;
                return;
            }
            if (z || (onBackInvokedDispatcher = this.am) == null) {
                return;
            }
            eop.a(onBackInvokedDispatcher, this.f116b);
            this.am = null;
        }
    }

    public final void bf() {
        if (this.f115ab == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext(), null);
            this.f115ab = actionMenuView;
            actionMenuView.setPopupTheme(this.s);
            this.f115ab.setOnMenuItemClickListener(this.r);
            ActionMenuView actionMenuView2 = this.f115ab;
            gez gezVar = this.an;
            fnq fnqVar = new fnq(17, this);
            actionMenuView2.f85g = gezVar;
            actionMenuView2.f84f = fnqVar;
            dqp au = au();
            au.f14648a = (this.ai & 112) | 8388613;
            this.f115ab.setLayoutParams(au);
            bj(this.f115ab, false);
        }
    }

    public final void bg(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i4 >= 0) {
            if (mode != 0) {
                i4 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i4);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i4, C.ENCODING_PCM_32BIT);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    public final int bh(View view, int i, int i2, int[] iArr) {
        dqp dqpVar = (dqp) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) dqpVar).leftMargin - iArr[0];
        int max = Math.max(0, i3) + i;
        iArr[0] = Math.max(0, -i3);
        int bk = bk(i2, view);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, bk, max + measuredWidth, view.getMeasuredHeight() + bk);
        return measuredWidth + ((ViewGroup.MarginLayoutParams) dqpVar).rightMargin + max;
    }

    public final void bi() {
        Iterator it = this.ap.iterator();
        while (it.hasNext()) {
            getMenu().removeItem(((MenuItem) it.next()).getItemId());
        }
        Menu menu = getMenu();
        ArrayList<MenuItem> currentMenuItems = getCurrentMenuItems();
        MenuInflater menuInflater = getMenuInflater();
        Iterator it2 = this.at.f16566b.iterator();
        while (it2.hasNext()) {
            ((bjn) ((arz) it2.next())).f11707a.ca(menu, menuInflater);
        }
        ArrayList<MenuItem> currentMenuItems2 = getCurrentMenuItems();
        currentMenuItems2.removeAll(currentMenuItems);
        this.ap = currentMenuItems2;
    }

    public final void bj(View view, boolean z) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        dqp au = layoutParams == null ? au() : !checkLayoutParams(layoutParams) ? ax(layoutParams) : (dqp) layoutParams;
        au.f14649b = 1;
        if (!z || this.ag == null) {
            addView(view, au);
        } else {
            view.setLayoutParams(au);
            this.x.add(view);
        }
    }

    public final int bk(int i, View view) {
        dqp dqpVar = (dqp) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i2 = i > 0 ? (measuredHeight - i) / 2 : 0;
        int i3 = dqpVar.f14648a & 112;
        if (i3 != 16 && i3 != 48 && i3 != 80) {
            i3 = this.aj & 112;
        }
        if (i3 == 48) {
            return getPaddingTop() - i2;
        }
        if (i3 == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) dqpVar).bottomMargin) - i2;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int i4 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        int i5 = ((ViewGroup.MarginLayoutParams) dqpVar).topMargin;
        if (i4 < i5) {
            i4 = i5;
        } else {
            int i6 = (((height - paddingBottom) - measuredHeight) - i4) - paddingTop;
            int i7 = ((ViewGroup.MarginLayoutParams) dqpVar).bottomMargin;
            if (i6 < i7) {
                i4 = Math.max(0, i4 - (i7 - i6));
            }
        }
        return paddingTop + i4;
    }

    public final int bl(View view, int i, int i2, int[] iArr) {
        dqp dqpVar = (dqp) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) dqpVar).rightMargin - iArr[1];
        int max = i - Math.max(0, i3);
        iArr[1] = Math.max(0, -i3);
        int bk = bk(i2, view);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, bk, max, view.getMeasuredHeight() + bk);
        return max - (measuredWidth + ((ViewGroup.MarginLayoutParams) dqpVar).leftMargin);
    }

    public final boolean bm(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    public final void bn() {
        if (this.f114a == null) {
            AppCompatImageButton appCompatImageButton = new AppCompatImageButton(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            this.f114a = appCompatImageButton;
            appCompatImageButton.setImageDrawable(this.as);
            this.f114a.setContentDescription(this.f121g);
            dqp au = au();
            au.f14648a = (this.ai & 112) | 8388611;
            au.f14649b = 2;
            this.f114a.setLayoutParams(au);
            this.f114a.setOnClickListener(new get(13, this));
        }
    }

    public final void bo() {
        if (this.w == null) {
            this.w = new AppCompatImageButton(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            dqp au = au();
            au.f14648a = (this.ai & 112) | 8388611;
            this.w.setLayoutParams(au);
        }
    }

    public final int bp(View view, int i, int i2, int i3, int i4, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = marginLayoutParams.leftMargin - iArr[0];
        int i6 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i6) + Math.max(0, i5);
        iArr[0] = Math.max(0, -i5);
        iArr[1] = Math.max(0, -i6);
        view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + max + i2, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof dqp);
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return au();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        dqp dqpVar = new dqp(context, attributeSet);
        dqpVar.f14648a = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, acs.s);
        dqpVar.f14648a = obtainStyledAttributes.getInt(0, 0);
        obtainStyledAttributes.recycle();
        dqpVar.f14649b = 0;
        return dqpVar;
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return ax(layoutParams);
    }

    public CharSequence getCollapseContentDescription() {
        AppCompatImageButton appCompatImageButton = this.f114a;
        if (appCompatImageButton != null) {
            return appCompatImageButton.getContentDescription();
        }
        return null;
    }

    public Drawable getCollapseIcon() {
        AppCompatImageButton appCompatImageButton = this.f114a;
        if (appCompatImageButton != null) {
            return appCompatImageButton.getDrawable();
        }
        return null;
    }

    public int getContentInsetEnd() {
        end endVar = this.f119e;
        if (endVar != null) {
            return endVar.h ? endVar.f15851d : endVar.f15853f;
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        int i = this.i;
        return i != Integer.MIN_VALUE ? i : getContentInsetEnd();
    }

    public int getContentInsetLeft() {
        end endVar = this.f119e;
        if (endVar != null) {
            return endVar.f15851d;
        }
        return 0;
    }

    public int getContentInsetRight() {
        end endVar = this.f119e;
        if (endVar != null) {
            return endVar.f15853f;
        }
        return 0;
    }

    public int getContentInsetStart() {
        end endVar = this.f119e;
        if (endVar != null) {
            return endVar.h ? endVar.f15853f : endVar.f15851d;
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i = this.t;
        return i != Integer.MIN_VALUE ? i : getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        ftn ftnVar;
        ActionMenuView actionMenuView = this.f115ab;
        return (actionMenuView == null || (ftnVar = actionMenuView.f81a) == null || !ftnVar.hasVisibleItems()) ? getContentInsetEnd() : Math.max(getContentInsetEnd(), Math.max(this.i, 0));
    }

    public int getCurrentContentInsetLeft() {
        return getLayoutDirection() == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        return getLayoutDirection() == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.t, 0)) : getContentInsetStart();
    }

    public Drawable getLogo() {
        AppCompatImageView appCompatImageView = this.y;
        if (appCompatImageView != null) {
            return appCompatImageView.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        AppCompatImageView appCompatImageView = this.y;
        if (appCompatImageView != null) {
            return appCompatImageView.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        bb();
        return this.f115ab.getMenu();
    }

    public View getNavButtonView() {
        return this.w;
    }

    public CharSequence getNavigationContentDescription() {
        AppCompatImageButton appCompatImageButton = this.w;
        if (appCompatImageButton != null) {
            return appCompatImageButton.getContentDescription();
        }
        return null;
    }

    public Drawable getNavigationIcon() {
        AppCompatImageButton appCompatImageButton = this.w;
        if (appCompatImageButton != null) {
            return appCompatImageButton.getDrawable();
        }
        return null;
    }

    public esf getOuterActionMenuPresenter() {
        return this.f120f;
    }

    public Drawable getOverflowIcon() {
        bb();
        return this.f115ab.getOverflowIcon();
    }

    public Context getPopupContext() {
        return this.m;
    }

    public int getPopupTheme() {
        return this.s;
    }

    public CharSequence getSubtitle() {
        return this.h;
    }

    public final TextView getSubtitleTextView() {
        return this.p;
    }

    public CharSequence getTitle() {
        return this.ae;
    }

    public int getTitleMarginBottom() {
        return this.v;
    }

    public int getTitleMarginEnd() {
        return this.aq;
    }

    public int getTitleMarginStart() {
        return this.f118d;
    }

    public int getTitleMarginTop() {
        return this.aa;
    }

    public final TextView getTitleTextView() {
        return this.ah;
    }

    public fps getWrapper() {
        if (this.k == null) {
            this.k = new fxu(this, true);
        }
        return this.k;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        be();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.ao);
        be();
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.o = false;
        }
        if (!this.o) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.o = true;
            }
        }
        if (actionMasked != 10 && actionMasked != 3) {
            return true;
        }
        this.o = false;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x028f A[LOOP:0: B:39:0x028d->B:40:0x028f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x02a7 A[LOOP:1: B:43:0x02a5->B:44:0x02a7, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x02c6 A[LOOP:2: B:47:0x02c4->B:48:0x02c6, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x030c  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0319 A[LOOP:3: B:56:0x0317->B:57:0x0319, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0218  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int max;
        boolean bm;
        boolean bm2;
        boolean z2;
        int i7;
        int i8;
        int paddingTop;
        int i9;
        int i10;
        int i11;
        int i12;
        int size;
        int i13;
        int i14;
        int size2;
        int i15;
        int size3;
        int i16;
        int i17;
        int i18;
        int size4;
        boolean z3 = getLayoutDirection() == 1;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop2 = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i19 = width - paddingRight;
        int[] iArr = this.u;
        iArr[1] = 0;
        iArr[0] = 0;
        WeakHashMap weakHashMap = goi.f18490c;
        int minimumHeight = getMinimumHeight();
        int min = minimumHeight >= 0 ? Math.min(minimumHeight, i4 - i2) : 0;
        if (!bm(this.w)) {
            i5 = paddingLeft;
        } else {
            if (z3) {
                i6 = bl(this.w, i19, min, iArr);
                i5 = paddingLeft;
                if (bm(this.f114a)) {
                    if (z3) {
                        i6 = bl(this.f114a, i6, min, iArr);
                    } else {
                        i5 = bh(this.f114a, i5, min, iArr);
                    }
                }
                if (bm(this.f115ab)) {
                    if (z3) {
                        i5 = bh(this.f115ab, i5, min, iArr);
                    } else {
                        i6 = bl(this.f115ab, i6, min, iArr);
                    }
                }
                int currentContentInsetLeft = getCurrentContentInsetLeft();
                int currentContentInsetRight = getCurrentContentInsetRight();
                iArr[0] = Math.max(0, currentContentInsetLeft - i5);
                iArr[1] = Math.max(0, currentContentInsetRight - (i19 - i6));
                max = Math.max(i5, currentContentInsetLeft);
                int min2 = Math.min(i6, i19 - currentContentInsetRight);
                if (bm(this.ag)) {
                    if (z3) {
                        min2 = bl(this.ag, min2, min, iArr);
                    } else {
                        max = bh(this.ag, max, min, iArr);
                    }
                }
                if (bm(this.y)) {
                    if (z3) {
                        min2 = bl(this.y, min2, min, iArr);
                    } else {
                        max = bh(this.y, max, min, iArr);
                    }
                }
                bm = bm(this.ah);
                bm2 = bm(this.p);
                if (bm) {
                    z2 = z3;
                    i7 = 0;
                } else {
                    dqp dqpVar = (dqp) this.ah.getLayoutParams();
                    z2 = z3;
                    i7 = this.ah.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) dqpVar).topMargin + ((ViewGroup.MarginLayoutParams) dqpVar).bottomMargin;
                }
                if (!bm2) {
                    dqp dqpVar2 = (dqp) this.p.getLayoutParams();
                    i7 = this.p.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) dqpVar2).topMargin + ((ViewGroup.MarginLayoutParams) dqpVar2).bottomMargin + i7;
                }
                if (!bm || bm2) {
                    AppCompatTextView appCompatTextView = !bm ? this.ah : this.p;
                    AppCompatTextView appCompatTextView2 = !bm2 ? this.p : this.ah;
                    dqp dqpVar3 = (dqp) appCompatTextView.getLayoutParams();
                    dqp dqpVar4 = (dqp) appCompatTextView2.getLayoutParams();
                    int i20 = i7;
                    boolean z4 = (!bm && this.ah.getMeasuredWidth() > 0) || (bm2 && this.p.getMeasuredWidth() > 0);
                    i8 = this.aj & 112;
                    int i21 = max;
                    if (i8 != 48) {
                        paddingTop = getPaddingTop() + ((ViewGroup.MarginLayoutParams) dqpVar3).topMargin + this.aa;
                    } else if (i8 != 80) {
                        int i22 = (((height - paddingTop2) - paddingBottom) - i20) / 2;
                        int i23 = ((ViewGroup.MarginLayoutParams) dqpVar3).topMargin + this.aa;
                        if (i22 < i23) {
                            i22 = i23;
                        } else {
                            int i24 = (((height - paddingBottom) - i20) - i22) - paddingTop2;
                            int i25 = ((ViewGroup.MarginLayoutParams) dqpVar3).bottomMargin;
                            int i26 = this.v;
                            if (i24 < i25 + i26) {
                                i22 = Math.max(0, i22 - ((((ViewGroup.MarginLayoutParams) dqpVar4).bottomMargin + i26) - i24));
                            }
                        }
                        paddingTop = paddingTop2 + i22;
                    } else {
                        paddingTop = (((height - paddingBottom) - ((ViewGroup.MarginLayoutParams) dqpVar4).bottomMargin) - this.v) - i20;
                    }
                    if (z2) {
                        int i27 = (z4 ? this.f118d : 0) - iArr[0];
                        max = Math.max(0, i27) + i21;
                        iArr[0] = Math.max(0, -i27);
                        if (bm) {
                            dqp dqpVar5 = (dqp) this.ah.getLayoutParams();
                            int measuredWidth = this.ah.getMeasuredWidth() + max;
                            int measuredHeight = this.ah.getMeasuredHeight() + paddingTop;
                            this.ah.layout(max, paddingTop, measuredWidth, measuredHeight);
                            i9 = measuredWidth + this.aq;
                            paddingTop = measuredHeight + ((ViewGroup.MarginLayoutParams) dqpVar5).bottomMargin;
                        } else {
                            i9 = max;
                        }
                        if (bm2) {
                            int i28 = paddingTop + ((ViewGroup.MarginLayoutParams) ((dqp) this.p.getLayoutParams())).topMargin;
                            int measuredWidth2 = this.p.getMeasuredWidth() + max;
                            this.p.layout(max, i28, measuredWidth2, this.p.getMeasuredHeight() + i28);
                            i10 = measuredWidth2 + this.aq;
                        } else {
                            i10 = max;
                        }
                        if (z4) {
                            max = Math.max(i9, i10);
                        }
                    } else {
                        int i29 = (z4 ? this.f118d : 0) - iArr[1];
                        min2 -= Math.max(0, i29);
                        iArr[1] = Math.max(0, -i29);
                        if (bm) {
                            dqp dqpVar6 = (dqp) this.ah.getLayoutParams();
                            int measuredWidth3 = min2 - this.ah.getMeasuredWidth();
                            int measuredHeight2 = this.ah.getMeasuredHeight() + paddingTop;
                            this.ah.layout(measuredWidth3, paddingTop, min2, measuredHeight2);
                            i11 = measuredWidth3 - this.aq;
                            paddingTop = measuredHeight2 + ((ViewGroup.MarginLayoutParams) dqpVar6).bottomMargin;
                        } else {
                            i11 = min2;
                        }
                        if (bm2) {
                            int i30 = paddingTop + ((ViewGroup.MarginLayoutParams) ((dqp) this.p.getLayoutParams())).topMargin;
                            this.p.layout(min2 - this.p.getMeasuredWidth(), i30, min2, this.p.getMeasuredHeight() + i30);
                            i12 = min2 - this.aq;
                        } else {
                            i12 = min2;
                        }
                        if (z4) {
                            min2 = Math.min(i11, i12);
                        }
                        max = i21;
                    }
                }
                ArrayList arrayList = this.l;
                bc(3, arrayList);
                size = arrayList.size();
                i13 = max;
                for (i14 = 0; i14 < size; i14++) {
                    i13 = bh((View) arrayList.get(i14), i13, min, iArr);
                }
                bc(5, arrayList);
                size2 = arrayList.size();
                for (i15 = 0; i15 < size2; i15++) {
                    min2 = bl((View) arrayList.get(i15), min2, min, iArr);
                }
                bc(1, arrayList);
                int i31 = iArr[0];
                int i32 = iArr[1];
                size3 = arrayList.size();
                int i33 = i31;
                i16 = 0;
                int i34 = 0;
                while (i16 < size3) {
                    View view = (View) arrayList.get(i16);
                    dqp dqpVar7 = (dqp) view.getLayoutParams();
                    int i35 = i32;
                    int i36 = ((ViewGroup.MarginLayoutParams) dqpVar7).leftMargin - i33;
                    int i37 = ((ViewGroup.MarginLayoutParams) dqpVar7).rightMargin - i35;
                    int max2 = Math.max(0, i36);
                    int max3 = Math.max(0, i37);
                    int max4 = Math.max(0, -i36);
                    int max5 = Math.max(0, -i37);
                    i34 += view.getMeasuredWidth() + max2 + max3;
                    i16++;
                    i33 = max4;
                    i32 = max5;
                }
                i18 = ((((width - paddingLeft) - paddingRight) / 2) + paddingLeft) - (i34 / 2);
                int i38 = i34 + i18;
                if (i18 >= i13) {
                    i13 = i38 > min2 ? i18 - (i38 - min2) : i18;
                }
                size4 = arrayList.size();
                for (i17 = 0; i17 < size4; i17++) {
                    i13 = bh((View) arrayList.get(i17), i13, min, iArr);
                }
                arrayList.clear();
            }
            i5 = bh(this.w, paddingLeft, min, iArr);
        }
        i6 = i19;
        if (bm(this.f114a)) {
        }
        if (bm(this.f115ab)) {
        }
        int currentContentInsetLeft2 = getCurrentContentInsetLeft();
        int currentContentInsetRight2 = getCurrentContentInsetRight();
        iArr[0] = Math.max(0, currentContentInsetLeft2 - i5);
        iArr[1] = Math.max(0, currentContentInsetRight2 - (i19 - i6));
        max = Math.max(i5, currentContentInsetLeft2);
        int min22 = Math.min(i6, i19 - currentContentInsetRight2);
        if (bm(this.ag)) {
        }
        if (bm(this.y)) {
        }
        bm = bm(this.ah);
        bm2 = bm(this.p);
        if (bm) {
        }
        if (!bm2) {
        }
        if (!bm) {
        }
        if (!bm) {
        }
        if (!bm2) {
        }
        dqp dqpVar32 = (dqp) appCompatTextView.getLayoutParams();
        dqp dqpVar42 = (dqp) appCompatTextView2.getLayoutParams();
        int i202 = i7;
        if (bm) {
        }
        i8 = this.aj & 112;
        int i212 = max;
        if (i8 != 48) {
        }
        if (z2) {
        }
        ArrayList arrayList2 = this.l;
        bc(3, arrayList2);
        size = arrayList2.size();
        i13 = max;
        while (i14 < size) {
        }
        bc(5, arrayList2);
        size2 = arrayList2.size();
        while (i15 < size2) {
        }
        bc(1, arrayList2);
        int i312 = iArr[0];
        int i322 = iArr[1];
        size3 = arrayList2.size();
        int i332 = i312;
        i16 = 0;
        int i342 = 0;
        while (i16 < size3) {
        }
        i18 = ((((width - paddingLeft) - paddingRight) / 2) + paddingLeft) - (i342 / 2);
        int i382 = i342 + i18;
        if (i18 >= i13) {
        }
        size4 = arrayList2.size();
        while (i17 < size4) {
        }
        arrayList2.clear();
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        boolean z;
        char c2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean z2 = dnh.f14457a;
        int i10 = 0;
        if (getLayoutDirection() == 1) {
            z = true;
            c2 = 0;
        } else {
            z = false;
            c2 = 1;
        }
        if (bm(this.w)) {
            bg(this.w, i, 0, i2, this.j);
            i3 = av(this.w) + this.w.getMeasuredWidth();
            i4 = Math.max(0, aw(this.w) + this.w.getMeasuredHeight());
            i5 = View.combineMeasuredStates(0, this.w.getMeasuredState());
        } else {
            i3 = 0;
            i4 = 0;
            i5 = 0;
        }
        if (bm(this.f114a)) {
            bg(this.f114a, i, 0, i2, this.j);
            i3 = av(this.f114a) + this.f114a.getMeasuredWidth();
            i4 = Math.max(i4, aw(this.f114a) + this.f114a.getMeasuredHeight());
            i5 = View.combineMeasuredStates(i5, this.f114a.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int max = Math.max(currentContentInsetStart, i3);
        int max2 = Math.max(0, currentContentInsetStart - i3);
        boolean z3 = z;
        int[] iArr = this.u;
        iArr[z3 ? 1 : 0] = max2;
        if (bm(this.f115ab)) {
            bg(this.f115ab, i, max, i2, this.j);
            i6 = av(this.f115ab) + this.f115ab.getMeasuredWidth();
            i4 = Math.max(i4, aw(this.f115ab) + this.f115ab.getMeasuredHeight());
            i5 = View.combineMeasuredStates(i5, this.f115ab.getMeasuredState());
        } else {
            i6 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int max3 = max + Math.max(currentContentInsetEnd, i6);
        iArr[c2] = Math.max(0, currentContentInsetEnd - i6);
        if (bm(this.ag)) {
            max3 += bp(this.ag, i, max3, i2, 0, iArr);
            i4 = Math.max(i4, aw(this.ag) + this.ag.getMeasuredHeight());
            i5 = View.combineMeasuredStates(i5, this.ag.getMeasuredState());
        }
        if (bm(this.y)) {
            max3 += bp(this.y, i, max3, i2, 0, iArr);
            i4 = Math.max(i4, aw(this.y) + this.y.getMeasuredHeight());
            i5 = View.combineMeasuredStates(i5, this.y.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (((dqp) childAt.getLayoutParams()).f14649b == 0 && bm(childAt)) {
                max3 += bp(childAt, i, max3, i2, 0, iArr);
                int max4 = Math.max(i4, aw(childAt) + childAt.getMeasuredHeight());
                i5 = View.combineMeasuredStates(i5, childAt.getMeasuredState());
                i4 = max4;
            } else {
                max3 = max3;
            }
        }
        int i12 = max3;
        int i13 = this.aa + this.v;
        int i14 = this.f118d + this.aq;
        if (bm(this.ah)) {
            bp(this.ah, i, i12 + i14, i2, i13, iArr);
            int av = av(this.ah) + this.ah.getMeasuredWidth();
            i9 = aw(this.ah) + this.ah.getMeasuredHeight();
            i7 = View.combineMeasuredStates(i5, this.ah.getMeasuredState());
            i8 = av;
        } else {
            i7 = i5;
            i8 = 0;
            i9 = 0;
        }
        if (bm(this.p)) {
            i8 = Math.max(i8, bp(this.p, i, i12 + i14, i2, i13 + i9, iArr));
            i9 += aw(this.p) + this.p.getMeasuredHeight();
            i7 = View.combineMeasuredStates(i7, this.p.getMeasuredState());
        }
        int max5 = Math.max(i4, i9);
        int paddingRight = getPaddingRight() + getPaddingLeft() + i12 + i8;
        int paddingBottom = getPaddingBottom() + getPaddingTop() + max5;
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(paddingRight, getSuggestedMinimumWidth()), i, (-16777216) & i7);
        int resolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i2, i7 << 16);
        if (this.f117c) {
            int childCount2 = getChildCount();
            for (int i15 = 0; i15 < childCount2; i15++) {
                View childAt2 = getChildAt(i15);
                if (!bm(childAt2) || childAt2.getMeasuredWidth() <= 0 || childAt2.getMeasuredHeight() <= 0) {
                }
            }
            setMeasuredDimension(resolveSizeAndState, i10);
        }
        i10 = resolveSizeAndState2;
        setMeasuredDimension(resolveSizeAndState, i10);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem findItem;
        if (!(parcelable instanceof a)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        a aVar = (a) parcelable;
        super.onRestoreInstanceState(aVar.getSuperState());
        ActionMenuView actionMenuView = this.f115ab;
        ftn ftnVar = actionMenuView != null ? actionMenuView.f81a : null;
        int i = aVar.expandedMenuItemId;
        if (i != 0 && this.ak != null && ftnVar != null && (findItem = ftnVar.findItem(i)) != null) {
            findItem.expandActionView();
        }
        if (aVar.isOverflowOpen) {
            dyn dynVar = this.ao;
            removeCallbacks(dynVar);
            post(dynVar);
        }
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        ba();
        end endVar = this.f119e;
        boolean z = i == 1;
        if (z == endVar.h) {
            return;
        }
        endVar.h = z;
        if (!endVar.f15848a) {
            endVar.f15851d = endVar.f15850c;
            endVar.f15853f = endVar.f15852e;
            return;
        }
        if (z) {
            int i2 = endVar.f15849b;
            if (i2 == Integer.MIN_VALUE) {
                i2 = endVar.f15850c;
            }
            endVar.f15851d = i2;
            int i3 = endVar.f15854g;
            if (i3 == Integer.MIN_VALUE) {
                i3 = endVar.f15852e;
            }
            endVar.f15853f = i3;
            return;
        }
        int i4 = endVar.f15854g;
        if (i4 == Integer.MIN_VALUE) {
            i4 = endVar.f15850c;
        }
        endVar.f15851d = i4;
        int i5 = endVar.f15849b;
        if (i5 == Integer.MIN_VALUE) {
            i5 = endVar.f15852e;
        }
        endVar.f15853f = i5;
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        far farVar;
        a aVar = new a(super.onSaveInstanceState());
        glz glzVar = this.ak;
        if (glzVar != null && (farVar = glzVar.k) != null) {
            aVar.expandedMenuItemId = farVar.k;
        }
        aVar.isOverflowOpen = ay();
        return aVar;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.af = false;
        }
        if (!this.af) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.af = true;
            }
        }
        if (actionMasked != 1 && actionMasked != 3) {
            return true;
        }
        this.af = false;
        return true;
    }

    @Override // g.bkp
    public final void removeMenuProvider(arz arzVar) {
        this.at.e(arzVar);
    }

    public void setBackInvokedCallbackEnabled(boolean z) {
        if (this.z != z) {
            this.z = z;
            be();
        }
    }

    public void setCollapseContentDescription(int i) {
        setCollapseContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            bn();
        }
        AppCompatImageButton appCompatImageButton = this.f114a;
        if (appCompatImageButton != null) {
            appCompatImageButton.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(int i) {
        setCollapseIcon(fso.ai(getContext(), i));
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            bn();
            this.f114a.setImageDrawable(drawable);
        } else {
            AppCompatImageButton appCompatImageButton = this.f114a;
            if (appCompatImageButton != null) {
                appCompatImageButton.setImageDrawable(this.as);
            }
        }
    }

    public void setCollapsible(boolean z) {
        this.f117c = z;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i) {
        if (i < 0) {
            i = Integer.MIN_VALUE;
        }
        if (i != this.i) {
            this.i = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i) {
        if (i < 0) {
            i = Integer.MIN_VALUE;
        }
        if (i != this.t) {
            this.t = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setLogo(int i) {
        setLogo(fso.ai(getContext(), i));
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            if (this.y == null) {
                this.y = new AppCompatImageView(getContext(), null);
            }
            if (!az(this.y)) {
                bj(this.y, true);
            }
        } else {
            AppCompatImageView appCompatImageView = this.y;
            if (appCompatImageView != null && az(appCompatImageView)) {
                removeView(this.y);
                this.x.remove(this.y);
            }
        }
        AppCompatImageView appCompatImageView2 = this.y;
        if (appCompatImageView2 != null) {
            appCompatImageView2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(int i) {
        setLogoDescription(getContext().getText(i));
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence) && this.y == null) {
            this.y = new AppCompatImageView(getContext(), null);
        }
        AppCompatImageView appCompatImageView = this.y;
        if (appCompatImageView != null) {
            appCompatImageView.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(int i) {
        setNavigationContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            bo();
        }
        AppCompatImageButton appCompatImageButton = this.w;
        if (appCompatImageButton != null) {
            appCompatImageButton.setContentDescription(charSequence);
            ffb.ay(this.w, charSequence);
        }
    }

    public void setNavigationIcon(int i) {
        setNavigationIcon(fso.ai(getContext(), i));
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            bo();
            if (!az(this.w)) {
                bj(this.w, true);
            }
        } else {
            AppCompatImageButton appCompatImageButton = this.w;
            if (appCompatImageButton != null && az(appCompatImageButton)) {
                removeView(this.w);
                this.x.remove(this.w);
            }
        }
        AppCompatImageButton appCompatImageButton2 = this.w;
        if (appCompatImageButton2 != null) {
            appCompatImageButton2.setImageDrawable(drawable);
        }
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        bo();
        this.w.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(hax haxVar) {
        this.ac = haxVar;
    }

    public void setOverflowIcon(Drawable drawable) {
        bb();
        this.f115ab.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i) {
        if (this.s != i) {
            this.s = i;
            if (i == 0) {
                this.m = getContext();
            } else {
                this.m = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setSubtitle(int i) {
        setSubtitle(getContext().getText(i));
    }

    public void setSubtitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            AppCompatTextView appCompatTextView = this.p;
            if (appCompatTextView != null && az(appCompatTextView)) {
                removeView(this.p);
                this.x.remove(this.p);
            }
        } else {
            if (this.p == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
                this.p = appCompatTextView2;
                appCompatTextView2.setSingleLine();
                this.p.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.ar;
                if (i != 0) {
                    this.p.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.al;
                if (colorStateList != null) {
                    this.p.setTextColor(colorStateList);
                }
            }
            if (!az(this.p)) {
                bj(this.p, true);
            }
        }
        AppCompatTextView appCompatTextView3 = this.p;
        if (appCompatTextView3 != null) {
            appCompatTextView3.setText(charSequence);
        }
        this.h = charSequence;
    }

    public void setSubtitleTextColor(int i) {
        setSubtitleTextColor(ColorStateList.valueOf(i));
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.al = colorStateList;
        AppCompatTextView appCompatTextView = this.p;
        if (appCompatTextView != null) {
            appCompatTextView.setTextColor(colorStateList);
        }
    }

    public void setTitle(int i) {
        setTitle(getContext().getText(i));
    }

    public void setTitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            AppCompatTextView appCompatTextView = this.ah;
            if (appCompatTextView != null && az(appCompatTextView)) {
                removeView(this.ah);
                this.x.remove(this.ah);
            }
        } else {
            if (this.ah == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
                this.ah = appCompatTextView2;
                appCompatTextView2.setSingleLine();
                this.ah.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.q;
                if (i != 0) {
                    this.ah.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.ad;
                if (colorStateList != null) {
                    this.ah.setTextColor(colorStateList);
                }
            }
            if (!az(this.ah)) {
                bj(this.ah, true);
            }
        }
        AppCompatTextView appCompatTextView3 = this.ah;
        if (appCompatTextView3 != null) {
            appCompatTextView3.setText(charSequence);
        }
        this.ae = charSequence;
    }

    public void setTitleMarginBottom(int i) {
        this.v = i;
        requestLayout();
    }

    public void setTitleMarginEnd(int i) {
        this.aq = i;
        requestLayout();
    }

    public void setTitleMarginStart(int i) {
        this.f118d = i;
        requestLayout();
    }

    public void setTitleMarginTop(int i) {
        this.aa = i;
        requestLayout();
    }

    public void setTitleTextColor(int i) {
        setTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.ad = colorStateList;
        AppCompatTextView appCompatTextView = this.ah;
        if (appCompatTextView != null) {
            appCompatTextView.setTextColor(colorStateList);
        }
    }
}
