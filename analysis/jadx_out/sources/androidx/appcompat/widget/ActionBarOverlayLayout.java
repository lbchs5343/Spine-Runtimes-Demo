package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import cn.trinea.android.developertools.R;
import g.anp;
import g.aot;
import g.bbb;
import g.bru;
import g.caf;
import g.cd;
import g.cod;
import g.cpc;
import g.dif;
import g.dzc;
import g.eaz;
import g.ecs;
import g.epc;
import g.ept;
import g.esf;
import g.ffx;
import g.fps;
import g.frm;
import g.fso;
import g.ftn;
import g.fxu;
import g.gcp;
import g.ghh;
import g.gjd;
import g.glz;
import g.goi;
import g.he;
import g.hp;
import g.oi;
import g.wj;
import g.yd;
import java.util.WeakHashMap;

@SuppressLint({"UnknownNullness"})
/* loaded from: classes.dex */
public class ActionBarOverlayLayout extends ViewGroup implements eaz, ept, gcp {

    /* renamed from: a, reason: collision with root package name */
    public static final anp f73a;

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f74b = {R.attr.actionBarSize, android.R.attr.windowContentOverlay};

    /* renamed from: c, reason: collision with root package name */
    public static final Rect f75c;
    public ViewPropertyAnimator aa;

    /* renamed from: ab, reason: collision with root package name */
    public final aot f76ab;
    public anp ac;
    public final Rect ad;
    public Drawable ae;

    /* renamed from: d, reason: collision with root package name */
    public boolean f77d;

    /* renamed from: e, reason: collision with root package name */
    public final Rect f78e;

    /* renamed from: f, reason: collision with root package name */
    public anp f79f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f80g;
    public final epc h;
    public OverScroller i;
    public final Rect j;
    public boolean k;
    public ContentFrameLayout l;
    public int m;
    public int n;
    public frm o;
    public anp p;
    public ActionBarContainer q;
    public fps r;
    public anp s;
    public int t;
    public final epc u;
    public final cod v;
    public final ffx w;
    public boolean x;
    public int y;
    public final Rect z;

    static {
        int i = Build.VERSION.SDK_INT;
        ecs bruVar = i >= 34 ? new bru() : i >= 31 ? new ghh() : i >= 30 ? new yd() : i >= 29 ? new bbb() : new gjd();
        bruVar.h(oi.g(0, 1, 0, 1));
        f73a = bruVar.g();
        f75c = new Rect();
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.y = 0;
        this.ad = new Rect();
        this.z = new Rect();
        this.j = new Rect();
        this.f78e = new Rect();
        new Rect();
        new Rect();
        new Rect();
        new Rect();
        anp anpVar = anp.f10525a;
        this.ac = anpVar;
        this.s = anpVar;
        this.p = anpVar;
        this.f79f = anpVar;
        this.v = new cod(0, this);
        this.h = new epc(this, 0);
        this.u = new epc(this, 1);
        an(context);
        this.f76ab = new aot(2);
        ffx ffxVar = new ffx(context);
        ffxVar.setWillNotDraw(true);
        this.w = ffxVar;
        addView(ffxVar);
    }

    public static boolean af(View view, Rect rect, boolean z) {
        boolean z2;
        cpc cpcVar = (cpc) view.getLayoutParams();
        int i = ((ViewGroup.MarginLayoutParams) cpcVar).leftMargin;
        int i2 = rect.left;
        if (i != i2) {
            ((ViewGroup.MarginLayoutParams) cpcVar).leftMargin = i2;
            z2 = true;
        } else {
            z2 = false;
        }
        int i3 = ((ViewGroup.MarginLayoutParams) cpcVar).topMargin;
        int i4 = rect.top;
        if (i3 != i4) {
            ((ViewGroup.MarginLayoutParams) cpcVar).topMargin = i4;
            z2 = true;
        }
        int i5 = ((ViewGroup.MarginLayoutParams) cpcVar).rightMargin;
        int i6 = rect.right;
        if (i5 != i6) {
            ((ViewGroup.MarginLayoutParams) cpcVar).rightMargin = i6;
            z2 = true;
        }
        if (z) {
            int i7 = ((ViewGroup.MarginLayoutParams) cpcVar).bottomMargin;
            int i8 = rect.bottom;
            if (i7 != i8) {
                ((ViewGroup.MarginLayoutParams) cpcVar).bottomMargin = i8;
                return true;
            }
        }
        return z2;
    }

