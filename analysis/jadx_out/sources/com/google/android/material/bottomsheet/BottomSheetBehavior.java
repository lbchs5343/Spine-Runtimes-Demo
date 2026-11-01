package com.google.android.material.bottomsheet;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.RoundedCorner;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.PathInterpolator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.alc;
import g.amk;
import g.awf;
import g.bnm;
import g.br;
import g.cd;
import g.cjg;
import g.cpq;
import g.csk;
import g.cuo;
import g.ddm;
import g.dfv;
import g.dip;
import g.dln;
import g.dro;
import g.egh;
import g.egp;
import g.eu;
import g.fdy;
import g.gcu;
import g.gez;
import g.git;
import g.goi;
import g.gqc;
import g.gs;
import g.gsw;
import g.hdo;
import g.tn;
import g.zl;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public class BottomSheetBehavior<V extends View> extends dip {

    /* renamed from: a, reason: collision with root package name */
    public boolean f9003a;
    public final boolean aa;

    /* renamed from: ab, reason: collision with root package name */
    public final int f9004ab;
    public final ValueAnimator ac;
    public final int ad;
    public int ae;
    public int af;
    public final int ag;
    public final boolean ah;
    public int ai;
    public int aj;
    public final int ak;
    public boolean al;
    public WeakReference am;
    public final boolean an;
    public int ao;
    public WeakReference ap;
    public int aq;
    public boolean ar;
    public boolean as;
    public final boolean at;
    public final boolean au;
    public int av;
    public int aw;
    public boolean ax;
    public boolean ay;
    public final ddm az;

    /* renamed from: b, reason: collision with root package name */
    public final int f9005b;
    public boolean ba;
    public int bb;
    public final ColorStateList bc;
    public final boolean bd;
    public final cpq be;
    public final boolean bf;
    public final float bg;
    public dfv bh;
    public final SparseIntArray bi;
    public final float bj;
    public final float bk;
    public final bnm bl;
    public VelocityTracker bm;
    public boolean bn;
    public int bo;
    public final boolean bp;
    public int bq;
    public final boolean br;
    public final ArrayList bs;
    public final int p;
    public final float q;
    public final boolean r;
    public HashMap s;
    public final boolean t;
    public final cjg u;
    public int v;
    public int w;
    public int x;
    public boolean y;
    public int z;

    public static class a extends gsw {
        public static final Parcelable.Creator<a> CREATOR = new com.google.android.material.bottomsheet.a();
        boolean fitToContents;
        boolean hideable;
        int peekHeight;
        boolean skipCollapsed;
        final int state;

        public a(Parcel parcel) {
            this(parcel, (ClassLoader) null);
        }

        public a(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.state = parcel.readInt();
            this.peekHeight = parcel.readInt();
            this.fitToContents = parcel.readInt() == 1;
            this.hideable = parcel.readInt() == 1;
            this.skipCollapsed = parcel.readInt() == 1;
        }

        @Deprecated
        public a(Parcelable parcelable, int i) {
            super(parcelable);
            this.state = i;
        }

        public a(Parcelable parcelable, BottomSheetBehavior<?> bottomSheetBehavior) {
            super(parcelable);
            this.state = bottomSheetBehavior.w;
            this.peekHeight = bottomSheetBehavior.ae;
            this.fitToContents = bottomSheetBehavior.ba;
            this.hideable = bottomSheetBehavior.bn;
            this.skipCollapsed = bottomSheetBehavior.as;
        }

        @Override // g.gsw, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.state);
            parcel.writeInt(this.peekHeight);
            parcel.writeInt(this.fitToContents ? 1 : 0);
            parcel.writeInt(this.hideable ? 1 : 0);
            parcel.writeInt(this.skipCollapsed ? 1 : 0);
        }
    }

    public BottomSheetBehavior() {
        this.ag = 0;
        this.ba = true;
        this.p = -1;
        this.ad = -1;
        this.be = new cpq(this);
        this.bg = 0.5f;
        this.q = -1.0f;
        this.an = true;
        this.r = true;
        this.w = 4;
        this.bj = 0.1f;
        this.bs = new ArrayList();
        this.aj = -1;
        this.bi = new SparseIntArray();
        this.bl = new bnm(this, 0);
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        int i;
        int i2 = 0;
        this.ag = 0;
        this.ba = true;
        this.p = -1;
        this.ad = -1;
        this.be = new cpq(this);
        this.bg = 0.5f;
        this.q = -1.0f;
        this.an = true;
        this.r = true;
        this.w = 4;
        this.bj = 0.1f;
        this.bs = new ArrayList();
        this.aj = -1;
        this.bi = new SparseIntArray();
        this.bl = new bnm(this, i2);
        this.f9005b = context.getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, git.y);
        if (obtainStyledAttributes.hasValue(3)) {
            this.bc = gs.ai(context, obtainStyledAttributes, 3);
        }
        if (obtainStyledAttributes.hasValue(22)) {
            this.u = cjg.n(context, attributeSet, R.attr.bottomSheetStyle, R.style.Widget_Design_BottomSheet_Modal).n();
        }
        cjg cjgVar = this.u;
        if (cjgVar != null) {
            ddm ddmVar = new ddm(cjgVar);
            this.az = ddmVar;
            ddmVar.ef(context);
            ColorStateList colorStateList = this.bc;
            if (colorStateList != null) {
                this.az.en(colorStateList);
            } else {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true);
                this.az.setTint(typedValue.data);
            }
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(ce(), 1.0f);
        this.ac = ofFloat;
        ofFloat.setDuration(500L);
        this.ac.addUpdateListener(new zl(i2, this));
        this.q = obtainStyledAttributes.getDimension(2, -1.0f);
        if (obtainStyledAttributes.hasValue(0)) {
            this.p = obtainStyledAttributes.getDimensionPixelSize(0, -1);
        }
        if (obtainStyledAttributes.hasValue(1)) {
            this.ad = obtainStyledAttributes.getDimensionPixelSize(1, -1);
        }
        TypedValue peekValue = obtainStyledAttributes.peekValue(10);
        if (peekValue == null || (i = peekValue.data) != -1) {
            cg(obtainStyledAttributes.getDimensionPixelSize(10, -1));
        } else {
            cg(i);
        }
        boolean z = obtainStyledAttributes.getBoolean(9, false);
        if (this.bn != z) {
            this.bn = z;
            if (!z && this.w == 5) {
                bz(4);
            }
            ci();
        }
        this.aa = obtainStyledAttributes.getBoolean(14, false);
        boolean z2 = obtainStyledAttributes.getBoolean(7, true);
        if (this.ba != z2) {
            this.ba = z2;
            if (this.ap != null) {
                cn();
            }
            cd((this.ba && this.w == 6) ? 3 : this.w);
            by(this.w, true);
            ci();
        }
        this.as = obtainStyledAttributes.getBoolean(13, false);
        this.an = obtainStyledAttributes.getBoolean(4, true);
        this.r = obtainStyledAttributes.getBoolean(5, true);
        this.ag = obtainStyledAttributes.getInt(11, 0);
        float f2 = obtainStyledAttributes.getFloat(8, 0.5f);
        if (f2 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || f2 >= 1.0f) {
            throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
        }
        this.bg = f2;
        if (this.ap != null) {
            this.bo = (int) ((1.0f - f2) * this.z);
        }
        TypedValue peekValue2 = obtainStyledAttributes.peekValue(6);
        if (peekValue2 == null || peekValue2.type != 16) {
            int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(6, 0);
            if (dimensionPixelOffset < 0) {
                throw new IllegalArgumentException("offset must be greater than or equal to 0");
            }
            this.ak = dimensionPixelOffset;
            by(this.w, true);
        } else {
            int i3 = peekValue2.data;
            if (i3 < 0) {
                throw new IllegalArgumentException("offset must be greater than or equal to 0");
            }
            this.ak = i3;
            by(this.w, true);
        }
        this.f9004ab = obtainStyledAttributes.getInt(12, 500);
        this.t = obtainStyledAttributes.getBoolean(18, false);
        this.au = obtainStyledAttributes.getBoolean(19, false);
        this.bd = obtainStyledAttributes.getBoolean(20, false);
        this.br = obtainStyledAttributes.getBoolean(21, true);
        this.at = obtainStyledAttributes.getBoolean(15, false);
        this.bf = obtainStyledAttributes.getBoolean(16, false);
        this.ah = obtainStyledAttributes.getBoolean(17, false);
        this.bp = obtainStyledAttributes.getBoolean(24, true);
        obtainStyledAttributes.recycle();
        this.bk = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    public static View bt(View view) {
        if (view.getVisibility() != 0) {
            return null;
        }
        if (view.isNestedScrollingEnabled()) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View bt = bt(viewGroup.getChildAt(i));
            if (bt != null) {
                return bt;
            }
        }
        return null;
    }

    public static int bu(int i, int i2, int i3, int i4) {
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, i2, i4);
        if (i3 == -1) {
            return childMeasureSpec;
        }
        int mode = View.MeasureSpec.getMode(childMeasureSpec);
        int size = View.MeasureSpec.getSize(childMeasureSpec);
        if (mode == 1073741824) {
            return View.MeasureSpec.makeMeasureSpec(Math.min(size, i3), C.ENCODING_PCM_32BIT);
        }
        if (size != 0) {
            i3 = Math.min(size, i3);
        }
        return View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE);
    }

    public final boolean bv() {
        WeakReference weakReference = this.ap;
        if (weakReference != null && weakReference.get() != null) {
            int[] iArr = new int[2];
            ((View) this.ap.get()).getLocationOnScreen(iArr);
            if (iArr[1] == 0) {
                return true;
            }
        }
        return false;
    }

    public final void bw(boolean z) {
        WeakReference weakReference = this.ap;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = ((View) weakReference.get()).getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z) {
                if (this.s != null) {
                    return;
                } else {
                    this.s = new HashMap(childCount);
                }
            }
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if (childAt != this.ap.get() && z) {
                    this.s.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                }
            }
            if (z) {
                return;
            }
            this.s = null;
        }
    }

    public final int bx(int i) {
        if (i == 3) {
            return cm();
        }
        if (i == 4) {
            return this.x;
        }
        if (i == 5) {
            return this.z;
        }
        if (i == 6) {
            return this.bo;
        }
        throw new IllegalArgumentException(awf.ac(i, "Invalid state to get top offset: "));
    }

    public final void by(int i, boolean z) {
        ddm ddmVar;
        if (i == 2) {
            return;
        }
        boolean z2 = this.w == 3 && (this.bp || bv());
        if (this.f9003a == z2 || (ddmVar = this.az) == null) {
            return;
        }
        this.f9003a = z2;
        ValueAnimator valueAnimator = this.ac;
        if (!z || valueAnimator == null) {
            if (valueAnimator != null && valueAnimator.isRunning()) {
                valueAnimator.cancel();
            }
            ddmVar.er(this.f9003a ? ce() : 1.0f);
            return;
        }
        if (valueAnimator.isRunning()) {
            valueAnimator.reverse();
        } else {
            valueAnimator.setFloatValues(ddmVar.ds.n, z2 ? ce() : 1.0f);
            valueAnimator.start();
        }
    }

    public final void bz(int i) {
        if (i == 1 || i == 2) {
            throw new IllegalArgumentException(awf.ad(new StringBuilder("STATE_"), i == 1 ? "DRAGGING" : "SETTLING", " should not be set externally."));
        }
        if (this.bn || i != 5) {
            int i2 = (i == 6 && this.ba && bx(i) <= this.ai) ? 3 : i;
            WeakReference weakReference = this.ap;
            if (weakReference == null || weakReference.get() == null) {
                cd(i);
                return;
            }
            View view = (View) this.ap.get();
            hdo hdoVar = new hdo(this, view, i2);
            ViewParent parent = view.getParent();
            if (parent != null && parent.isLayoutRequested() && view.isAttachedToWindow()) {
                view.post(hdoVar);
            } else {
                hdoVar.run();
            }
        }
    }

    @Override // g.dip
    public final void ca() {
        this.ap = null;
        this.bh = null;
    }

    public final void cb(int i) {
        if (((View) this.ap.get()) != null) {
            ArrayList arrayList = this.bs;
            if (arrayList.isEmpty()) {
                return;
            }
            int i2 = this.x;
            if (i <= i2 && i2 != cm()) {
                cm();
            }
            if (arrayList.size() > 0) {
                throw tn.w(0, arrayList);
            }
        }
    }

    public final boolean cc(View view, float f2) {
        if (this.as) {
            return true;
        }
        if (view.getTop() < this.x) {
            return false;
        }
        return Math.abs(((f2 * this.bj) + ((float) view.getTop())) - ((float) this.x)) / ((float) ch()) > 0.5f;
    }

    public final void cd(int i) {
        if (this.w == i) {
            return;
        }
        this.w = i;
        if (i != 4 && i != 3 && i != 6) {
            boolean z = this.bn;
        }
        WeakReference weakReference = this.ap;
        if (weakReference == null || ((View) weakReference.get()) == null) {
            return;
        }
        if (i == 3) {
            bw(true);
        } else if (i == 6 || i == 5 || i == 4) {
            bw(false);
        }
        by(i, true);
        ArrayList arrayList = this.bs;
        if (arrayList.size() > 0) {
            throw tn.w(0, arrayList);
        }
        ci();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0023, code lost:
    
        r0 = r0.getRootWindowInsets();
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final float ce() {
        WeakReference weakReference;
        WindowInsets rootWindowInsets;
        RoundedCorner roundedCorner;
        float f2;
        RoundedCorner roundedCorner2;
        int radius;
        int radius2;
        ddm ddmVar = this.az;
        float f3 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        if (ddmVar != null && (weakReference = this.ap) != null && weakReference.get() != null && Build.VERSION.SDK_INT >= 31) {
            View view = (View) this.ap.get();
            if (bv() && rootWindowInsets != null) {
                float eq = this.az.eq();
                roundedCorner = rootWindowInsets.getRoundedCorner(0);
                if (roundedCorner != null) {
                    radius2 = roundedCorner.getRadius();
                    float f4 = radius2;
                    if (f4 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && eq > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        f2 = f4 / eq;
                        ddm ddmVar2 = this.az;
                        float[] fArr = ddmVar2.dq;
                        float b2 = fArr == null ? fArr[0] : ddmVar2.ds.h.f12977g.b(ddmVar2.eu());
                        roundedCorner2 = rootWindowInsets.getRoundedCorner(1);
                        if (roundedCorner2 != null) {
                            radius = roundedCorner2.getRadius();
                            float f5 = radius;
                            if (f5 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && b2 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                                f3 = f5 / b2;
                            }
                        }
                        return Math.max(f2, f3);
                    }
                }
                f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                ddm ddmVar22 = this.az;
                float[] fArr2 = ddmVar22.dq;
                if (fArr2 == null) {
                }
                roundedCorner2 = rootWindowInsets.getRoundedCorner(1);
                if (roundedCorner2 != null) {
                }
                return Math.max(f2, f3);
            }
        }
        return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    @Override // g.dip
    public final boolean cf(View view) {
        WeakReference weakReference = this.am;
        return (weakReference == null || view != weakReference.get() || this.w == 3 || this.al) ? false : true;
    }

    public final void cg(int i) {
        if (i == -1) {
            if (this.ar) {
                return;
            } else {
                this.ar = true;
            }
        } else {
            if (!this.ar && this.ae == i) {
                return;
            }
            this.ar = false;
            this.ae = Math.max(0, i);
        }
        ck();
    }

    public final int ch() {
        int i;
        return this.ar ? Math.min(Math.max(this.bq, this.z - ((this.af * 9) / 16)), this.bb) + this.ao : (this.aa || this.t || (i = this.av) <= 0) ? this.ae + this.ao : Math.max(this.ae, i + this.f9005b);
    }

    public final void ci() {
        View view;
        int i;
        WeakReference weakReference = this.ap;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        goi.j(524288, view);
        goi.w(0, view);
        goi.j(262144, view);
        goi.w(0, view);
        goi.j(1048576, view);
        goi.w(0, view);
        SparseIntArray sparseIntArray = this.bi;
        int i2 = sparseIntArray.get(0, -1);
        if (i2 != -1) {
            goi.j(i2, view);
            goi.w(0, view);
            sparseIntArray.delete(0);
        }
        if (!this.ba && this.w != 6) {
            String string = view.getResources().getString(R.string.bottomsheet_action_expand_halfway);
            gqc gqcVar = new gqc(this, r5, 5);
            ArrayList q = goi.q(view);
            int i3 = 0;
            while (true) {
                if (i3 >= q.size()) {
                    int i4 = -1;
                    int i5 = 0;
                    while (true) {
                        int[] iArr = goi.f18489b;
                        if (i5 >= 32 || i4 != -1) {
                            break;
                        }
                        int i6 = iArr[i5];
                        boolean z = true;
                        for (int i7 = 0; i7 < q.size(); i7++) {
                            z &= ((csk) q.get(i7)).o() != i6;
                        }
                        if (z) {
                            i4 = i6;
                        }
                        i5++;
                    }
                    i = i4;
                } else {
                    if (TextUtils.equals(string, ((AccessibilityNodeInfo.AccessibilityAction) ((csk) q.get(i3)).l).getLabel())) {
                        i = ((csk) q.get(i3)).o();
                        break;
                    }
                    i3++;
                }
            }
            if (i != -1) {
                csk cskVar = new csk(null, i, string, gqcVar, null);
                View.AccessibilityDelegate l = goi.l(view);
                amk amkVar = l == null ? null : l instanceof dln ? ((dln) l).f14374a : new amk(l);
                if (amkVar == null) {
                    amkVar = new amk();
                }
                goi.ab(view, amkVar);
                goi.j(cskVar.o(), view);
                goi.q(view).add(cskVar);
                goi.w(0, view);
            }
            sparseIntArray.put(0, i);
        }
        if (this.bn) {
            int i8 = 5;
            if (this.w != 5) {
                goi.s(view, csk.i, new gqc(this, i8, 5));
            }
        }
        int i9 = this.w;
        int i10 = 4;
        int i11 = 3;
        if (i9 == 3) {
            goi.s(view, csk.h, new gqc(this, this.ba ? 4 : 6, 5));
            return;
        }
        if (i9 == 4) {
            goi.s(view, csk.f13428a, new gqc(this, this.ba ? 3 : 6, 5));
        } else {
            if (i9 != 6) {
                return;
            }
            goi.s(view, csk.h, new gqc(this, i10, 5));
            goi.s(view, csk.f13428a, new gqc(this, i11, 5));
        }
    }

    @Override // g.dip
    public final void cj(eu euVar) {
        this.ap = null;
        this.bh = null;
    }

    public final void ck() {
        View view;
        if (this.ap != null) {
            cn();
            if (this.w != 4 || (view = (View) this.ap.get()) == null) {
                return;
            }
            view.requestLayout();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0030, code lost:
    
        if (r3 != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
    
        if (r1.y(r3.getLeft(), r0) != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0032, code lost:
    
        cd(2);
        by(r4, true);
        r2.be.g(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x003f, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void cl(View view, int i, boolean z) {
        int bx = bx(i);
        dfv dfvVar = this.bh;
        if (dfvVar != null) {
            if (!z) {
                int left = view.getLeft();
                dfvVar.v = view;
                dfvVar.t = -1;
                boolean w = dfvVar.w(left, bx, 0, 0);
                if (!w && dfvVar.i == 0 && dfvVar.v != null) {
                    dfvVar.v = null;
                }
            }
        }
        cd(i);
    }

    public final int cm() {
        if (this.ba) {
            return this.ai;
        }
        return Math.max(this.ak, this.br ? 0 : this.aq);
    }

    public final void cn() {
        int ch = ch();
        if (this.ba) {
            this.x = Math.max(this.z - ch, this.ai);
        } else {
            this.x = this.z - ch;
        }
    }

    @Override // g.dip
    public final boolean f(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(bu(i, coordinatorLayout.getPaddingRight() + coordinatorLayout.getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, this.p, marginLayoutParams.width), bu(i3, coordinatorLayout.getPaddingBottom() + coordinatorLayout.getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, this.ad, marginLayoutParams.height));
        return true;
    }

    @Override // g.dip
    public final void g(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int[] iArr) {
    }

    @Override // g.dip
    public final boolean h(View view, int i, int i2) {
        this.v = 0;
        this.ax = false;
        return (i & 2) != 0;
    }

    @Override // g.dip
    public final Parcelable i(View view) {
        return new a((Parcelable) View.BaseSavedState.EMPTY_STATE, (BottomSheetBehavior<?>) this);
    }

    @Override // g.dip
    public final boolean j(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        int i;
        dfv dfvVar;
        if (!view.isShown() || !this.an) {
            this.ay = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.aw = -1;
            this.aj = -1;
            VelocityTracker velocityTracker = this.bm;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.bm = null;
            }
        }
        if (this.bm == null) {
            this.bm = VelocityTracker.obtain();
        }
        this.bm.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            this.aj = y;
            if (this.w != 2) {
                WeakReference weakReference = this.am;
                View view2 = weakReference != null ? (View) weakReference.get() : null;
                if (view2 != null && coordinatorLayout.af(view2, x, y)) {
                    this.aw = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.y = true;
                }
            }
            this.ay = this.aw == -1 && !coordinatorLayout.af(view, x, this.aj);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.y = false;
            this.aw = -1;
            if (this.ay) {
                this.ay = false;
                return false;
            }
        }
        if (this.ay || (dfvVar = this.bh) == null || !dfvVar.af(motionEvent)) {
            WeakReference weakReference2 = this.am;
            View view3 = weakReference2 != null ? (View) weakReference2.get() : null;
            if (actionMasked != 2 || view3 == null || this.ay || this.w == 1 || coordinatorLayout.af(view3, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.bh == null || (i = this.aj) == -1 || Math.abs(i - motionEvent.getY()) <= this.bh.p) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0030, code lost:
    
        if (r4.getTop() <= r3.bo) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0071, code lost:
    
        if (java.lang.Math.abs(r5 - r3.ai) < java.lang.Math.abs(r5 - r3.x)) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0080, code lost:
    
        if (r5 < java.lang.Math.abs(r5 - r3.x)) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0090, code lost:
    
        if (java.lang.Math.abs(r5 - r2) < java.lang.Math.abs(r5 - r3.x)) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00ac, code lost:
    
        if (java.lang.Math.abs(r5 - r3.bo) < java.lang.Math.abs(r5 - r3.x)) goto L50;
     */
    @Override // g.dip
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void k(View view, View view2, int i) {
        float yVelocity;
        int i2 = 3;
        if (view.getTop() == cm()) {
            cd(3);
            return;
        }
        WeakReference weakReference = this.am;
        if (weakReference != null && view2 == weakReference.get() && this.ax) {
            if (this.v > 0) {
                if (!this.ba) {
                }
                cl(view, i2, false);
                this.ax = false;
            }
            if (this.bn) {
                VelocityTracker velocityTracker = this.bm;
                if (velocityTracker == null) {
                    yVelocity = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                } else {
                    velocityTracker.computeCurrentVelocity(1000, this.bk);
                    yVelocity = this.bm.getYVelocity(this.aw);
                }
                if (cc(view, yVelocity)) {
                    i2 = 5;
                    cl(view, i2, false);
                    this.ax = false;
                }
            }
            if (this.v == 0) {
                int top = view.getTop();
                if (!this.ba) {
                    int i3 = this.bo;
                    if (top < i3) {
                    }
                    i2 = 6;
                }
            } else {
                if (!this.ba) {
                    int top2 = view.getTop();
                }
                i2 = 4;
            }
            cl(view, i2, false);
            this.ax = false;
        }
    }

    @Override // g.dip
    public final void l(View view, Parcelable parcelable) {
        a aVar = (a) parcelable;
        aVar.getSuperState();
        int i = this.ag;
        if (i != 0) {
            if (i == -1 || (i & 1) == 1) {
                this.ae = aVar.peekHeight;
            }
            if (i == -1 || (i & 2) == 2) {
                this.ba = aVar.fitToContents;
            }
            if (i == -1 || (i & 4) == 4) {
                this.bn = aVar.hideable;
            }
            if (i == -1 || (i & 8) == 8) {
                this.as = aVar.skipCollapsed;
            }
        }
        int i2 = aVar.state;
        if (i2 == 1 || i2 == 2) {
            this.w = 4;
        } else {
            this.w = i2;
        }
    }

    @Override // g.dip
    public final void m(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int[] iArr, int i3) {
        if (i3 == 1) {
            return;
        }
        WeakReference weakReference = this.am;
        View view3 = weakReference != null ? (View) weakReference.get() : null;
        if (view2 != view3) {
            return;
        }
        int top = view.getTop();
        int i4 = top - i2;
        if (i2 > 0) {
            if (!this.ax && !this.r && view2 == view3 && view2.canScrollVertically(1)) {
                this.al = true;
                return;
            }
            if (i4 < cm()) {
                int cm = top - cm();
                iArr[1] = cm;
                goi.m(-cm, view);
                cd(3);
            } else {
                if (!this.an) {
                    return;
                }
                iArr[1] = i2;
                goi.m(-i2, view);
                cd(1);
            }
        } else if (i2 < 0) {
            boolean canScrollVertically = view2.canScrollVertically(-1);
            if (!this.ax && !this.r && view2 == view3 && canScrollVertically) {
                this.al = true;
                return;
            }
            if (!canScrollVertically) {
                int i5 = this.x;
                if (i4 > i5 && !this.bn) {
                    int i6 = top - i5;
                    iArr[1] = i6;
                    goi.m(-i6, view);
                    cd(4);
                } else {
                    if (!this.an) {
                        return;
                    }
                    iArr[1] = i2;
                    goi.m(-i2, view);
                    cd(1);
                }
            }
        }
        cb(view.getTop());
        this.v = i2;
        this.ax = true;
        this.al = false;
    }

    @Override // g.dip
    public final boolean n(View view, MotionEvent motionEvent) {
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        int i = this.w;
        if (i == 1 && actionMasked == 0) {
            return true;
        }
        dfv dfvVar = this.bh;
        if (dfvVar != null && (this.an || i == 1)) {
            dfvVar.aj(motionEvent);
        }
        if (actionMasked == 0) {
            this.aw = -1;
            this.aj = -1;
            VelocityTracker velocityTracker = this.bm;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.bm = null;
            }
        }
        if (this.bm == null) {
            this.bm = VelocityTracker.obtain();
        }
        this.bm.addMovement(motionEvent);
        if (this.bh != null && ((this.an || this.w == 1) && actionMasked == 2 && !this.ay)) {
            float abs = Math.abs(this.aj - motionEvent.getY());
            dfv dfvVar2 = this.bh;
            if (abs > dfvVar2.p) {
                dfvVar2.ai(motionEvent.getPointerId(motionEvent.getActionIndex()), view);
            }
        }
        return !this.ay;
    }

    @Override // g.dip
    public final boolean o(CoordinatorLayout coordinatorLayout, View view, int i) {
        if (coordinatorLayout.getFitsSystemWindows() && !view.getFitsSystemWindows()) {
            view.setFitsSystemWindows(true);
        }
        if (this.ap == null) {
            this.bq = coordinatorLayout.getResources().getDimensionPixelSize(R.dimen.design_bottom_sheet_peek_height_min);
            int i2 = Build.VERSION.SDK_INT;
            boolean z = (i2 < 29 || this.aa || this.ar) ? false : true;
            if (this.t || this.au || this.bd || this.at || this.bf || this.ah || z) {
                gez gezVar = new gez(this, z);
                int paddingStart = view.getPaddingStart();
                view.getPaddingTop();
                int paddingEnd = view.getPaddingEnd();
                int paddingBottom = view.getPaddingBottom();
                br brVar = new br();
                brVar.f12061a = paddingStart;
                brVar.f12062b = paddingEnd;
                brVar.f12063c = paddingBottom;
                fdy fdyVar = new fdy(gezVar, 16, brVar);
                WeakHashMap weakHashMap = goi.f18490c;
                cd.b(view, fdyVar);
                if (view.isAttachedToWindow()) {
                    view.requestApplyInsets();
                } else {
                    view.addOnAttachStateChangeListener(new dro());
                }
            }
            gcu gcuVar = new gcu(view);
            WeakHashMap weakHashMap2 = goi.f18490c;
            if (i2 >= 30) {
                view.setWindowInsetsAnimationCallback(new alc(gcuVar));
            } else {
                PathInterpolator pathInterpolator = cuo.j;
                View.OnApplyWindowInsetsListener egpVar = new egp(view, gcuVar);
                view.setTag(R.id.tag_window_insets_animation_callback, egpVar);
                if (view.getTag(R.id.tag_compat_insets_dispatch) == null && view.getTag(R.id.tag_on_apply_window_listener) == null) {
                    view.setOnApplyWindowInsetsListener(egpVar);
                }
            }
            this.ap = new WeakReference(view);
            new PathInterpolator(0.1f, 0.1f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
            Context context = view.getContext();
            egh.bf(context, R.attr.motionDurationMedium2, TTAdConstant.DEFAULT_LIVE_SHOW_TIME_MAX);
            egh.bf(context, R.attr.motionDurationShort3, 150);
            egh.bf(context, R.attr.motionDurationShort2, 100);
            Resources resources = view.getResources();
            resources.getDimension(R.dimen.m3_back_progress_bottom_container_max_scale_x_distance);
            resources.getDimension(R.dimen.m3_back_progress_bottom_container_max_scale_y_distance);
            ddm ddmVar = this.az;
            if (ddmVar != null) {
                view.setBackground(ddmVar);
                float f2 = this.q;
                if (f2 == -1.0f) {
                    f2 = view.getElevation();
                }
                ddmVar.ec(f2);
            } else {
                ColorStateList colorStateList = this.bc;
                if (colorStateList != null) {
                    goi.y(view, colorStateList);
                }
            }
            ci();
            if (view.getImportantForAccessibility() == 0) {
                view.setImportantForAccessibility(1);
            }
        }
        if (this.bh == null) {
            this.bh = new dfv(coordinatorLayout.getContext(), coordinatorLayout, this.bl);
        }
        int top = view.getTop();
        coordinatorLayout.as(i, view);
        this.af = coordinatorLayout.getWidth();
        this.z = coordinatorLayout.getHeight();
        int height = view.getHeight();
        this.bb = height;
        int i3 = this.z;
        int i4 = i3 - height;
        int i5 = this.aq;
        if (i4 < i5) {
            boolean z2 = this.br;
            int i6 = this.ad;
            if (z2) {
                if (i6 != -1) {
                    i3 = Math.min(i3, i6);
                }
                this.bb = i3;
            } else {
                int i7 = i3 - i5;
                if (i6 != -1) {
                    i7 = Math.min(i7, i6);
                }
                this.bb = i7;
            }
        }
        this.ai = Math.max(0, this.z - this.bb);
        this.bo = (int) ((1.0f - this.bg) * this.z);
        cn();
        int i8 = this.w;
        if (i8 == 3) {
            goi.m(cm(), view);
        } else if (i8 == 6) {
            goi.m(this.bo, view);
        } else if (this.bn && i8 == 5) {
            goi.m(this.z, view);
        } else if (i8 == 4) {
            goi.m(this.x, view);
        } else if (i8 == 1 || i8 == 2) {
            goi.m(top - view.getTop(), view);
        }
        by(this.w, false);
        this.am = new WeakReference(bt(view));
        ArrayList arrayList = this.bs;
        if (arrayList.size() <= 0) {
            return true;
        }
        throw tn.w(0, arrayList);
    }
}
