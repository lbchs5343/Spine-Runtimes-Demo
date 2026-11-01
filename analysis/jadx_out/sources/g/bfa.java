package g;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes.dex */
public abstract class bfa extends ViewGroup {
    public int aa;

    /* renamed from: ab, reason: collision with root package name */
    public boolean f11431ab;
    public final Rect ac;
    public float ad;
    public gbe ae;
    public bli af;
    public int ag;
    public int ah;
    public final int ai;
    public int aj;
    public boolean ak;
    public ArrayList al;
    public float am;
    public int an;
    public Scroller ao;
    public final ArrayList ap;
    public int aq;
    public boolean ar;
    public final EdgeEffect as;
    public final int at;
    public doz au;
    public boolean av;
    public int aw;
    public final int ax;
    public float ay;
    public Drawable az;
    public int ba;
    public VelocityTracker bb;

    /* renamed from: e, reason: collision with root package name */
    public Parcelable f11432e;

    /* renamed from: f, reason: collision with root package name */
    public ArrayList f11433f;

    /* renamed from: g, reason: collision with root package name */
    public int f11434g;
    public float h;
    public boolean i;
    public int j;
    public final EdgeEffect k;
    public int l;
    public final int m;
    public int n;
    public final dyn o;
    public int p;
    public final int q;
    public float r;
    public boolean s;
    public boolean t;
    public float u;
    public final buo v;
    public int w;
    public final int x;
    public bva y;
    public boolean z;

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f11430d = {R.attr.layout_gravity};

    /* renamed from: a, reason: collision with root package name */
    public static final aqn f11427a = new aqn(14);

    /* renamed from: c, reason: collision with root package name */
    public static final bur f11429c = new bur(2);

    /* renamed from: b, reason: collision with root package name */
    public static final aqn f11428b = new aqn(16);