    public final void ag() {
        removeCallbacks(this.h);
        removeCallbacks(this.u);
        ViewPropertyAnimator viewPropertyAnimator = this.aa;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    public final void ah() {
        fps wrapper;
        if (this.l == null) {
            this.l = (ContentFrameLayout) findViewById(R.id.action_bar_activity_content);
            this.q = (ActionBarContainer) findViewById(R.id.action_bar_container);
            KeyEvent.Callback findViewById = findViewById(R.id.action_bar);
            if (findViewById instanceof fps) {
                wrapper = (fps) findViewById;
            } else {
                if (!(findViewById instanceof Toolbar)) {
                    throw new IllegalStateException("Can't make a decor toolbar out of ".concat(findViewById.getClass().getSimpleName()));
                }
                wrapper = ((Toolbar) findViewById).getWrapper();
            }
            this.r = wrapper;
        }
    }

    @Override // g.ept
    public final boolean ai(View view, View view2, int i, int i2) {
        return i2 == 0 && onStartNestedScroll(view, view2, i);
    }

    public final void aj(Menu menu, caf cafVar) {
        ah();
        fxu fxuVar = (fxu) this.r;
        Toolbar toolbar = fxuVar.h;
        if (fxuVar.j == null) {
            fxuVar.j = new esf(toolbar.getContext());
        }
        esf esfVar = fxuVar.j;
        esfVar.v = cafVar;
        ftn ftnVar = (ftn) menu;
        if (ftnVar == null && toolbar.f115ab == null) {
            return;
        }
        toolbar.bf();
        ftn ftnVar2 = toolbar.f115ab.f81a;
        if (ftnVar2 == ftnVar) {
            return;
        }
        if (ftnVar2 != null) {
            ftnVar2.av(toolbar.f120f);
            ftnVar2.av(toolbar.ak);
        }
        if (toolbar.ak == null) {
            toolbar.ak = new glz(toolbar);
        }
        esfVar.ac = true;
        if (ftnVar != null) {
            ftnVar.ap(esfVar, toolbar.m);
            ftnVar.ap(toolbar.ak, toolbar.m);
        } else {
            esfVar.f(toolbar.m, null);
            toolbar.ak.f(toolbar.m, null);
            esfVar.c();
            toolbar.ak.c();
        }
        toolbar.f115ab.setPopupTheme(toolbar.s);
        toolbar.f115ab.setPresenter(esfVar);
        toolbar.f120f = esfVar;
        toolbar.be();
    }

    @Override // g.ept
    public final void ak(View view, View view2, int i, int i2) {
        if (i2 == 0) {
            onNestedScrollAccepted(view, view2, i);
        }
    }

    @Override // g.ept
    public final void al(int i, View view) {
        if (i == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // g.ept
    public final void am(View view, int i, int i2, int[] iArr, int i3) {
    }

    public final void an(Context context) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(f74b);
        this.t = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        this.ae = drawable;
        setWillNotDraw(drawable == null);
        obtainStyledAttributes.recycle();
        this.i = new OverScroller(context);
    }

    @Override // g.gcp
    public final void ao(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        aq(view, i, i2, i3, i4, i5);
    }

    public final void ap(int i) {
        ah();
        if (i == 2) {
            this.r.getClass();
        } else if (i == 5) {
            this.r.getClass();
        } else {
            if (i != 109) {
                return;
            }
            setOverlayMode(true);
        }
    }

    @Override // g.ept
    public final void aq(View view, int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            onNestedScroll(view, i, i2, i3, i4);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof cpc;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int i;
        super.draw(canvas);
        if (this.ae != null) {
            if (this.q.getVisibility() == 0) {
                i = (int) (this.q.getTranslationY() + this.q.getBottom() + 0.5f);
            } else {
                i = 0;
            }
            this.ae.setBounds(0, i, getWidth(), this.ae.getIntrinsicHeight() + i);
            this.ae.draw(canvas);
        }
    }

    @Override // android.view.View
    public final boolean fitSystemWindows(Rect rect) {
        return super.fitSystemWindows(rect);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new cpc(-1, -1);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new cpc(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new cpc(layoutParams);
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.q;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        aot aotVar = this.f76ab;
        return aotVar.f10587c | aotVar.f10586b;
    }

    public CharSequence getTitle() {
        ah();
        return ((fxu) this.r).h.getTitle();
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        ah();
        anp c2 = anp.c(this, windowInsets);
        boolean af = af(this.q, new Rect(c2.h(), c2.e(), c2.i(), c2.f()), false);
        WeakHashMap weakHashMap = goi.f18490c;
        Rect rect = this.ad;
        cd.j(this, c2, rect);
        int i = rect.left;
        int i2 = rect.top;
        int i3 = rect.right;
        int i4 = rect.bottom;
        dif difVar = c2.f10526b;
        anp q = difVar.q(i, i2, i3, i4);
        this.ac = q;
        boolean z = true;
        if (!this.s.equals(q)) {
            this.s = this.ac;
            af = true;
        }
        Rect rect2 = this.z;
        if (rect2.equals(rect)) {
            z = af;
        } else {
            rect2.set(rect);
        }
        if (z) {
            requestLayout();
        }
        return difVar.k().f10526b.e().f10526b.d().j();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        an(getContext());
        WeakHashMap weakHashMap = goi.f18490c;
        dzc.c(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ag();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                cpc cpcVar = (cpc) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = ((ViewGroup.MarginLayoutParams) cpcVar).leftMargin + paddingLeft;
                int i7 = ((ViewGroup.MarginLayoutParams) cpcVar).topMargin + paddingTop;
                childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0110  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onMeasure(int i, int i2) {
        int measuredHeight;
        ah();
        measureChildWithMargins(this.q, i, 0, i2, 0);
        cpc cpcVar = (cpc) this.q.getLayoutParams();
        int max = Math.max(0, this.q.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) cpcVar).leftMargin + ((ViewGroup.MarginLayoutParams) cpcVar).rightMargin);
        int max2 = Math.max(0, this.q.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) cpcVar).topMargin + ((ViewGroup.MarginLayoutParams) cpcVar).bottomMargin);
        int combineMeasuredStates = View.combineMeasuredStates(0, this.q.getMeasuredState());
        WeakHashMap weakHashMap = goi.f18490c;
        boolean z = (getWindowSystemUiVisibility() & 256) != 0;
        if (z) {
            measuredHeight = this.t;
            if (this.f77d && this.q.getTabContainer() != null) {
                measuredHeight += this.t;
            }
        } else {
            measuredHeight = this.q.getVisibility() != 8 ? this.q.getMeasuredHeight() : 0;
        }
        Rect rect = this.ad;
        Rect rect2 = this.j;
        rect2.set(rect);
        this.p = this.ac;
        if (!this.f80g && !z) {
            ffx ffxVar = this.w;
            anp anpVar = f73a;
            Rect rect3 = this.f78e;
            cd.j(ffxVar, anpVar, rect3);
            if (!rect3.equals(f75c)) {
                rect2.top += measuredHeight;
                rect2.bottom = rect2.bottom;
                this.p = this.p.f10526b.q(0, measuredHeight, 0, 0);
                af(this.l, rect2, true);
                if (!this.f79f.equals(this.p)) {
                    anp anpVar2 = this.p;
                    this.f79f = anpVar2;
                    goi.v(this.l, anpVar2);
                }
                measureChildWithMargins(this.l, i, 0, i2, 0);
                cpc cpcVar2 = (cpc) this.l.getLayoutParams();
                int max3 = Math.max(max, this.l.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) cpcVar2).leftMargin + ((ViewGroup.MarginLayoutParams) cpcVar2).rightMargin);
                int max4 = Math.max(max2, this.l.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) cpcVar2).topMargin + ((ViewGroup.MarginLayoutParams) cpcVar2).bottomMargin);
                int combineMeasuredStates2 = View.combineMeasuredStates(combineMeasuredStates, this.l.getMeasuredState());
                setMeasuredDimension(View.resolveSizeAndState(Math.max(getPaddingRight() + getPaddingLeft() + max3, getSuggestedMinimumWidth()), i, combineMeasuredStates2), View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + max4, getSuggestedMinimumHeight()), i2, combineMeasuredStates2 << 16));
            }
        }
        oi g2 = oi.g(this.p.h(), this.p.e() + measuredHeight, this.p.i(), this.p.f());
        anp anpVar3 = this.p;
        int i3 = Build.VERSION.SDK_INT;
        ecs bruVar = i3 >= 34 ? new bru(anpVar3) : i3 >= 31 ? new ghh(anpVar3) : i3 >= 30 ? new yd(anpVar3) : i3 >= 29 ? new bbb(anpVar3) : new gjd(anpVar3);
        bruVar.h(g2);
        this.p = bruVar.g();
        af(this.l, rect2, true);
        if (!this.f79f.equals(this.p)) {
        }
        measureChildWithMargins(this.l, i, 0, i2, 0);
        cpc cpcVar22 = (cpc) this.l.getLayoutParams();
        int max32 = Math.max(max, this.l.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) cpcVar22).leftMargin + ((ViewGroup.MarginLayoutParams) cpcVar22).rightMargin);
        int max42 = Math.max(max2, this.l.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) cpcVar22).topMargin + ((ViewGroup.MarginLayoutParams) cpcVar22).bottomMargin);
        int combineMeasuredStates22 = View.combineMeasuredStates(combineMeasuredStates, this.l.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(getPaddingRight() + getPaddingLeft() + max32, getSuggestedMinimumWidth()), i, combineMeasuredStates22), View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + max42, getSuggestedMinimumHeight()), i2, combineMeasuredStates22 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f2, float f3, boolean z) {
        if (!this.x || !z) {
            return false;
        }
        this.i.fling(0, 0, 0, (int) f3, 0, 0, Integer.MIN_VALUE, he.UNDEFINED_ITEM_ID);
        if (this.i.getFinalY() > this.q.getHeight()) {
            ag();
            this.u.run();
        } else {
            ag();
            this.h.run();
        }
        this.k = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f2, float f3) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        int i5 = this.n + i2;
        this.n = i5;
        setActionBarHideOffset(i5);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i) {
        hp hpVar;
        wj wjVar;
        this.f76ab.f10586b = i;
        this.n = getActionBarHideOffset();
        ag();
        frm frmVar = this.o;
        if (frmVar == null || (wjVar = (hpVar = (hp) frmVar).o) == null) {
            return;
        }
        wjVar.g();
        hpVar.o = null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i) {
        if ((i & 2) == 0 || this.q.getVisibility() != 0) {
            return false;
        }
        return this.x;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        if (!this.x || this.k) {
            return;
        }
        if (this.n <= this.q.getHeight()) {
            ag();
            postDelayed(this.h, 600L);
        } else {
            ag();
            postDelayed(this.u, 600L);
        }
    }

    @Override // android.view.View
    public final void onWindowSystemUiVisibilityChanged(int i) {
        super.onWindowSystemUiVisibilityChanged(i);
        ah();
        int i2 = this.m ^ i;
        this.m = i;
        boolean z = (i & 4) == 0;
        boolean z2 = (i & 256) != 0;
        frm frmVar = this.o;
        if (frmVar != null) {
            hp hpVar = (hp) frmVar;
            hpVar.f19385e = !z2;
            if (z || !z2) {
                if (hpVar.p) {
                    hpVar.p = false;
                    hpVar.af(true);
                }
            } else if (!hpVar.p) {
                hpVar.p = true;
                hpVar.af(true);
            }
        }
        if ((i2 & 256) == 0 || this.o == null) {
            return;
        }
        WeakHashMap weakHashMap = goi.f18490c;
        dzc.c(this);
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.y = i;
        frm frmVar = this.o;
        if (frmVar != null) {
            ((hp) frmVar).f19386f = i;
        }
    }

    public void setActionBarHideOffset(int i) {
        ag();
        this.q.setTranslationY(-Math.max(0, Math.min(i, this.q.getHeight())));
    }

    public void setActionBarVisibilityCallback(frm frmVar) {
        this.o = frmVar;
        if (getWindowToken() != null) {
            ((hp) this.o).f19386f = this.y;
            int i = this.m;
            if (i != 0) {
                onWindowSystemUiVisibilityChanged(i);
                WeakHashMap weakHashMap = goi.f18490c;
                dzc.c(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z) {
        this.f77d = z;
    }

    public void setHideOnContentScrollEnabled(boolean z) {
        if (z != this.x) {
            this.x = z;
            if (z) {
                return;
            }
            ag();
            setActionBarHideOffset(0);
        }
    }

    public void setIcon(int i) {
        ah();
        fxu fxuVar = (fxu) this.r;
        fxuVar.f17595e = i != 0 ? fso.ai(fxuVar.h.getContext(), i) : null;
        fxuVar.p();
    }

    public void setIcon(Drawable drawable) {
        ah();
        fxu fxuVar = (fxu) this.r;
        fxuVar.f17595e = drawable;
        fxuVar.p();
    }

    public void setLogo(int i) {
        ah();
        fxu fxuVar = (fxu) this.r;
        fxuVar.f17597g = i != 0 ? fso.ai(fxuVar.h.getContext(), i) : null;
        fxuVar.p();
    }

    public void setOverlayMode(boolean z) {
        this.f80g = z;
    }

    public void setShowingForActionMode(boolean z) {
    }

    public void setUiOptions(int i) {
    }

    @Override // g.eaz
    public void setWindowCallback(Window.Callback callback) {
        ah();
        ((fxu) this.r).f17592b = callback;
    }

    @Override // g.eaz
    public void setWindowTitle(CharSequence charSequence) {
        ah();
        fxu fxuVar = (fxu) this.r;
        if (fxuVar.o) {
            return;
        }
        Toolbar toolbar = fxuVar.h;
        fxuVar.f17591a = charSequence;
        if ((fxuVar.l & 8) != 0) {
            toolbar.setTitle(charSequence);
            if (fxuVar.o) {
                goi.r(toolbar.getRootView(), charSequence);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }
}
