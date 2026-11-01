package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.InterfaceC0259if;
import g.amm;
import g.anp;
import g.aot;
import g.aoy;
import g.apj;
import g.aqn;
import g.bcp;
import g.bll;
import g.cd;
import g.dip;
import g.dqc;
import g.duc;
import g.duw;
import g.dzc;
import g.dzm;
import g.ept;
import g.eqq;
import g.eu;
import g.gcp;
import g.goi;
import g.gsw;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class CoordinatorLayout extends ViewGroup implements ept, gcp {

    /* renamed from: a, reason: collision with root package name */
    public static final String f136a;

    /* renamed from: b, reason: collision with root package name */
    public static final ThreadLocal f137b;

    /* renamed from: c, reason: collision with root package name */
    public static final Class[] f138c;

    /* renamed from: d, reason: collision with root package name */
    public static final apj f139d;

    /* renamed from: e, reason: collision with root package name */
    public static final aqn f140e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f141f;

    /* renamed from: g, reason: collision with root package name */
    public Drawable f142g;
    public boolean h;
    public boolean i;
    public View j;
    public final ArrayList k;
    public amm l;
    public View m;
    public final aot n;
    public final ArrayList o;
    public final int[] p;
    public aoy q;
    public final ArrayList r;
    public final int[] s;
    public final duw t;
    public anp u;
    public ViewGroup.OnHierarchyChangeListener v;
    public boolean w;
    public final int[] x;

    public static class a extends gsw {
        public static final Parcelable.Creator<a> CREATOR = new androidx.coordinatorlayout.widget.a();
        SparseArray<Parcelable> behaviorStates;

        public a(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            int readInt = parcel.readInt();
            int[] iArr = new int[readInt];
            parcel.readIntArray(iArr);
            Parcelable[] readParcelableArray = parcel.readParcelableArray(classLoader);
            this.behaviorStates = new SparseArray<>(readInt);
            for (int i = 0; i < readInt; i++) {
                this.behaviorStates.append(iArr[i], readParcelableArray[i]);
            }
        }

        public a(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // g.gsw, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            SparseArray<Parcelable> sparseArray = this.behaviorStates;
            int size = sparseArray != null ? sparseArray.size() : 0;
            parcel.writeInt(size);
            int[] iArr = new int[size];
            Parcelable[] parcelableArr = new Parcelable[size];
            for (int i2 = 0; i2 < size; i2++) {
                iArr[i2] = this.behaviorStates.keyAt(i2);
                parcelableArr[i2] = this.behaviorStates.valueAt(i2);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i);
        }
    }

    static {
        Package r0 = CoordinatorLayout.class.getPackage();
        f136a = r0 != null ? r0.getName() : null;
        f140e = new aqn(3);
        f138c = new Class[]{Context.class, AttributeSet.class};
        f137b = new ThreadLocal();
        f139d = new apj();
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.coordinatorLayoutStyle);
        this.r = new ArrayList();
        this.t = new duw(2);
        this.k = new ArrayList();
        this.o = new ArrayList();
        this.p = new int[2];
        this.x = new int[2];
        this.n = new aot(2);
        int[] iArr = duc.f14811a;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, R.attr.coordinatorLayoutStyle, 0);
        if (Build.VERSION.SDK_INT >= 29) {
            saveAttributeDataForStyleable(context, iArr, attributeSet, obtainStyledAttributes, R.attr.coordinatorLayoutStyle, 0);
        }
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            int[] intArray = resources.getIntArray(resourceId);
            this.s = intArray;
            float f2 = resources.getDisplayMetrics().density;
            int length = intArray.length;
            for (int i = 0; i < length; i++) {
                this.s[i] = (int) (r1[i] * f2);
            }
        }
        this.f142g = obtainStyledAttributes.getDrawable(1);
        obtainStyledAttributes.recycle();
        ag();
        super.setOnHierarchyChangeListener(new eqq(this));
        WeakHashMap weakHashMap = goi.f18490c;
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    public static void aa(int i, View view) {
        eu euVar = (eu) view.getLayoutParams();
        int i2 = euVar.k;
        if (i2 != i) {
            goi.i(i - i2, view);
            euVar.k = i;
        }
    }

    public static void ab(int i, View view) {
        eu euVar = (eu) view.getLayoutParams();
        int i2 = euVar.m;
        if (i2 != i) {
            goi.m(i - i2, view);
            euVar.m = i;
        }
    }

    public static Rect ac() {
        Rect rect = (Rect) f139d.b();
        return rect == null ? new Rect() : rect;
    }

    public static eu y(View view) {
        eu euVar = (eu) view.getLayoutParams();
        if (!euVar.l) {
            InterfaceC0259if interfaceC0259if = null;
            for (Class<?> cls = view.getClass(); cls != null; cls = cls.getSuperclass()) {
                interfaceC0259if = (InterfaceC0259if) cls.getAnnotation(InterfaceC0259if.class);
                if (interfaceC0259if != null) {
                    break;
                }
            }
            if (interfaceC0259if != null) {
                try {
                    dip dipVar = (dip) interfaceC0259if.value().getDeclaredConstructor(null).newInstance(null);
                    dip dipVar2 = euVar.h;
                    if (dipVar2 != dipVar) {
                        if (dipVar2 != null) {
                            dipVar2.ca();
                        }
                        euVar.h = dipVar;
                        euVar.l = true;
                        if (dipVar != null) {
                            dipVar.cj(euVar);
                        }
                    }
                } catch (Exception e2) {
                    Log.e("CoordinatorLayout", "Default behavior class " + interfaceC0259if.value().getName() + " could not be instantiated. Did you forget a default constructor?", e2);
                }
            }
            euVar.l = true;
        }
        return euVar;
    }

    public static void z(int i, Rect rect, Rect rect2, eu euVar, int i2, int i3) {
        int i4 = euVar.n;
        if (i4 == 0) {
            i4 = 17;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(i4, i);
        int i5 = euVar.f16163e;
        if ((i5 & 7) == 0) {
            i5 |= 8388611;
        }
        if ((i5 & 112) == 0) {
            i5 |= 48;
        }
        int absoluteGravity2 = Gravity.getAbsoluteGravity(i5, i);
        int i6 = absoluteGravity & 7;
        int i7 = absoluteGravity & 112;
        int i8 = absoluteGravity2 & 7;
        int i9 = absoluteGravity2 & 112;
        int width = i8 != 1 ? i8 != 5 ? rect.left : rect.right : rect.left + (rect.width() / 2);
        int height = i9 != 16 ? i9 != 80 ? rect.top : rect.bottom : rect.top + (rect.height() / 2);
        if (i6 == 1) {
            width -= i2 / 2;
        } else if (i6 != 5) {
            width -= i2;
        }
        if (i7 == 16) {
            height -= i3 / 2;
        } else if (i7 != 80) {
            height -= i3;
        }
        rect2.set(width, height, i2 + width, i3 + height);
    }

    public final void ad(eu euVar, Rect rect, int i, int i2) {
        int width = getWidth();
        int height = getHeight();
        int max = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) euVar).leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i) - ((ViewGroup.MarginLayoutParams) euVar).rightMargin));
        int max2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) euVar).topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i2) - ((ViewGroup.MarginLayoutParams) euVar).bottomMargin));
        rect.set(max, max2, i + max, i2 + max2);
    }

    public final void ae(Rect rect, View view) {
        ThreadLocal threadLocal = bll.f11787a;
        rect.set(0, 0, view.getWidth(), view.getHeight());
        ThreadLocal threadLocal2 = bll.f11787a;
        Matrix matrix = (Matrix) threadLocal2.get();
        if (matrix == null) {
            matrix = new Matrix();
            threadLocal2.set(matrix);
        } else {
            matrix.reset();
        }
        bll.c(this, view, matrix);
        ThreadLocal threadLocal3 = bll.f11788b;
        RectF rectF = (RectF) threadLocal3.get();
        if (rectF == null) {
            rectF = new RectF();
            threadLocal3.set(rectF);
        }
        rectF.set(rect);
        matrix.mapRect(rectF);
        rect.set((int) (rectF.left + 0.5f), (int) (rectF.top + 0.5f), (int) (rectF.right + 0.5f), (int) (rectF.bottom + 0.5f));
    }

    public final boolean af(View view, int i, int i2) {
        apj apjVar = f139d;
        Rect ac = ac();
        ae(ac, view);
        try {
            return ac.contains(i, i2);
        } finally {
            ac.setEmpty();
            apjVar.c(ac);
        }
    }

    public final void ag() {
        WeakHashMap weakHashMap = goi.f18490c;
        if (!getFitsSystemWindows()) {
            cd.b(this, null);
            return;
        }
        if (this.q == null) {
            this.q = new aoy(this);
        }
        cd.b(this, this.q);
        setSystemUiVisibility(1280);
    }

    public final void ah() {
        ArrayList arrayList = this.r;
        arrayList.clear();
        duw duwVar = this.t;
        bcp bcpVar = (bcp) duwVar.f14864d;
        dqc dqcVar = (dqc) duwVar.h;
        bcp bcpVar2 = (bcp) duwVar.f14864d;
        int i = bcpVar.f11294g;
        for (int i2 = 0; i2 < i; i2++) {
            ArrayList arrayList2 = (ArrayList) bcpVar.o(i2);
            if (arrayList2 != null) {
                arrayList2.clear();
                dqcVar.c(arrayList2);
            }
        }
        bcpVar.clear();
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            eu y = y(childAt);
            int i4 = y.i;
            if (i4 == -1) {
                y.f16164f = null;
                y.f16160b = null;
            } else {
                View view = y.f16160b;
                if (view != null && view.getId() == i4) {
                    View view2 = y.f16160b;
                    for (ViewParent parent = view2.getParent(); parent != this; parent = parent.getParent()) {
                        if (parent == null || parent == childAt) {
                            y.f16164f = null;
                            y.f16160b = null;
                        } else {
                            if (parent instanceof View) {
                                view2 = parent;
                            }
                        }
                    }
                    y.f16164f = view2;
                }
                View findViewById = findViewById(i4);
                y.f16160b = findViewById;
                if (findViewById == null) {
                    if (!isInEditMode()) {
                        throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + getResources().getResourceName(i4) + " to anchor view " + childAt);
                    }
                    y.f16164f = null;
                    y.f16160b = null;
                } else if (findViewById != this) {
                    for (ViewParent parent2 = findViewById.getParent(); parent2 != this && parent2 != null; parent2 = parent2.getParent()) {
                        if (parent2 != childAt) {
                            if (parent2 instanceof View) {
                                findViewById = parent2;
                            }
                        } else {
                            if (!isInEditMode()) {
                                throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
                            }
                            y.f16164f = null;
                            y.f16160b = null;
                        }
                    }
                    y.f16164f = findViewById;
                } else {
                    if (!isInEditMode()) {
                        throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
                    }
                    y.f16164f = null;
                    y.f16160b = null;
                }
            }
            if (!bcpVar2.containsKey(childAt)) {
                bcpVar2.put(childAt, null);
            }
            for (int i5 = 0; i5 < childCount; i5++) {
                if (i5 != i3) {
                    View childAt2 = getChildAt(i5);
                    if (childAt2 != y.f16164f) {
                        WeakHashMap weakHashMap = goi.f18490c;
                        int layoutDirection = getLayoutDirection();
                        int absoluteGravity = Gravity.getAbsoluteGravity(((eu) childAt2.getLayoutParams()).o, layoutDirection);
                        if (absoluteGravity == 0 || (Gravity.getAbsoluteGravity(y.f16159a, layoutDirection) & absoluteGravity) != absoluteGravity) {
                            dip dipVar = y.h;
                            if (dipVar != null) {
                                dipVar.e(childAt);
                            }
                        }
                    }
                    if (!bcpVar2.containsKey(childAt2) && !bcpVar2.containsKey(childAt2)) {
                        bcpVar2.put(childAt2, null);
                    }
                    if (!bcpVar2.containsKey(childAt2) || !bcpVar2.containsKey(childAt)) {
                        throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
                    }
                    ArrayList arrayList3 = (ArrayList) bcpVar2.get(childAt2);
                    if (arrayList3 == null) {
                        arrayList3 = (ArrayList) dqcVar.b();
                        if (arrayList3 == null) {
                            arrayList3 = new ArrayList();
                        }
                        bcpVar2.put(childAt2, arrayList3);
                    }
                    arrayList3.add(childAt);
                }
            }
        }
        ArrayList arrayList4 = (ArrayList) duwVar.f14865e;
        arrayList4.clear();
        HashSet hashSet = (HashSet) duwVar.f14866f;
        hashSet.clear();
        int i6 = bcpVar2.f11294g;
        for (int i7 = 0; i7 < i6; i7++) {
            duwVar.r(bcpVar2.n(i7), arrayList4, hashSet);
        }
        arrayList.addAll(arrayList4);
        Collections.reverse(arrayList);
    }

    @Override // g.ept
    public final boolean ai(View view, View view2, int i, int i2) {
        int childCount = getChildCount();
        boolean z = false;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                eu euVar = (eu) childAt.getLayoutParams();
                dip dipVar = euVar.h;
                if (dipVar != null) {
                    boolean h = dipVar.h(childAt, i, i2);
                    z |= h;
                    if (i2 == 0) {
                        euVar.j = h;
                    } else if (i2 == 1) {
                        euVar.f16162d = h;
                    }
                } else if (i2 == 0) {
                    euVar.j = false;
                } else if (i2 == 1) {
                    euVar.f16162d = false;
                }
            }
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x029a  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0290  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x026c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void aj(int i) {
        int i2;
        Rect rect;
        int i3;
        int i4;
        ArrayList arrayList;
        boolean z;
        boolean z2;
        int width;
        int i5;
        int i6;
        int i7;
        int height;
        int i8;
        int i9;
        int i10;
        ArrayList arrayList2;
        eu euVar;
        int i11;
        int i12;
        Rect rect2;
        int i13;
        View view;
        dip dipVar;
        WeakHashMap weakHashMap = goi.f18490c;
        int layoutDirection = getLayoutDirection();
        ArrayList arrayList3 = this.r;
        int size = arrayList3.size();
        Rect ac = ac();
        Rect ac2 = ac();
        Rect ac3 = ac();
        int i14 = 0;
        while (true) {
            apj apjVar = f139d;
            if (i14 >= size) {
                Rect rect3 = ac3;
                ac.setEmpty();
                apjVar.c(ac);
                ac2.setEmpty();
                apjVar.c(ac2);
                rect3.setEmpty();
                apjVar.c(rect3);
                return;
            }
            View view2 = (View) arrayList3.get(i14);
            eu euVar2 = (eu) view2.getLayoutParams();
            if (i == 0 && view2.getVisibility() == 8) {
                arrayList = arrayList3;
                i4 = size;
                rect = ac3;
                i2 = i14;
            } else {
                int i15 = 0;
                while (i15 < i14) {
                    if (euVar2.f16164f == ((View) arrayList3.get(i15))) {
                        eu euVar3 = (eu) view2.getLayoutParams();
                        if (euVar3.f16160b != null) {
                            Rect ac4 = ac();
                            Rect ac5 = ac();
                            eu euVar4 = euVar2;
                            Rect ac6 = ac();
                            ae(ac4, euVar3.f16160b);
                            ap(view2, ac5, false);
                            int measuredWidth = view2.getMeasuredWidth();
                            View view3 = view2;
                            int measuredHeight = view3.getMeasuredHeight();
                            arrayList2 = arrayList3;
                            euVar = euVar4;
                            i11 = i15;
                            layoutDirection = layoutDirection;
                            i13 = i14;
                            view = view3;
                            z(layoutDirection, ac4, ac6, euVar3, measuredWidth, measuredHeight);
                            i12 = size;
                            rect2 = ac3;
                            boolean z3 = (ac6.left == ac5.left && ac6.top == ac5.top) ? false : true;
                            ad(euVar3, ac6, measuredWidth, measuredHeight);
                            int i16 = ac6.left - ac5.left;
                            int i17 = ac6.top - ac5.top;
                            if (i16 != 0) {
                                goi.i(i16, view);
                            }
                            if (i17 != 0) {
                                goi.m(i17, view);
                            }
                            if (z3 && (dipVar = euVar3.h) != null) {
                                dipVar.c(this, view, euVar3.f16160b);
                            }
                            ac4.setEmpty();
                            apjVar.c(ac4);
                            ac5.setEmpty();
                            apjVar.c(ac5);
                            ac6.setEmpty();
                            apjVar.c(ac6);
                            i15 = i11 + 1;
                            euVar2 = euVar;
                            view2 = view;
                            arrayList3 = arrayList2;
                            size = i12;
                            i14 = i13;
                            ac3 = rect2;
                        }
                    }
                    arrayList2 = arrayList3;
                    euVar = euVar2;
                    i11 = i15;
                    i12 = size;
                    rect2 = ac3;
                    i13 = i14;
                    view = view2;
                    i15 = i11 + 1;
                    euVar2 = euVar;
                    view2 = view;
                    arrayList3 = arrayList2;
                    size = i12;
                    i14 = i13;
                    ac3 = rect2;
                }
                ArrayList arrayList4 = arrayList3;
                eu euVar5 = euVar2;
                int i18 = size;
                Rect rect4 = ac3;
                i2 = i14;
                View view4 = view2;
                ap(view4, ac2, true);
                if (euVar5.o != 0 && !ac2.isEmpty()) {
                    int absoluteGravity = Gravity.getAbsoluteGravity(euVar5.o, layoutDirection);
                    int i19 = absoluteGravity & 112;
                    if (i19 == 48) {
                        ac.top = Math.max(ac.top, ac2.bottom);
                    } else if (i19 == 80) {
                        ac.bottom = Math.max(ac.bottom, getHeight() - ac2.top);
                    }
                    int i20 = absoluteGravity & 7;
                    if (i20 == 3) {
                        ac.left = Math.max(ac.left, ac2.right);
                    } else if (i20 == 5) {
                        ac.right = Math.max(ac.right, getWidth() - ac2.left);
                    }
                }
                if (euVar5.f16159a != 0 && view4.getVisibility() == 0) {
                    WeakHashMap weakHashMap2 = goi.f18490c;
                    if (view4.isLaidOut() && view4.getWidth() > 0 && view4.getHeight() > 0) {
                        eu euVar6 = (eu) view4.getLayoutParams();
                        dip dipVar2 = euVar6.h;
                        Rect ac7 = ac();
                        Rect ac8 = ac();
                        ac8.set(view4.getLeft(), view4.getTop(), view4.getRight(), view4.getBottom());
                        if (dipVar2 == null || !dipVar2._i(view4)) {
                            ac7.set(ac8);
                        } else if (!ac8.contains(ac7)) {
                            throw new IllegalArgumentException("Rect should be within the child's bounds. Rect:" + ac7.toShortString() + " | Bounds:" + ac8.toShortString());
                        }
                        ac8.setEmpty();
                        apjVar.c(ac8);
                        if (ac7.isEmpty()) {
                            ac7.setEmpty();
                            apjVar.c(ac7);
                        } else {
                            int absoluteGravity2 = Gravity.getAbsoluteGravity(euVar6.f16159a, layoutDirection);
                            if ((absoluteGravity2 & 48) != 48 || (i9 = (ac7.top - ((ViewGroup.MarginLayoutParams) euVar6).topMargin) - euVar6.m) >= (i10 = ac.top)) {
                                z = false;
                            } else {
                                ab(i10 - i9, view4);
                                z = true;
                            }
                            if ((absoluteGravity2 & 80) == 80 && (height = ((getHeight() - ac7.bottom) - ((ViewGroup.MarginLayoutParams) euVar6).bottomMargin) + euVar6.m) < (i8 = ac.bottom)) {
                                ab(height - i8, view4);
                                z = true;
                            }
                            if (!z) {
                                ab(0, view4);
                            }
                            if ((absoluteGravity2 & 3) != 3 || (i6 = (ac7.left - ((ViewGroup.MarginLayoutParams) euVar6).leftMargin) - euVar6.k) >= (i7 = ac.left)) {
                                z2 = false;
                            } else {
                                aa(i7 - i6, view4);
                                z2 = true;
                            }
                            if ((absoluteGravity2 & 5) == 5 && (width = ((getWidth() - ac7.right) - ((ViewGroup.MarginLayoutParams) euVar6).rightMargin) + euVar6.k) < (i5 = ac.right)) {
                                aa(width - i5, view4);
                                z2 = true;
                            }
                            if (!z2) {
                                aa(0, view4);
                            }
                            ac7.setEmpty();
                            apjVar.c(ac7);
                            if (i == 2) {
                                rect = rect4;
                                rect.set(((eu) view4.getLayoutParams()).f16161c);
                                if (rect.equals(ac2)) {
                                    arrayList = arrayList4;
                                    i4 = i18;
                                } else {
                                    ((eu) view4.getLayoutParams()).f16161c.set(ac2);
                                }
                            } else {
                                rect = rect4;
                            }
                            i3 = i2 + 1;
                            i4 = i18;
                            while (true) {
                                arrayList = arrayList4;
                                if (i3 >= i4) {
                                    View view5 = (View) arrayList.get(i3);
                                    dip dipVar3 = ((eu) view5.getLayoutParams()).h;
                                    if (dipVar3 != null) {
                                        dipVar3.e(view5);
                                    }
                                    i3++;
                                    arrayList4 = arrayList;
                                }
                            }
                        }
                    }
                }
                if (i == 2) {
                }
                i3 = i2 + 1;
                i4 = i18;
                while (true) {
                    arrayList = arrayList4;
                    if (i3 >= i4) {
                        break;
                    }
                    i3++;
                    arrayList4 = arrayList;
                }
            }
            i14 = i2 + 1;
            size = i4;
            ac3 = rect;
            arrayList3 = arrayList;
        }
    }

    @Override // g.ept
    public final void ak(View view, View view2, int i, int i2) {
        aot aotVar = this.n;
        if (i2 == 1) {
            aotVar.f10587c = i;
        } else {
            aotVar.f10586b = i;
        }
        this.m = view2;
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            ((eu) getChildAt(i3).getLayoutParams()).getClass();
        }
    }

    @Override // g.ept
    public final void al(int i, View view) {
        aot aotVar = this.n;
        if (i == 1) {
            aotVar.f10587c = 0;
        } else {
            aotVar.f10586b = 0;
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            eu euVar = (eu) childAt.getLayoutParams();
            if (euVar.p(i)) {
                dip dipVar = euVar.h;
                if (dipVar != null) {
                    dipVar.k(childAt, view, i);
                }
                if (i == 0) {
                    euVar.j = false;
                } else if (i == 1) {
                    euVar.f16162d = false;
                }
            }
        }
        this.m = null;
    }

    @Override // g.ept
    public final void am(View view, int i, int i2, int[] iArr, int i3) {
        dip dipVar;
        int childCount = getChildCount();
        boolean z = false;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                eu euVar = (eu) childAt.getLayoutParams();
                if (euVar.p(i3) && (dipVar = euVar.h) != null) {
                    int[] iArr2 = this.p;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    dipVar.m(this, childAt, view, i, i2, iArr2, i3);
                    i4 = i > 0 ? Math.max(i4, iArr2[0]) : Math.min(i4, iArr2[0]);
                    i5 = i2 > 0 ? Math.max(i5, iArr2[1]) : Math.min(i5, iArr2[1]);
                    z = true;
                }
            }
        }
        iArr[0] = i4;
        iArr[1] = i5;
        if (z) {
            aj(1);
        }
    }

    public final int an(int i) {
        int[] iArr = this.s;
        if (iArr == null) {
            Log.e("CoordinatorLayout", "No keylines defined for " + this + " - attempted index lookup " + i);
            return 0;
        }
        if (i >= 0 && i < iArr.length) {
            return iArr[i];
        }
        Log.e("CoordinatorLayout", "Keyline index " + i + " out of range for " + this);
        return 0;
    }

    @Override // g.gcp
    public final void ao(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        dip dipVar;
        int childCount = getChildCount();
        int i6 = 0;
        int i7 = 0;
        boolean z = false;
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                eu euVar = (eu) childAt.getLayoutParams();
                if (euVar.p(i5) && (dipVar = euVar.h) != null) {
                    int[] iArr2 = this.p;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    dipVar.g(this, childAt, i2, i3, i4, iArr2);
                    i6 = i3 > 0 ? Math.max(i6, iArr2[0]) : Math.min(i6, iArr2[0]);
                    i7 = i4 > 0 ? Math.max(i7, iArr2[1]) : Math.min(i7, iArr2[1]);
                    z = true;
                }
            }
        }
        iArr[0] = iArr[0] + i6;
        iArr[1] = iArr[1] + i7;
        if (z) {
            aj(1);
        }
    }

    public final void ap(View view, Rect rect, boolean z) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z) {
            ae(rect, view);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    @Override // g.ept
    public final void aq(View view, int i, int i2, int i3, int i4, int i5) {
        ao(view, i, i2, i3, i4, 0, this.x);
    }

    public final ArrayList ar(View view) {
        bcp bcpVar = (bcp) this.t.f14864d;
        int i = bcpVar.f11294g;
        ArrayList arrayList = null;
        for (int i2 = 0; i2 < i; i2++) {
            ArrayList arrayList2 = (ArrayList) bcpVar.o(i2);
            if (arrayList2 != null && arrayList2.contains(view)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(bcpVar.n(i2));
            }
        }
        ArrayList arrayList3 = this.o;
        arrayList3.clear();
        if (arrayList != null) {
            arrayList3.addAll(arrayList);
        }
        return arrayList3;
    }

    public final void as(int i, View view) {
        Rect ac;
        Rect ac2;
        eu euVar = (eu) view.getLayoutParams();
        View view2 = euVar.f16160b;
        if (view2 == null && euVar.i != -1) {
            throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        }
        apj apjVar = f139d;
        if (view2 != null) {
            ac = ac();
            ac2 = ac();
            try {
                ae(ac, view2);
                eu euVar2 = (eu) view.getLayoutParams();
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight();
                z(i, ac, ac2, euVar2, measuredWidth, measuredHeight);
                ad(euVar2, ac2, measuredWidth, measuredHeight);
                view.layout(ac2.left, ac2.top, ac2.right, ac2.bottom);
                return;
            } finally {
                ac.setEmpty();
                apjVar.c(ac);
                ac2.setEmpty();
                apjVar.c(ac2);
            }
        }
        int i2 = euVar.f16165g;
        if (i2 < 0) {
            eu euVar3 = (eu) view.getLayoutParams();
            ac = ac();
            ac.set(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) euVar3).leftMargin, getPaddingTop() + ((ViewGroup.MarginLayoutParams) euVar3).topMargin, (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) euVar3).rightMargin, (getHeight() - getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) euVar3).bottomMargin);
            if (this.u != null) {
                WeakHashMap weakHashMap = goi.f18490c;
                if (getFitsSystemWindows() && !view.getFitsSystemWindows()) {
                    ac.left = this.u.h() + ac.left;
                    ac.top = this.u.e() + ac.top;
                    ac.right -= this.u.i();
                    ac.bottom -= this.u.f();
                }
            }
            ac2 = ac();
            int i3 = euVar3.n;
            if ((i3 & 7) == 0) {
                i3 |= 8388611;
            }
            if ((i3 & 112) == 0) {
                i3 |= 48;
            }
            Gravity.apply(i3, view.getMeasuredWidth(), view.getMeasuredHeight(), ac, ac2, i);
            view.layout(ac2.left, ac2.top, ac2.right, ac2.bottom);
            return;
        }
        eu euVar4 = (eu) view.getLayoutParams();
        int i4 = euVar4.n;
        if (i4 == 0) {
            i4 = 8388661;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(i4, i);
        int i5 = absoluteGravity & 7;
        int i6 = absoluteGravity & 112;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth2 = view.getMeasuredWidth();
        int measuredHeight2 = view.getMeasuredHeight();
        if (i == 1) {
            i2 = width - i2;
        }
        int an = an(i2) - measuredWidth2;
        if (i5 == 1) {
            an += measuredWidth2 / 2;
        } else if (i5 == 5) {
            an += measuredWidth2;
        }
        int i7 = i6 != 16 ? i6 != 80 ? 0 : measuredHeight2 : measuredHeight2 / 2;
        int max = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) euVar4).leftMargin, Math.min(an, ((width - getPaddingRight()) - measuredWidth2) - ((ViewGroup.MarginLayoutParams) euVar4).rightMargin));
        int max2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) euVar4).topMargin, Math.min(i7, ((height - getPaddingBottom()) - measuredHeight2) - ((ViewGroup.MarginLayoutParams) euVar4).bottomMargin));
        view.layout(max, max2, measuredWidth2 + max, measuredHeight2 + max2);
    }

    public final void at(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            dip dipVar = ((eu) childAt.getLayoutParams()).h;
            if (dipVar != null) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0);
                if (z) {
                    dipVar.j(this, childAt, obtain);
                } else {
                    dipVar.n(childAt, obtain);
                }
                obtain.recycle();
            }
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            ((eu) getChildAt(i2).getLayoutParams()).getClass();
        }
        this.j = null;
        this.h = false;
    }

    public final boolean au(MotionEvent motionEvent, int i) {
        int actionMasked = motionEvent.getActionMasked();
        ArrayList arrayList = this.k;
        arrayList.clear();
        boolean isChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i2 = childCount - 1; i2 >= 0; i2--) {
            arrayList.add(getChildAt(isChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i2) : i2));
        }
        aqn aqnVar = f140e;
        if (aqnVar != null) {
            Collections.sort(arrayList, aqnVar);
        }
        int size = arrayList.size();
        MotionEvent motionEvent2 = null;
        boolean z = false;
        for (int i3 = 0; i3 < size; i3++) {
            View view = (View) arrayList.get(i3);
            dip dipVar = ((eu) view.getLayoutParams()).h;
            if (z && actionMasked != 0) {
                if (dipVar != null) {
                    if (motionEvent2 == null) {
                        long uptimeMillis = SystemClock.uptimeMillis();
                        motionEvent2 = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0);
                    }
                    if (i == 0) {
                        dipVar.j(this, view, motionEvent2);
                    } else if (i == 1) {
                        dipVar.n(view, motionEvent2);
                    }
                }
            } else if (!z && dipVar != null) {
                if (i == 0) {
                    z = dipVar.j(this, view, motionEvent);
                } else if (i == 1) {
                    z = dipVar.n(view, motionEvent);
                }
                if (z) {
                    this.j = view;
                }
            }
        }
        arrayList.clear();
        return z;
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof eu) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        dip dipVar = ((eu) view.getLayoutParams()).h;
        if (dipVar != null) {
            dipVar.getClass();
        }
        return super.drawChild(canvas, view, j);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f142g;
        if ((drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState)) {
            invalidate();
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new eu();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new eu(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof eu ? new eu((eu) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new eu((ViewGroup.MarginLayoutParams) layoutParams) : new eu(layoutParams);
    }

    public final List<View> getDependencySortedChildren() {
        ah();
        return Collections.unmodifiableList(this.r);
    }

    public final anp getLastWindowInsets() {
        return this.u;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        aot aotVar = this.n;
        return aotVar.f10587c | aotVar.f10586b;
    }

    public Drawable getStatusBarBackground() {
        return this.f142g;
    }

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingBottom() + getPaddingTop());
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingRight() + getPaddingLeft());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        at(false);
        if (this.w) {
            if (this.l == null) {
                this.l = new amm(this);
            }
            getViewTreeObserver().addOnPreDrawListener(this.l);
        }
        if (this.u == null) {
            WeakHashMap weakHashMap = goi.f18490c;
            if (getFitsSystemWindows()) {
                dzc.c(this);
            }
        }
        this.f141f = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        at(false);
        if (this.w && this.l != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.l);
        }
        View view = this.m;
        if (view != null) {
            al(0, view);
        }
        this.f141f = false;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.i || this.f142g == null) {
            return;
        }
        anp anpVar = this.u;
        int e2 = anpVar != null ? anpVar.e() : 0;
        if (e2 > 0) {
            this.f142g.setBounds(0, 0, getWidth(), e2);
            this.f142g.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            at(true);
        }
        boolean au = au(motionEvent, 0);
        if (actionMasked != 1 && actionMasked != 3) {
            return au;
        }
        at(true);
        return au;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        dip dipVar;
        WeakHashMap weakHashMap = goi.f18490c;
        int layoutDirection = getLayoutDirection();
        ArrayList arrayList = this.r;
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            View view = (View) arrayList.get(i5);
            if (view.getVisibility() != 8 && ((dipVar = ((eu) view.getLayoutParams()).h) == null || !dipVar.o(this, view, layoutDirection))) {
                as(layoutDirection, view);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x018b  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onMeasure(int i, int i2) {
        boolean z;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        dip dipVar;
        int i9;
        int i10;
        int i11;
        int i12;
        ArrayList arrayList;
        int i13;
        int i14;
        View view;
        int i15;
        int max;
        CoordinatorLayout coordinatorLayout = this;
        coordinatorLayout.ah();
        int childCount = coordinatorLayout.getChildCount();
        int i16 = 0;
        loop0: while (true) {
            if (i16 >= childCount) {
                z = false;
                break;
            }
            View childAt = coordinatorLayout.getChildAt(i16);
            bcp bcpVar = (bcp) coordinatorLayout.t.f14864d;
            int i17 = bcpVar.f11294g;
            for (int i18 = 0; i18 < i17; i18++) {
                ArrayList arrayList2 = (ArrayList) bcpVar.o(i18);
                if (arrayList2 != null && arrayList2.contains(childAt)) {
                    z = true;
                    break loop0;
                }
            }
            i16++;
        }
        if (z != coordinatorLayout.w) {
            if (z) {
                if (coordinatorLayout.f141f) {
                    if (coordinatorLayout.l == null) {
                        coordinatorLayout.l = new amm(coordinatorLayout);
                    }
                    coordinatorLayout.getViewTreeObserver().addOnPreDrawListener(coordinatorLayout.l);
                }
                coordinatorLayout.w = true;
            } else {
                if (coordinatorLayout.f141f && coordinatorLayout.l != null) {
                    coordinatorLayout.getViewTreeObserver().removeOnPreDrawListener(coordinatorLayout.l);
                }
                coordinatorLayout.w = false;
            }
        }
        int paddingLeft = coordinatorLayout.getPaddingLeft();
        int paddingTop = coordinatorLayout.getPaddingTop();
        int paddingRight = coordinatorLayout.getPaddingRight();
        int paddingBottom = coordinatorLayout.getPaddingBottom();
        WeakHashMap weakHashMap = goi.f18490c;
        int layoutDirection = coordinatorLayout.getLayoutDirection();
        boolean z2 = layoutDirection == 1;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        int i19 = paddingLeft + paddingRight;
        int i20 = paddingTop + paddingBottom;
        int suggestedMinimumWidth = coordinatorLayout.getSuggestedMinimumWidth();
        int suggestedMinimumHeight = coordinatorLayout.getSuggestedMinimumHeight();
        boolean z3 = coordinatorLayout.u != null && coordinatorLayout.getFitsSystemWindows();
        ArrayList arrayList3 = coordinatorLayout.r;
        int size3 = arrayList3.size();
        int i21 = 0;
        int i22 = 0;
        while (i21 < size3) {
            View view2 = (View) arrayList3.get(i21);
            int i23 = suggestedMinimumWidth;
            if (view2.getVisibility() == 8) {
                arrayList = arrayList3;
                i6 = size3;
                i15 = i21;
                i9 = paddingLeft;
                suggestedMinimumWidth = i23;
                i11 = paddingRight;
            } else {
                eu euVar = (eu) view2.getLayoutParams();
                int i24 = euVar.f16165g;
                if (i24 < 0 || mode == 0) {
                    i3 = suggestedMinimumHeight;
                } else {
                    int an = coordinatorLayout.an(i24);
                    int i25 = euVar.n;
                    if (i25 == 0) {
                        i25 = 8388661;
                    }
                    int absoluteGravity = Gravity.getAbsoluteGravity(i25, layoutDirection) & 7;
                    i3 = suggestedMinimumHeight;
                    if ((absoluteGravity == 3 && !z2) || (absoluteGravity == 5 && z2)) {
                        max = Math.max(0, (size - paddingRight) - an);
                    } else if ((absoluteGravity == 5 && !z2) || (absoluteGravity == 3 && z2)) {
                        max = Math.max(0, an - paddingLeft);
                    }
                    int i26 = size3;
                    i5 = max;
                    i4 = i26;
                    if (z3 || view2.getFitsSystemWindows()) {
                        i6 = i4;
                        i7 = i;
                        i8 = i2;
                    } else {
                        i6 = i4;
                        int i27 = coordinatorLayout.u.i() + coordinatorLayout.u.h();
                        int f2 = coordinatorLayout.u.f() + coordinatorLayout.u.e();
                        i7 = View.MeasureSpec.makeMeasureSpec(size - i27, mode);
                        i8 = View.MeasureSpec.makeMeasureSpec(size2 - f2, mode2);
                    }
                    dipVar = euVar.h;
                    if (dipVar == null) {
                        i9 = paddingLeft;
                        i10 = i23;
                        i11 = paddingRight;
                        i12 = i3;
                        arrayList = arrayList3;
                        int i28 = i7;
                        i15 = i21;
                        int i29 = i8;
                        boolean f3 = dipVar.f(this, view2, i28, i5, i29);
                        view = view2;
                        i7 = i28;
                        i13 = i5;
                        i14 = i29;
                        if (f3) {
                            coordinatorLayout = this;
                            int max2 = Math.max(i10, view.getMeasuredWidth() + i19 + ((ViewGroup.MarginLayoutParams) euVar).leftMargin + ((ViewGroup.MarginLayoutParams) euVar).rightMargin);
                            int max3 = Math.max(i12, view.getMeasuredHeight() + i20 + ((ViewGroup.MarginLayoutParams) euVar).topMargin + ((ViewGroup.MarginLayoutParams) euVar).bottomMargin);
                            i22 = View.combineMeasuredStates(i22, view.getMeasuredState());
                            suggestedMinimumWidth = max2;
                            suggestedMinimumHeight = max3;
                        }
                    } else {
                        i9 = paddingLeft;
                        i10 = i23;
                        i11 = paddingRight;
                        i12 = i3;
                        arrayList = arrayList3;
                        i13 = i5;
                        i14 = i8;
                        view = view2;
                        i15 = i21;
                    }
                    coordinatorLayout = this;
                    coordinatorLayout.measureChildWithMargins(view, i7, i13, i14, 0);
                    int max22 = Math.max(i10, view.getMeasuredWidth() + i19 + ((ViewGroup.MarginLayoutParams) euVar).leftMargin + ((ViewGroup.MarginLayoutParams) euVar).rightMargin);
                    int max32 = Math.max(i12, view.getMeasuredHeight() + i20 + ((ViewGroup.MarginLayoutParams) euVar).topMargin + ((ViewGroup.MarginLayoutParams) euVar).bottomMargin);
                    i22 = View.combineMeasuredStates(i22, view.getMeasuredState());
                    suggestedMinimumWidth = max22;
                    suggestedMinimumHeight = max32;
                }
                i4 = size3;
                i5 = 0;
                if (z3) {
                }
                i6 = i4;
                i7 = i;
                i8 = i2;
                dipVar = euVar.h;
                if (dipVar == null) {
                }
                coordinatorLayout = this;
                coordinatorLayout.measureChildWithMargins(view, i7, i13, i14, 0);
                int max222 = Math.max(i10, view.getMeasuredWidth() + i19 + ((ViewGroup.MarginLayoutParams) euVar).leftMargin + ((ViewGroup.MarginLayoutParams) euVar).rightMargin);
                int max322 = Math.max(i12, view.getMeasuredHeight() + i20 + ((ViewGroup.MarginLayoutParams) euVar).topMargin + ((ViewGroup.MarginLayoutParams) euVar).bottomMargin);
                i22 = View.combineMeasuredStates(i22, view.getMeasuredState());
                suggestedMinimumWidth = max222;
                suggestedMinimumHeight = max322;
            }
            i21 = i15 + 1;
            paddingLeft = i9;
            paddingRight = i11;
            size3 = i6;
            arrayList3 = arrayList;
        }
        int i30 = i22;
        coordinatorLayout.setMeasuredDimension(View.resolveSizeAndState(suggestedMinimumWidth, i, (-16777216) & i30), View.resolveSizeAndState(suggestedMinimumHeight, i2, i30 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f2, float f3, boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                eu euVar = (eu) childAt.getLayoutParams();
                if (euVar.p(0)) {
                    dip dipVar = euVar.h;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f2, float f3) {
        dip dipVar;
        int childCount = getChildCount();
        boolean z = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                eu euVar = (eu) childAt.getLayoutParams();
                if (euVar.p(0) && (dipVar = euVar.h) != null) {
                    z |= dipVar.cf(view);
                }
            }
        }
        return z;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        am(view, i, i2, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        aq(view, i, i2, i3, i4, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i) {
        ak(view, view2, i, 0);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof a)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        a aVar = (a) parcelable;
        super.onRestoreInstanceState(aVar.getSuperState());
        SparseArray<Parcelable> sparseArray = aVar.behaviorStates;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            dip dipVar = y(childAt).h;
            if (id != -1 && dipVar != null && (parcelable2 = sparseArray.get(id)) != null) {
                dipVar.l(childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Parcelable i;
        a aVar = new a(super.onSaveInstanceState());
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            int id = childAt.getId();
            dip dipVar = ((eu) childAt.getLayoutParams()).h;
            if (id != -1 && dipVar != null && (i = dipVar.i(childAt)) != null) {
                sparseArray.append(id, i);
            }
        }
        aVar.behaviorStates = sparseArray;
        return aVar;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i) {
        return ai(view, view2, i, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        al(0, view);
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0012, code lost:
    
        if (r3 != false) goto L9;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002f  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean n;
        MotionEvent motionEvent2;
        int actionMasked = motionEvent.getActionMasked();
        if (this.j == null) {
            z = au(motionEvent, 1);
        } else {
            z = false;
        }
        dip dipVar = ((eu) this.j.getLayoutParams()).h;
        if (dipVar != null) {
            n = dipVar.n(this.j, motionEvent);
            motionEvent2 = null;
            if (this.j != null) {
                n |= super.onTouchEvent(motionEvent);
            } else if (z) {
                long uptimeMillis = SystemClock.uptimeMillis();
                motionEvent2 = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0);
                super.onTouchEvent(motionEvent2);
            }
            if (motionEvent2 != null) {
                motionEvent2.recycle();
            }
            if (actionMasked == 1 && actionMasked != 3) {
                return n;
            }
            at(false);
            return n;
        }
        n = false;
        motionEvent2 = null;
        if (this.j != null) {
        }
        if (motionEvent2 != null) {
        }
        if (actionMasked == 1) {
        }
        at(false);
        return n;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        dip dipVar = ((eu) view.getLayoutParams()).h;
        if (dipVar != null) {
            dipVar.d(this, view);
        }
        return super.requestChildRectangleOnScreen(view, rect, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (!z || this.h) {
            return;
        }
        at(false);
        this.h = true;
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z) {
        super.setFitsSystemWindows(z);
        ag();
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.v = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(Drawable drawable) {
        Drawable drawable2 = this.f142g;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable mutate = drawable != null ? drawable.mutate() : null;
            this.f142g = mutate;
            if (mutate != null) {
                if (mutate.isStateful()) {
                    this.f142g.setState(getDrawableState());
                }
                Drawable drawable3 = this.f142g;
                WeakHashMap weakHashMap = goi.f18490c;
                dzm.bb(drawable3, getLayoutDirection());
                this.f142g.setVisible(getVisibility() == 0, false);
                this.f142g.setCallback(this);
            }
            WeakHashMap weakHashMap2 = goi.f18490c;
            postInvalidateOnAnimation();
        }
    }

    public void setStatusBarBackgroundColor(int i) {
        setStatusBarBackground(new ColorDrawable(i));
    }

    public void setStatusBarBackgroundResource(int i) {
        setStatusBarBackground(i != 0 ? getContext().getDrawable(i) : null);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f142g;
        if (drawable == null || drawable.isVisible() == z) {
            return;
        }
        this.f142g.setVisible(z, false);
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f142g;
    }
}