    public bfa(Context context) {
        super(context);
        this.ap = new ArrayList();
        this.v = new buo();
        this.ac = new Rect();
        this.l = -1;
        this.h = -3.4028235E38f;
        this.ay = Float.MAX_VALUE;
        this.n = 1;
        this.aa = -1;
        this.av = true;
        this.o = new dyn(4, this);
        this.an = 0;
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context2 = getContext();
        this.ao = new Scroller(context2, f11429c);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context2);
        float f2 = context2.getResources().getDisplayMetrics().density;
        this.at = viewConfiguration.getScaledPagingTouchSlop();
        this.ax = (int) (400.0f * f2);
        this.ai = viewConfiguration.getScaledMaximumFlingVelocity();
        this.k = new EdgeEffect(context2);
        this.as = new EdgeEffect(context2);
        this.x = (int) (25.0f * f2);
        this.q = (int) (2.0f * f2);
        this.m = (int) (f2 * 16.0f);
    }

    public static boolean bc(View view, boolean z, int i, int i2, int i3) {
        int i4;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i5 = i2 + scrollX;
                if (i5 >= childAt.getLeft() && i5 < childAt.getRight() && (i4 = i3 + scrollY) >= childAt.getTop() && i4 < childAt.getBottom() && bc(childAt, true, i, i5 - childAt.getLeft(), i4 - childAt.getTop())) {
                    break;
                }
            }
        }
        return z && view.canScrollHorizontally(-i);
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.i != z) {
            this.i = z;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList arrayList, int i, int i2) {
        buo bj;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 0 && (bj = bj(childAt)) != null && bj.f12236d == this.ba) {
                    childAt.addFocusables(arrayList, i, i2);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if ((i2 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addTouchables(ArrayList arrayList) {
        buo bj;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (bj = bj(childAt)) != null && bj.f12236d == this.ba) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateDefaultLayoutParams();
        }
        fnx fnxVar = (fnx) layoutParams;
        boolean z = fnxVar.f17113c | (view.getClass().getAnnotation(gzu.class) != null);
        fnxVar.f17113c = z;
        if (!this.f11431ab) {
            super.addView(view, i, layoutParams);
        } else {
            if (z) {
                throw new IllegalStateException("Cannot add pager decor view during layout");
            }
            fnxVar.f17111a = true;
            addViewInLayout(view, i, layoutParams);
        }
    }

    public final void bd(int i, int i2, int i3, int i4) {
        if (i2 > 0 && !this.ap.isEmpty()) {
            if (!this.ao.isFinished()) {
                this.ao.setFinalX(getCurrentItem() * getClientWidth());
                return;
            } else {
                scrollTo((int) ((getScrollX() / (((i2 - getPaddingLeft()) - getPaddingRight()) + i4)) * (((i - getPaddingLeft()) - getPaddingRight()) + i3)), getScrollY());
                return;
            }
        }
        buo bk = bk(this.ba);
        int min = (int) ((bk != null ? Math.min(bk.f12234b, this.ay) : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) * ((i - getPaddingLeft()) - getPaddingRight()));
        if (min != getScrollX()) {
            bf(false);
            scrollTo(min, getScrollY());
        }
    }

    public final void be(int i, boolean z, boolean z2, int i2) {
        gbe gbeVar = this.ae;
        if (gbeVar == null || gbeVar.c() <= 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        ArrayList arrayList = this.ap;
        if (!z2 && this.ba == i && arrayList.size() != 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (i < 0) {
            i = 0;
        } else if (i >= this.ae.c()) {
            i = this.ae.c() - 1;
        }
        int i3 = this.n;
        int i4 = this.ba;
        if (i > i4 + i3 || i < i4 - i3) {
            for (int i5 = 0; i5 < arrayList.size(); i5++) {
                ((buo) arrayList.get(i5)).f12237e = true;
            }
        }
        boolean z3 = this.ba != i;
        if (!this.av) {
            bo(i);
            bt(i, z, i2, z3);
        } else {
            this.ba = i;
            if (z3) {
                bx(i);
            }
            requestLayout();
        }
    }

    public final void bf(boolean z) {
        boolean z2 = this.an == 2;
        if (z2) {
            setScrollingCacheEnabled(false);
            if (!this.ao.isFinished()) {
                this.ao.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.ao.getCurrX();
                int currY = this.ao.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        bn(currX);
                    }
                }
            }
        }
        this.z = false;
        int i = 0;
        while (true) {
            ArrayList arrayList = this.ap;
            if (i >= arrayList.size()) {
                break;
            }
            buo buoVar = (buo) arrayList.get(i);
            if (buoVar.f12237e) {
                buoVar.f12237e = false;
                z2 = true;
            }
            i++;
        }
        if (z2) {
            dyn dynVar = this.o;
            if (z) {
                postOnAnimation(dynVar);
            } else {
                dynVar.run();
            }
        }
    }

    public final void bg(bli bliVar) {
        boolean z = bliVar != null;
        boolean z2 = z != (this.af != null);
        this.af = bliVar;
        setChildrenDrawingOrderEnabled(z);
        if (z) {
            this.j = 1;
            this.aw = 2;
        } else {
            this.j = 0;
        }
        if (z2) {
            bm();
        }
    }

    public final buo bh(int i, int i2) {
        buo buoVar = new buo();
        buoVar.f12236d = i;
        buoVar.f12235c = this.ae.d(this, i);
        buoVar.f12233a = this.ae.b();
        ArrayList arrayList = this.ap;
        if (i2 < 0 || i2 >= arrayList.size()) {
            arrayList.add(buoVar);
            return buoVar;
        }
        arrayList.add(i2, buoVar);
        return buoVar;
    }

    public final void bi(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.aa) {
            int i = actionIndex == 0 ? 1 : 0;
            this.am = motionEvent.getX(i);
            this.aa = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.bb;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    public final buo bj(View view) {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.ap;
            if (i >= arrayList.size()) {
                return null;
            }
            buo buoVar = (buo) arrayList.get(i);
            gbe gbeVar = this.ae;
            View view2 = buoVar.f12235c;
            ((ig) gbeVar).getClass();
            if (view == view2) {
                return buoVar;
            }
            i++;
        }
    }

    public final buo bk(int i) {
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.ap;
            if (i2 >= arrayList.size()) {
                return null;
            }
            buo buoVar = (buo) arrayList.get(i2);
            if (buoVar.f12236d == i) {
                return buoVar;
            }
            i2++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00b6, code lost:
    
        if (r8 != 2) goto L50;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00d0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean bl(int i) {
        View findNextFocus;
        boolean z;
        int i2;
        gbe gbeVar;
        View findFocus = findFocus();
        if (findFocus != this) {
            if (findFocus != null) {
                for (ViewParent parent = findFocus.getParent(); parent instanceof ViewGroup; parent = parent.getParent()) {
                    if (parent == this) {
                        break;
                    }
                }
                StringBuilder sb = new StringBuilder();
                sb.append(findFocus.getClass().getSimpleName());
                for (ViewParent parent2 = findFocus.getParent(); parent2 instanceof ViewGroup; parent2 = parent2.getParent()) {
                    sb.append(" => ");
                    sb.append(parent2.getClass().getSimpleName());
                }
                Log.e("ViewPager", "arrowScroll tried to find focus based on non-child current focused view " + sb.toString());
            }
            findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, i);
            boolean z2 = true;
            z = false;
            if (findNextFocus == null && findNextFocus != findFocus) {
                Rect rect = this.ac;
                if (i == 17) {
                    int i3 = bw(rect, findNextFocus).left;
                    int i4 = bw(rect, findFocus).left;
                    if (findFocus == null || i3 < i4) {
                        z = findNextFocus.requestFocus();
                    } else {
                        int i5 = this.ba;
                        if (i5 > 0) {
                            br(i5 - 1, true);
                            z = z2;
                        }
                        z2 = false;
                        z = z2;
                    }
                } else if (i == 66) {
                    int i6 = bw(rect, findNextFocus).left;
                    int i7 = bw(rect, findFocus).left;
                    if (findFocus == null || i6 > i7) {
                        z = findNextFocus.requestFocus();
                    }
                    gbeVar = this.ae;
                    if (gbeVar != null) {
                        br(this.ba + 1, true);
                        z = z2;
                    }
                    z2 = false;
                    z = z2;
                }
            } else if (i != 17 || i == 1) {
                i2 = this.ba;
                if (i2 > 0) {
                    br(i2 - 1, true);
                    z = z2;
                }
                z2 = false;
                z = z2;
            } else {
                if (i != 66) {
                }
                gbeVar = this.ae;
                if (gbeVar != null && this.ba < gbeVar.c() - 1) {
                    br(this.ba + 1, true);
                    z = z2;
                }
                z2 = false;
                z = z2;
            }
            if (z) {
                playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i));
            }
            return z;
        }
        findFocus = null;
        findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, i);
        boolean z22 = true;
        z = false;
        if (findNextFocus == null) {
        }
        if (i != 17) {
        }
        i2 = this.ba;
        if (i2 > 0) {
        }
        z22 = false;
        z = z22;
        if (z) {
        }
        return z;
    }

    public final void bm() {
        bo(this.ba);
    }

    public final boolean bn(int i) {
        if (this.ap.size() == 0) {
            if (!this.av) {
                this.t = false;
                by(0, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0);
                if (!this.t) {
                    throw new IllegalStateException("onPageScrolled did not call superclass implementation");
                }
            }
            return false;
        }
        buo bu = bu();
        int clientWidth = getClientWidth();
        int i2 = this.w;
        int i3 = clientWidth + i2;
        float f2 = clientWidth;
        int i4 = bu.f12236d;
        float f3 = ((i / f2) - bu.f12234b) / (bu.f12233a + (i2 / f2));
        this.t = false;
        by(i4, f3, (int) (i3 * f3));
        if (this.t) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x005a, code lost:
    
        if (r10 == r11) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0300  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void bo(int i) {
        buo buoVar;
        String hexString;
        ArrayList arrayList;
        buo buoVar2;
        float f2;
        buo buoVar3;
        int i2;
        buo bj;
        int i3;
        int i4;
        buo buoVar4;
        buo buoVar5;
        buo buoVar6;
        int i5 = this.ba;
        if (i5 != i) {
            buoVar = bk(i5);
            this.ba = i;
        } else {
            buoVar = null;
        }
        if (this.ae == null) {
            bp();
            return;
        }
        if (this.z) {
            bp();
            return;
        }
        if (getWindowToken() == null) {
            return;
        }
        int i6 = this.n;
        int max = Math.max(0, this.ba - i6);
        int c2 = this.ae.c();
        int min = Math.min(c2 - 1, this.ba + i6);
        if (c2 != this.ah) {
            try {
                hexString = getResources().getResourceName(getId());
            } catch (Resources.NotFoundException unused) {
                hexString = Integer.toHexString(getId());
            }
            throw new IllegalStateException("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: " + this.ah + ", found: " + c2 + " Pager id: " + hexString + " Pager class: " + getClass() + " Problematic adapter: " + this.ae.getClass());
        }
        int i7 = 0;
        while (true) {
            arrayList = this.ap;
            if (i7 >= arrayList.size()) {
                break;
            }
            buoVar2 = (buo) arrayList.get(i7);
            int i8 = buoVar2.f12236d;
            int i9 = this.ba;
            if (i8 < i9) {
                i7++;
            }
        }
        buoVar2 = null;
        if (buoVar2 == null && c2 > 0) {
            buoVar2 = bh(this.ba, i7);
        }
        if (buoVar2 != null) {
            int i10 = i7 - 1;
            buo buoVar7 = i10 >= 0 ? (buo) arrayList.get(i10) : null;
            int clientWidth = getClientWidth();
            float paddingLeft = clientWidth <= 0 ? TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT : (getPaddingLeft() / clientWidth) + (2.0f - buoVar2.f12233a);
            float f3 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            for (int i11 = this.ba - 1; i11 >= 0; i11--) {
                if (f3 >= paddingLeft && i11 < max) {
                    if (buoVar7 == null) {
                        break;
                    }
                    if (i11 == buoVar7.f12236d && !buoVar7.f12237e) {
                        arrayList.remove(i10);
                        gbe gbeVar = this.ae;
                        View view = buoVar7.f12235c;
                        ((ig) gbeVar).getClass();
                        removeView(view);
                        i10--;
                        i7--;
                        if (i10 >= 0) {
                            buoVar6 = (buo) arrayList.get(i10);
                            buoVar7 = buoVar6;
                        }
                        buoVar6 = null;
                        buoVar7 = buoVar6;
                    }
                } else if (buoVar7 == null || i11 != buoVar7.f12236d) {
                    f3 += bh(i11, i10 + 1).f12233a;
                    i7++;
                    if (i10 >= 0) {
                        buoVar6 = (buo) arrayList.get(i10);
                        buoVar7 = buoVar6;
                    }
                    buoVar6 = null;
                    buoVar7 = buoVar6;
                } else {
                    f3 += buoVar7.f12233a;
                    i10--;
                    if (i10 >= 0) {
                        buoVar6 = (buo) arrayList.get(i10);
                        buoVar7 = buoVar6;
                    }
                    buoVar6 = null;
                    buoVar7 = buoVar6;
                }
            }
            f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            float f4 = buoVar2.f12233a;
            int i12 = i7 + 1;
            if (f4 < 2.0f) {
                buo buoVar8 = i12 < arrayList.size() ? (buo) arrayList.get(i12) : null;
                float paddingRight = clientWidth <= 0 ? TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT : (getPaddingRight() / clientWidth) + 2.0f;
                int i13 = i12;
                for (int i14 = this.ba + 1; i14 < c2; i14++) {
                    if (f4 >= paddingRight && i14 > min) {
                        if (buoVar8 == null) {
                            break;
                        }
                        if (i14 == buoVar8.f12236d && !buoVar8.f12237e) {
                            arrayList.remove(i13);
                            gbe gbeVar2 = this.ae;
                            View view2 = buoVar8.f12235c;
                            ((ig) gbeVar2).getClass();
                            removeView(view2);
                            if (i13 < arrayList.size()) {
                                buoVar8 = (buo) arrayList.get(i13);
                            }
                            buoVar8 = null;
                        }
                    } else if (buoVar8 == null || i14 != buoVar8.f12236d) {
                        buo bh = bh(i14, i13);
                        i13++;
                        f4 += bh.f12233a;
                        if (i13 < arrayList.size()) {
                            buoVar8 = (buo) arrayList.get(i13);
                        }
                        buoVar8 = null;
                    } else {
                        f4 += buoVar8.f12233a;
                        i13++;
                        if (i13 < arrayList.size()) {
                            buoVar8 = (buo) arrayList.get(i13);
                        }
                        buoVar8 = null;
                    }
                }
            }
            int c3 = this.ae.c();
            int clientWidth2 = getClientWidth();
            float f5 = clientWidth2 > 0 ? this.w / clientWidth2 : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            if (buoVar != null) {
                int i15 = buoVar.f12236d;
                int i16 = buoVar2.f12236d;
                if (i15 < i16) {
                    float f6 = buoVar.f12234b + buoVar.f12233a + f5;
                    int i17 = i15 + 1;
                    int i18 = 0;
                    while (i17 <= buoVar2.f12236d && i18 < arrayList.size()) {
                        Object obj = arrayList.get(i18);
                        while (true) {
                            buoVar5 = (buo) obj;
                            if (i17 <= buoVar5.f12236d || i18 >= arrayList.size() - 1) {
                                break;
                            }
                            i18++;
                            obj = arrayList.get(i18);
                        }
                        while (i17 < buoVar5.f12236d) {
                            f6 += this.ae.b() + f5;
                            i17++;
                        }
                        buoVar5.f12234b = f6;
                        f6 += buoVar5.f12233a + f5;
                        i17++;
                    }
                } else if (i15 > i16) {
                    int size = arrayList.size() - 1;
                    float f7 = buoVar.f12234b;
                    while (true) {
                        i15--;
                        if (i15 < buoVar2.f12236d || size < 0) {
                            break;
                        }
                        Object obj2 = arrayList.get(size);
                        while (true) {
                            buoVar4 = (buo) obj2;
                            if (i15 >= buoVar4.f12236d || size <= 0) {
                                break;
                            }
                            size--;
                            obj2 = arrayList.get(size);
                        }
                        while (i15 > buoVar4.f12236d) {
                            f7 -= this.ae.b() + f5;
                            i15--;
                        }
                        f7 -= buoVar4.f12233a + f5;
                        buoVar4.f12234b = f7;
                    }
                }
            }
            int size2 = arrayList.size();
            float f8 = buoVar2.f12234b;
            int i19 = buoVar2.f12236d;
            int i20 = i19 - 1;
            this.h = i19 == 0 ? f8 : -3.4028235E38f;
            int i21 = c3 - 1;
            this.ay = i19 == i21 ? (buoVar2.f12233a + f8) - 1.0f : Float.MAX_VALUE;
            int i22 = i7 - 1;
            while (i22 >= 0) {
                buo buoVar9 = (buo) arrayList.get(i22);
                while (true) {
                    i4 = buoVar9.f12236d;
                    if (i20 <= i4) {
                        break;
                    }
                    i20--;
                    f8 -= this.ae.b() + f5;
                }
                f8 -= buoVar9.f12233a + f5;
                buoVar9.f12234b = f8;
                if (i4 == 0) {
                    this.h = f8;
                }
                i22--;
                i20--;
            }
            float f9 = buoVar2.f12234b + buoVar2.f12233a + f5;
            int i23 = buoVar2.f12236d;
            while (true) {
                i23++;
                if (i12 >= size2) {
                    break;
                }
                buo buoVar10 = (buo) arrayList.get(i12);
                while (true) {
                    i3 = buoVar10.f12236d;
                    if (i23 >= i3) {
                        break;
                    }
                    i23++;
                    f9 += this.ae.b() + f5;
                }
                if (i3 == i21) {
                    this.ay = (buoVar10.f12233a + f9) - 1.0f;
                }
                buoVar10.f12234b = f9;
                f9 += buoVar10.f12233a + f5;
                i12++;
            }
        } else {
            f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        }
        int childCount = getChildCount();
        for (int i24 = 0; i24 < childCount; i24++) {
            View childAt = getChildAt(i24);
            fnx fnxVar = (fnx) childAt.getLayoutParams();
            fnxVar.f17114d = i24;
            if (!fnxVar.f17113c && fnxVar.f17116f == f2 && (bj = bj(childAt)) != null) {
                fnxVar.f17116f = bj.f12233a;
                fnxVar.f17112b = bj.f12236d;
            }
        }
        bp();
        if (hasFocus()) {
            View findFocus = findFocus();
            if (findFocus != null) {
                while (true) {
                    Object parent = findFocus.getParent();
                    if (parent == this) {
                        buoVar3 = bj(findFocus);
                        break;
                    } else if (parent == null || !(parent instanceof View)) {
                        break;
                    } else {
                        findFocus = (View) parent;
                    }
                }
                if (buoVar3 == null && buoVar3.f12236d == this.ba) {
                    return;
                }
                for (i2 = 0; i2 < getChildCount(); i2++) {
                    View childAt2 = getChildAt(i2);
                    buo bj2 = bj(childAt2);
                    if (bj2 != null && bj2.f12236d == this.ba && childAt2.requestFocus(2)) {
                        return;
                    }
                }
            }
            buoVar3 = null;
            if (buoVar3 == null) {
            }
            while (i2 < getChildCount()) {
            }
        }
    }

    public final void bp() {
        if (this.j != 0) {
            ArrayList arrayList = this.al;
            if (arrayList == null) {
                this.al = new ArrayList();
            } else {
                arrayList.clear();
            }
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                this.al.add(getChildAt(i));
            }
            Collections.sort(this.al, f11428b);
        }
    }

    public final void bq(ese eseVar) {
        if (this.f11433f == null) {
            this.f11433f = new ArrayList();
        }
        this.f11433f.add(eseVar);
    }

    public final void br(int i, boolean z) {
        this.z = false;
        be(i, z, false, 0);
    }

    public final void bs() {
        int c2 = this.ae.c();
        this.ah = c2;
        ArrayList arrayList = this.ap;
        boolean z = arrayList.size() < (this.n * 2) + 1 && arrayList.size() < c2;
        int i = this.ba;
        while (arrayList.size() > 0) {
            buo buoVar = (buo) arrayList.get(0);
            gbe gbeVar = this.ae;
            View view = buoVar.f12235c;
            gbeVar.getClass();
            arrayList.remove(0);
            gbe gbeVar2 = this.ae;
            View view2 = buoVar.f12235c;
            ((ig) gbeVar2).getClass();
            removeView(view2);
            int i2 = this.ba;
            if (i2 == buoVar.f12236d) {
                i = Math.max(0, Math.min(i2, c2 - 1));
            }
            z = true;
        }
        Collections.sort(arrayList, f11427a);
        if (z) {
            int childCount = getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                fnx fnxVar = (fnx) getChildAt(i3).getLayoutParams();
                if (!fnxVar.f17113c) {
                    fnxVar.f17116f = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                }
            }
            be(i, false, true, 0);
            requestLayout();
        }
    }

    public final void bt(int i, boolean z, int i2, boolean z2) {
        int scrollX;
        buo bk = bk(i);
        int max = bk != null ? (int) (Math.max(this.h, Math.min(bk.f12234b, this.ay)) * getClientWidth()) : 0;
        if (!z) {
            if (z2) {
                bx(i);
            }
            bf(false);
            scrollTo(max, 0);
            bn(max);
            return;
        }
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
        } else {
            Scroller scroller = this.ao;
            if (scroller == null || scroller.isFinished()) {
                scrollX = getScrollX();
            } else {
                scrollX = this.s ? this.ao.getCurrX() : this.ao.getStartX();
                this.ao.abortAnimation();
                setScrollingCacheEnabled(false);
            }
            int i3 = scrollX;
            int scrollY = getScrollY();
            int i4 = max - i3;
            int i5 = 0 - scrollY;
            if (i4 == 0 && i5 == 0) {
                bf(false);
                bm();
                setScrollState(0);
            } else {
                setScrollingCacheEnabled(true);
                setScrollState(2);
                int clientWidth = getClientWidth();
                int i6 = clientWidth / 2;
                float f2 = clientWidth;
                float f3 = i6;
                float sin = (((float) Math.sin((Math.min(1.0f, (Math.abs(i4) * 1.0f) / f2) - 0.5f) * 0.47123894f)) * f3) + f3;
                int abs = Math.abs(i2);
                int min = Math.min(abs > 0 ? Math.round(Math.abs(sin / abs) * 1000.0f) * 4 : (int) (((Math.abs(i4) / ((this.ae.b() * f2) + this.w)) + 1.0f) * 100.0f), 600);
                this.s = false;
                this.ao.startScroll(i3, scrollY, i4, i5, min);
                postInvalidateOnAnimation();
            }
        }
        if (z2) {
            bx(i);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0071, code lost:
    
        return r7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final buo bu() {
        buo buoVar;
        int i;
        int clientWidth = getClientWidth();
        float f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        float f3 = clientWidth > 0 ? this.w / clientWidth : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        buo buoVar2 = null;
        float f4 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        int i2 = -1;
        int i3 = 0;
        boolean z = true;
        while (true) {
            ArrayList arrayList = this.ap;
            if (i3 >= arrayList.size()) {
                break;
            }
            buo buoVar3 = (buo) arrayList.get(i3);
            if (z || buoVar3.f12236d == (i = i2 + 1)) {
                buoVar = buoVar3;
            } else {
                float f5 = f2 + f4 + f3;
                buo buoVar4 = this.v;
                buoVar4.f12234b = f5;
                buoVar4.f12236d = i;
                buoVar4.f12233a = this.ae.b();
                i3--;
                buoVar = buoVar4;
            }
            f2 = buoVar.f12234b;
            float f6 = buoVar.f12233a + f2 + f3;
            if (!z && scrollX < f2) {
                break;
            }
            if (scrollX < f6 || i3 == arrayList.size() - 1) {
                break;
            }
            int i4 = buoVar.f12236d;
            float f7 = buoVar.f12233a;
            i3++;
            buo buoVar5 = buoVar;
            i2 = i4;
            f4 = f7;
            buoVar2 = buoVar5;
            z = false;
        }
        return buoVar;
    }

    public final boolean bv(float f2) {
        boolean z;
        boolean z2;
        float f3 = this.am - f2;
        this.am = f2;
        float scrollX = getScrollX() + f3;
        float clientWidth = getClientWidth();
        float f4 = this.h * clientWidth;
        float f5 = this.ay * clientWidth;
        ArrayList arrayList = this.ap;
        boolean z3 = false;
        buo buoVar = (buo) arrayList.get(0);
        buo buoVar2 = (buo) arrayList.get(arrayList.size() - 1);
        if (buoVar.f12236d != 0) {
            f4 = buoVar.f12234b * clientWidth;
            z = false;
        } else {
            z = true;
        }
        if (buoVar2.f12236d != this.ae.c() - 1) {
            f5 = buoVar2.f12234b * clientWidth;
            z2 = false;
        } else {
            z2 = true;
        }
        if (scrollX < f4) {
            if (z) {
                this.k.onPull(Math.abs(f4 - scrollX) / clientWidth);
                z3 = true;
            }
            scrollX = f4;
        } else if (scrollX > f5) {
            if (z2) {
                this.as.onPull(Math.abs(scrollX - f5) / clientWidth);
                z3 = true;
            }
            scrollX = f5;
        }
        int i = (int) scrollX;
        this.am = (scrollX - i) + this.am;
        scrollTo(i, getScrollY());
        bn(i);
        return z3;
    }

    public final Rect bw(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left = viewGroup.getLeft() + rect.left;
            rect.right = viewGroup.getRight() + rect.right;
            rect.top = viewGroup.getTop() + rect.top;
            rect.bottom = viewGroup.getBottom() + rect.bottom;
            parent = viewGroup.getParent();
        }
        return rect;
    }

    public final void bx(int i) {
        doz dozVar = this.au;
        if (dozVar != null) {
            dozVar.ia(i);
        }
        ArrayList arrayList = this.f11433f;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                doz dozVar2 = (doz) this.f11433f.get(i2);
                if (dozVar2 != null) {
                    dozVar2.ia(i);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void by(int i, float f2, int i2) {
        int max;
        int i3;
        int left;
        if (this.f11434g > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width = getWidth();
            int childCount = getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                fnx fnxVar = (fnx) childAt.getLayoutParams();
                if (fnxVar.f17113c) {
                    int i5 = fnxVar.f17115e & 7;
                    if (i5 != 1) {
                        if (i5 == 3) {
                            i3 = childAt.getWidth() + paddingLeft;
                        } else if (i5 != 5) {
                            i3 = paddingLeft;
                        } else {
                            max = (width - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                        }
                        left = (paddingLeft + scrollX) - childAt.getLeft();
                        if (left != 0) {
                            childAt.offsetLeftAndRight(left);
                        }
                        paddingLeft = i3;
                    } else {
                        max = Math.max((width - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    }
                    int i6 = max;
                    i3 = paddingLeft;
                    paddingLeft = i6;
                    left = (paddingLeft + scrollX) - childAt.getLeft();
                    if (left != 0) {
                    }
                    paddingLeft = i3;
                }
            }
        }
        doz dozVar = this.au;
        if (dozVar != null) {
            dozVar.dq(i, f2, i2);
        }
        ArrayList arrayList = this.f11433f;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i7 = 0; i7 < size; i7++) {
                doz dozVar2 = (doz) this.f11433f.get(i7);
                if (dozVar2 != null) {
                    dozVar2.dq(i, f2, i2);
                }
            }
        }
        if (this.af != null) {
            int scrollX2 = getScrollX();
            int childCount2 = getChildCount();
            for (int i8 = 0; i8 < childCount2; i8++) {
                View childAt2 = getChildAt(i8);
                if (!((fnx) childAt2.getLayoutParams()).f17113c) {
                    float left2 = (childAt2.getLeft() - scrollX2) / getClientWidth();
                    this.af.getClass();
                    float f3 = ((left2 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? 0.19999999f : -0.19999999f) * left2) + 1.0f;
                    float f4 = (left2 * (left2 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? 0.5f : -0.5f)) + 1.0f;
                    if (left2 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        childAt2.setPivotX(childAt2.getWidth());
                        childAt2.setPivotY(childAt2.getHeight() / 2);
                    } else {
                        childAt2.setPivotX(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                        childAt2.setPivotY(childAt2.getHeight() / 2);
                    }
                    childAt2.setScaleX(f3);
                    childAt2.setScaleY(f3);
                    childAt2.setAlpha(Math.abs(f4));
                }
            }
        }
        this.t = true;
    }

    public final boolean bz() {
        this.aa = -1;
        this.ar = false;
        this.ak = false;
        VelocityTracker velocityTracker = this.bb;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.bb = null;
        }
        this.k.onRelease();
        this.as.onRelease();
        return this.k.isFinished() || this.as.isFinished();
    }

    @Override // android.view.View
    public final boolean canScrollHorizontally(int i) {
        if (this.ae == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        return i < 0 ? scrollX > ((int) (((float) clientWidth) * this.h)) : i > 0 && scrollX < ((int) (((float) clientWidth) * this.ay));
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof fnx) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public final void computeScroll() {
        this.s = true;
        if (this.ao.isFinished() || !this.ao.computeScrollOffset()) {
            bf(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.ao.getCurrX();
        int currY = this.ao.getCurrY();
        if (scrollX != currX || scrollY != currY) {
            scrollTo(currX, currY);
            if (!bn(currX)) {
                this.ao.abortAnimation();
                scrollTo(0, currY);
            }
        }
        postInvalidateOnAnimation();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0072 A[RETURN] */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean z;
        if (!super.dispatchKeyEvent(keyEvent)) {
            if (keyEvent.getAction() == 0) {
                int keyCode = keyEvent.getKeyCode();
                if (keyCode != 21) {
                    if (keyCode != 22) {
                        if (keyCode == 61) {
                            if (keyEvent.hasNoModifiers()) {
                                z = bl(2);
                            } else if (keyEvent.hasModifiers(1)) {
                                z = bl(1);
                            }
                            if (z) {
                                return false;
                            }
                        }
                    } else if (keyEvent.hasModifiers(2)) {
                        gbe gbeVar = this.ae;
                        if (gbeVar != null && this.ba < gbeVar.c() - 1) {
                            br(this.ba + 1, true);
                            z = true;
                            if (z) {
                            }
                        }
                    } else {
                        z = bl(66);
                        if (z) {
                        }
                    }
                } else if (keyEvent.hasModifiers(2)) {
                    int i = this.ba;
                    if (i > 0) {
                        br(i - 1, true);
                        z = true;
                        if (z) {
                        }
                    }
                } else {
                    z = bl(17);
                    if (z) {
                    }
                }
            }
            z = false;
            if (z) {
            }
        }
        return true;
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        buo bj;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (bj = bj(childAt)) != null && bj.f12236d == this.ba && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        gbe gbeVar;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean z = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && (gbeVar = this.ae) != null && gbeVar.c() > 1)) {
            if (!this.k.isFinished()) {
                int save = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate(getPaddingTop() + (-height), this.h * width);
                this.k.setSize(height, width);
                z = this.k.draw(canvas);
                canvas.restoreToCount(save);
            }
            if (!this.as.isFinished()) {
                int save2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.ay + 1.0f)) * width2);
                this.as.setSize(height2, width2);
                z |= this.as.draw(canvas);
                canvas.restoreToCount(save2);
            }
        } else {
            this.k.finish();
            this.as.finish();
        }
        if (z) {
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.az;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        fnx fnxVar = new fnx(-1, -1);
        fnxVar.f17116f = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        return fnxVar;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        fnx fnxVar = new fnx(context, attributeSet);
        fnxVar.f17116f = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f11430d);
        fnxVar.f17115e = obtainStyledAttributes.getInteger(0, 48);
        obtainStyledAttributes.recycle();
        return fnxVar;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public gbe getAdapter() {
        return this.ae;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i, int i2) {
        if (this.j == 2) {
            i2 = (i - 1) - i2;
        }
        return ((fnx) ((View) this.al.get(i2)).getLayoutParams()).f17114d;
    }

    public int getCurrentItem() {
        return this.ba;
    }

    public int getOffscreenPageLimit() {
        return this.n;
    }

    public int getPageMargin() {
        return this.w;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.av = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        removeCallbacks(this.o);
        Scroller scroller = this.ao;
        if (scroller != null && !scroller.isFinished()) {
            this.ao.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int i;
        float f2;
        ArrayList arrayList;
        int i2;
        super.onDraw(canvas);
        if (this.w <= 0 || this.az == null) {
            return;
        }
        ArrayList arrayList2 = this.ap;
        if (arrayList2.size() <= 0 || this.ae == null) {
            return;
        }
        int scrollX = getScrollX();
        float width = getWidth();
        float f3 = this.w / width;
        int i3 = 0;
        buo buoVar = (buo) arrayList2.get(0);
        float f4 = buoVar.f12234b;
        int size = arrayList2.size();
        int i4 = buoVar.f12236d;
        int i5 = ((buo) arrayList2.get(size - 1)).f12236d;
        while (i4 < i5) {
            while (true) {
                i = buoVar.f12236d;
                if (i4 <= i || i3 >= size) {
                    break;
                }
                i3++;
                buoVar = (buo) arrayList2.get(i3);
            }
            if (i4 == i) {
                float f5 = buoVar.f12234b + buoVar.f12233a;
                f2 = f5 * width;
                f4 = f5 + f3;
            } else {
                float b2 = this.ae.b();
                float f6 = (f4 + b2) * width;
                f4 = b2 + f3 + f4;
                f2 = f6;
            }
            if (this.w + f2 > scrollX) {
                arrayList = arrayList2;
                i2 = scrollX;
                this.az.setBounds(Math.round(f2), this.aq, Math.round(this.w + f2), this.p);
                this.az.draw(canvas);
            } else {
                arrayList = arrayList2;
                i2 = scrollX;
            }
            if (f2 > i2 + r3) {
                return;
            }
            i4++;
            arrayList2 = arrayList;
            scrollX = i2;
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int findPointerIndex;
        int action = motionEvent.getAction() & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
        if (action == 3 || action == 1) {
            bz();
            return false;
        }
        if (action != 0) {
            if (this.ar) {
                return true;
            }
            if (this.ak) {
                return false;
            }
        }
        if (action == 0) {
            float x = motionEvent.getX();
            this.r = x;
            this.am = x;
            float y = motionEvent.getY();
            this.ad = y;
            this.u = y;
            this.aa = motionEvent.getPointerId(0);
            this.ak = false;
            this.s = true;
            this.ao.computeScrollOffset();
            if (this.an != 2 || Math.abs(this.ao.getFinalX() - this.ao.getCurrX()) <= this.q) {
                bf(false);
                this.ar = false;
            } else {
                this.ao.abortAnimation();
                this.z = false;
                bm();
                this.ar = true;
                ViewParent parent = getParent();
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
                setScrollState(1);
            }
        } else if (action == 2) {
            int i = this.aa;
            if (i != -1 && (findPointerIndex = motionEvent.findPointerIndex(i)) != -1) {
                float x2 = motionEvent.getX(findPointerIndex);
                float f2 = x2 - this.am;
                float abs = Math.abs(f2);
                float y2 = motionEvent.getY(findPointerIndex);
                float abs2 = Math.abs(y2 - this.ad);
                if (f2 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    float f3 = this.am;
                    if ((f3 >= this.aj || f2 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) && ((f3 <= getWidth() - this.aj || f2 >= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) && bc(this, false, (int) f2, (int) x2, (int) y2))) {
                        this.am = x2;
                        this.u = y2;
                        this.ak = true;
                        return false;
                    }
                }
                float f4 = this.at;
                if (abs > f4 && abs * 0.5f > abs2) {
                    this.ar = true;
                    ViewParent parent2 = getParent();
                    if (parent2 != null) {
                        parent2.requestDisallowInterceptTouchEvent(true);
                    }
                    setScrollState(1);
                    float f5 = this.r;
                    float f6 = this.at;
                    this.am = f2 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? f5 + f6 : f5 - f6;
                    this.u = y2;
                    setScrollingCacheEnabled(true);
                } else if (abs2 > f4) {
                    this.ak = true;
                }
                if (this.ar && bv(x2)) {
                    postInvalidateOnAnimation();
                }
            }
        } else if (action == 6) {
            bi(motionEvent);
        }
        if (this.bb == null) {
            this.bb = VelocityTracker.obtain();
        }
        this.bb.addMovement(motionEvent);
        return this.ar;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0094  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        buo bj;
        int max;
        int i5;
        int max2;
        int i6;
        int childCount = getChildCount();
        int i7 = i3 - i;
        int i8 = i4 - i2;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int i9 = 0;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                fnx fnxVar = (fnx) childAt.getLayoutParams();
                if (fnxVar.f17113c) {
                    int i11 = fnxVar.f17115e;
                    int i12 = i11 & 7;
                    int i13 = i11 & 112;
                    if (i12 != 1) {
                        if (i12 == 3) {
                            i5 = childAt.getMeasuredWidth() + paddingLeft;
                        } else if (i12 != 5) {
                            i5 = paddingLeft;
                        } else {
                            max = (i7 - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                        }
                        if (i13 == 16) {
                            if (i13 == 48) {
                                i6 = childAt.getMeasuredHeight() + paddingTop;
                            } else if (i13 != 80) {
                                i6 = paddingTop;
                            } else {
                                max2 = (i8 - paddingBottom) - childAt.getMeasuredHeight();
                                paddingBottom += childAt.getMeasuredHeight();
                            }
                            int i14 = paddingLeft + scrollX;
                            childAt.layout(i14, paddingTop, childAt.getMeasuredWidth() + i14, childAt.getMeasuredHeight() + paddingTop);
                            i9++;
                            paddingTop = i6;
                            paddingLeft = i5;
                        } else {
                            max2 = Math.max((i8 - childAt.getMeasuredHeight()) / 2, paddingTop);
                        }
                        int i15 = max2;
                        i6 = paddingTop;
                        paddingTop = i15;
                        int i142 = paddingLeft + scrollX;
                        childAt.layout(i142, paddingTop, childAt.getMeasuredWidth() + i142, childAt.getMeasuredHeight() + paddingTop);
                        i9++;
                        paddingTop = i6;
                        paddingLeft = i5;
                    } else {
                        max = Math.max((i7 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    }
                    int i16 = max;
                    i5 = paddingLeft;
                    paddingLeft = i16;
                    if (i13 == 16) {
                    }
                    int i152 = max2;
                    i6 = paddingTop;
                    paddingTop = i152;
                    int i1422 = paddingLeft + scrollX;
                    childAt.layout(i1422, paddingTop, childAt.getMeasuredWidth() + i1422, childAt.getMeasuredHeight() + paddingTop);
                    i9++;
                    paddingTop = i6;
                    paddingLeft = i5;
                }
            }
        }
        int i17 = (i7 - paddingLeft) - paddingRight;
        for (int i18 = 0; i18 < childCount; i18++) {
            View childAt2 = getChildAt(i18);
            if (childAt2.getVisibility() != 8) {
                fnx fnxVar2 = (fnx) childAt2.getLayoutParams();
                if (!fnxVar2.f17113c && (bj = bj(childAt2)) != null) {
                    float f2 = i17;
                    int i19 = ((int) (bj.f12234b * f2)) + paddingLeft;
                    if (fnxVar2.f17111a) {
                        fnxVar2.f17111a = false;
                        childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (f2 * fnxVar2.f17116f), C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec((i8 - paddingTop) - paddingBottom, C.ENCODING_PCM_32BIT));
                    }
                    childAt2.layout(i19, paddingTop, childAt2.getMeasuredWidth() + i19, childAt2.getMeasuredHeight() + paddingTop);
                }
            }
        }
        this.aq = paddingTop;
        this.p = i8 - paddingBottom;
        this.f11434g = i9;
        if (this.av) {
            z2 = false;
            bt(this.ba, false, 0, false);
        } else {
            z2 = false;
        }
        this.av = z2;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0088  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onMeasure(int i, int i2) {
        fnx fnxVar;
        fnx fnxVar2;
        int i3;
        int i4;
        int i5;
        setMeasuredDimension(View.getDefaultSize(0, i), View.getDefaultSize(0, i2));
        int measuredWidth = getMeasuredWidth();
        this.aj = Math.min(measuredWidth / 10, this.m);
        int paddingLeft = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        int i6 = 0;
        while (true) {
            boolean z = true;
            int i7 = C.ENCODING_PCM_32BIT;
            if (i6 >= childCount) {
                break;
            }
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8 && (fnxVar2 = (fnx) childAt.getLayoutParams()) != null && fnxVar2.f17113c) {
                int i8 = fnxVar2.f17115e;
                int i9 = i8 & 7;
                int i10 = i8 & 112;
                boolean z2 = i10 == 48 || i10 == 80;
                if (i9 != 3 && i9 != 5) {
                    z = false;
                }
                int i11 = Integer.MIN_VALUE;
                if (z2) {
                    i11 = C.ENCODING_PCM_32BIT;
                } else if (z) {
                    i3 = C.ENCODING_PCM_32BIT;
                    i4 = ((ViewGroup.LayoutParams) fnxVar2).width;
                    if (i4 == -2) {
                        if (i4 == -1) {
                            i4 = paddingLeft;
                        }
                        i11 = C.ENCODING_PCM_32BIT;
                    } else {
                        i4 = paddingLeft;
                    }
                    i5 = ((ViewGroup.LayoutParams) fnxVar2).height;
                    if (i5 != -2) {
                        i5 = measuredHeight;
                        i7 = i3;
                    } else if (i5 == -1) {
                        i5 = measuredHeight;
                    }
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(i4, i11), View.MeasureSpec.makeMeasureSpec(i5, i7));
                    if (!z2) {
                        measuredHeight -= childAt.getMeasuredHeight();
                    } else if (z) {
                        paddingLeft -= childAt.getMeasuredWidth();
                    }
                }
                i3 = Integer.MIN_VALUE;
                i4 = ((ViewGroup.LayoutParams) fnxVar2).width;
                if (i4 == -2) {
                }
                i5 = ((ViewGroup.LayoutParams) fnxVar2).height;
                if (i5 != -2) {
                }
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i4, i11), View.MeasureSpec.makeMeasureSpec(i5, i7));
                if (!z2) {
                }
            }
            i6++;
        }
        View.MeasureSpec.makeMeasureSpec(paddingLeft, C.ENCODING_PCM_32BIT);
        this.ag = View.MeasureSpec.makeMeasureSpec(measuredHeight, C.ENCODING_PCM_32BIT);
        this.f11431ab = true;
        bm();
        this.f11431ab = false;
        int childCount2 = getChildCount();
        for (int i12 = 0; i12 < childCount2; i12++) {
            View childAt2 = getChildAt(i12);
            if (childAt2.getVisibility() != 8 && ((fnxVar = (fnx) childAt2.getLayoutParams()) == null || !fnxVar.f17113c)) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (paddingLeft * fnxVar.f17116f), C.ENCODING_PCM_32BIT), this.ag);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        int i3;
        int i4;
        buo bj;
        int childCount = getChildCount();
        if ((i & 2) != 0) {
            i3 = childCount;
            i2 = 0;
            i4 = 1;
        } else {
            i2 = childCount - 1;
            i3 = -1;
            i4 = -1;
        }
        while (i2 != i3) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (bj = bj(childAt)) != null && bj.f12236d == this.ba && childAt.requestFocus(i, rect)) {
                return true;
            }
            i2 += i4;
        }
        return false;
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof ebu)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ebu ebuVar = (ebu) parcelable;
        super.onRestoreInstanceState(ebuVar.dq());
        if (this.ae != null) {
            be(ebuVar.f15259d, false, true, 0);
        } else {
            this.l = ebuVar.f15259d;
            this.f11432e = ebuVar.ox;
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        ebu ebuVar = new ebu(super.onSaveInstanceState());
        ebuVar.f15259d = this.ba;
        gbe gbeVar = this.ae;
        if (gbeVar != null) {
            gbeVar.getClass();
            ebuVar.ox = null;
        }
        return ebuVar;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            int i5 = this.w;
            bd(i, i3, i5, i5);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        gbe gbeVar;
        int findPointerIndex;
        boolean z = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || (gbeVar = this.ae) == null || gbeVar.c() == 0) {
            return false;
        }
        if (this.bb == null) {
            this.bb = VelocityTracker.obtain();
        }
        this.bb.addMovement(motionEvent);
        int action = motionEvent.getAction() & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
        if (action == 0) {
            this.ao.abortAnimation();
            this.z = false;
            bm();
            float x = motionEvent.getX();
            this.r = x;
            this.am = x;
            float y = motionEvent.getY();
            this.ad = y;
            this.u = y;
            this.aa = motionEvent.getPointerId(0);
        } else if (action != 1) {
            if (action == 2) {
                if (!this.ar) {
                    int findPointerIndex2 = motionEvent.findPointerIndex(this.aa);
                    if (findPointerIndex2 == -1) {
                        z = bz();
                    } else {
                        float x2 = motionEvent.getX(findPointerIndex2);
                        float abs = Math.abs(x2 - this.am);
                        float y2 = motionEvent.getY(findPointerIndex2);
                        float abs2 = Math.abs(y2 - this.u);
                        if (abs > this.at && abs > abs2) {
                            this.ar = true;
                            ViewParent parent = getParent();
                            if (parent != null) {
                                parent.requestDisallowInterceptTouchEvent(true);
                            }
                            float f2 = this.r;
                            this.am = x2 - f2 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? f2 + this.at : f2 - this.at;
                            this.u = y2;
                            setScrollState(1);
                            setScrollingCacheEnabled(true);
                            ViewParent parent2 = getParent();
                            if (parent2 != null) {
                                parent2.requestDisallowInterceptTouchEvent(true);
                            }
                        }
                    }
                }
                if (this.ar && (findPointerIndex = motionEvent.findPointerIndex(this.aa)) != -1) {
                    z = bv(motionEvent.getX(findPointerIndex));
                }
            } else if (action != 3) {
                if (action == 5) {
                    int actionIndex = motionEvent.getActionIndex();
                    if (actionIndex != -1) {
                        this.am = motionEvent.getX(actionIndex);
                        this.aa = motionEvent.getPointerId(actionIndex);
                    }
                } else if (action == 6) {
                    bi(motionEvent);
                    int findPointerIndex3 = motionEvent.findPointerIndex(this.aa);
                    if (findPointerIndex3 != -1) {
                        this.am = motionEvent.getX(findPointerIndex3);
                    }
                }
            } else if (this.ar) {
                bt(this.ba, true, 0, false);
                z = bz();
            }
        } else if (this.ar) {
            VelocityTracker velocityTracker = this.bb;
            velocityTracker.computeCurrentVelocity(1000, this.ai);
            int xVelocity = (int) velocityTracker.getXVelocity(this.aa);
            this.z = true;
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            buo bu = bu();
            float f3 = clientWidth;
            int i = bu.f12236d;
            float f4 = ((scrollX / f3) - bu.f12234b) / (bu.f12233a + (this.w / f3));
            int findPointerIndex4 = motionEvent.findPointerIndex(this.aa);
            if (findPointerIndex4 != -1) {
                if (Math.abs((int) (motionEvent.getX(findPointerIndex4) - this.r)) <= this.x || Math.abs(xVelocity) <= this.ax) {
                    i += (int) (f4 + (i >= this.ba ? 0.4f : 0.6f));
                } else if (xVelocity <= 0) {
                    i++;
                }
                ArrayList arrayList = this.ap;
                if (arrayList.size() > 0) {
                    i = Math.max(((buo) arrayList.get(0)).f12236d, Math.min(i, ((buo) arrayList.get(arrayList.size() - 1)).f12236d));
                }
                be(i, true, true, xVelocity);
                z = bz();
            }
        }
        if (z) {
            postInvalidateOnAnimation();
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        if (this.f11431ab) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    public void setAdapter(gbe gbeVar) {
        ArrayList arrayList = this.ap;
        gbe gbeVar2 = this.ae;
        if (gbeVar2 != null) {
            synchronized (gbeVar2) {
                gbeVar2.f17852f = null;
            }
            for (int i = 0; i < arrayList.size(); i++) {
                buo buoVar = (buo) arrayList.get(i);
                gbe gbeVar3 = this.ae;
                int i2 = buoVar.f12236d;
                View view = buoVar.f12235c;
                ((ig) gbeVar3).getClass();
                removeView(view);
            }
            arrayList.clear();
            int i3 = 0;
            while (i3 < getChildCount()) {
                if (!((fnx) getChildAt(i3).getLayoutParams()).f17113c) {
                    removeViewAt(i3);
                    i3--;
                }
                i3++;
            }
            this.ba = 0;
            scrollTo(0, 0);
        }
        this.ae = gbeVar;
        this.ah = 0;
        if (gbeVar != null) {
            if (this.y == null) {
                this.y = new bva(1, this);
            }
            this.ae.g(this.y);
            this.z = false;
            boolean z = this.av;
            this.av = true;
            this.ah = this.ae.c();
            int i4 = this.l;
            if (i4 >= 0) {
                be(i4, false, true, 0);
                this.l = -1;
            } else if (z) {
                requestLayout();
            } else {
                bm();
            }
        }
    }

    public void setCurrentItem(int i) {
        this.z = false;
        be(i, !this.av, false, 0);
    }

    public void setOffscreenPageLimit(int i) {
        if (i <= 0) {
            i = 1;
        }
        if (i != this.n) {
            this.n = i;
            bm();
        }
    }

    @Deprecated
    public void setOnPageChangeListener(doz dozVar) {
        this.au = dozVar;
    }

    public void setPageMargin(int i) {
        int i2 = this.w;
        this.w = i;
        int width = getWidth();
        bd(width, width, i, i2);
        requestLayout();
    }

    public void setPageMarginDrawable(int i) {
        setPageMarginDrawable(getContext().getResources().getDrawable(i));
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.az = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setScrollState(int i) {
        if (this.an == i) {
            return;
        }
        this.an = i;
        if (this.af != null) {
            boolean z = i != 0;
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                getChildAt(i2).setLayerType(z ? this.aw : 0, null);
            }
        }
        doz dozVar = this.au;
        if (dozVar != null) {
            dozVar.kk(i);
        }
        ArrayList arrayList = this.f11433f;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i3 = 0; i3 < size; i3++) {
                doz dozVar2 = (doz) this.f11433f.get(i3);
                if (dozVar2 != null) {
                    dozVar2.kk(i);
                }
            }
        }
    }

    public void setScroller(Scroller scroller) {
        this.ao = scroller;
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.az;
    }
}
