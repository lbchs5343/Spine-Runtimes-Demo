package com.google.android.material.sidesheet;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.PathInterpolator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.awf;
import g.bem;
import g.bnm;
import g.cjg;
import g.cpq;
import g.csk;
import g.ddm;
import g.dfv;
import g.dip;
import g.egh;
import g.erl;
import g.ett;
import g.eu;
import g.ev;
import g.fpp;
import g.git;
import g.goi;
import g.gs;
import g.gsw;
import g.tn;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* loaded from: classes3.dex */
public class SideSheetBehavior<V extends View> extends dip {
    public WeakReference aa;

    /* renamed from: ab, reason: collision with root package name */
    public int f9068ab;
    public dfv ac;
    public final ddm ad;
    public boolean ae;
    public WeakReference af;
    public int ag;
    public final ColorStateList ah;
    public final boolean ai;
    public final int aj;

    /* renamed from: b, reason: collision with root package name */
    public int f9069b;
    public final float p;
    public int q;
    public int r;
    public final cjg s;
    public int t;
    public final cpq u;
    public erl v;
    public final LinkedHashSet w;
    public final bnm x;
    public final float y;
    public VelocityTracker z;

    public static class a extends gsw {
        public static final Parcelable.Creator<a> CREATOR = new com.google.android.material.sidesheet.a();
        final int state;

        public a(Parcel parcel) {
            this(parcel, (ClassLoader) null);
        }

        public a(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.state = parcel.readInt();
        }

        public a(Parcelable parcelable, SideSheetBehavior<?> sideSheetBehavior) {
            super(parcelable);
            this.state = sideSheetBehavior.f9069b;
        }

        @Override // g.gsw, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.state);
        }
    }

    public SideSheetBehavior() {
        this.u = new cpq(this);
        this.ai = true;
        this.f9069b = 5;
        this.p = 0.1f;
        this.aj = -1;
        this.w = new LinkedHashSet();
        this.x = new bnm(this, 1);
    }

    public SideSheetBehavior(Context context, AttributeSet attributeSet) {
        this.u = new cpq(this);
        this.ai = true;
        this.f9069b = 5;
        this.p = 0.1f;
        this.aj = -1;
        this.w = new LinkedHashSet();
        this.x = new bnm(this, 1);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, git.ag);
        if (obtainStyledAttributes.hasValue(3)) {
            this.ah = gs.ai(context, obtainStyledAttributes, 3);
        }
        if (obtainStyledAttributes.hasValue(6)) {
            this.s = cjg.n(context, attributeSet, 0, R.style.Widget_Material3_SideSheet).n();
        }
        if (obtainStyledAttributes.hasValue(5)) {
            int resourceId = obtainStyledAttributes.getResourceId(5, -1);
            this.aj = resourceId;
            WeakReference weakReference = this.af;
            if (weakReference != null) {
                weakReference.clear();
            }
            this.af = null;
            WeakReference weakReference2 = this.aa;
            if (weakReference2 != null) {
                View view = (View) weakReference2.get();
                if (resourceId != -1 && view.isLaidOut()) {
                    view.requestLayout();
                }
            }
        }
        cjg cjgVar = this.s;
        if (cjgVar != null) {
            ddm ddmVar = new ddm(cjgVar);
            this.ad = ddmVar;
            ddmVar.ef(context);
            ColorStateList colorStateList = this.ah;
            if (colorStateList != null) {
                this.ad.en(colorStateList);
            } else {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true);
                this.ad.setTint(typedValue.data);
            }
        }
        this.y = obtainStyledAttributes.getDimension(2, -1.0f);
        this.ai = obtainStyledAttributes.getBoolean(4, true);
        obtainStyledAttributes.recycle();
        ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    public final void ak() {
        View view;
        WeakReference weakReference = this.aa;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        goi.j(262144, view);
        goi.w(0, view);
        goi.j(1048576, view);
        goi.w(0, view);
        int i = 5;
        if (this.f9069b != 5) {
            goi.s(view, csk.i, new ev(i, this));
        }
        int i2 = 3;
        if (this.f9069b != 3) {
            goi.s(view, csk.f13428a, new ev(i2, this));
        }
    }

    public final boolean al() {
        if (this.ac != null) {
            return this.ai || this.f9069b == 1;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002d, code lost:
    
        if (r1.y(r0, r3.getTop()) != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x004d, code lost:
    
        an(2);
        r2.u.g(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0056, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004b, code lost:
    
        if (r3 != false) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void am(View view, int i, boolean z) {
        int br;
        if (i == 3) {
            br = this.v.br();
        } else {
            if (i != 5) {
                throw new IllegalArgumentException(awf.ac(i, "Invalid state to get outer edge offset: "));
            }
            br = this.v.bm();
        }
        dfv dfvVar = this.ac;
        if (dfvVar != null) {
            if (!z) {
                int top = view.getTop();
                dfvVar.v = view;
                dfvVar.t = -1;
                boolean w = dfvVar.w(br, top, 0, 0);
                if (!w && dfvVar.i == 0 && dfvVar.v != null) {
                    dfvVar.v = null;
                }
            }
        }
        an(i);
    }

    public final void an(int i) {
        View view;
        if (this.f9069b == i) {
            return;
        }
        this.f9069b = i;
        WeakReference weakReference = this.aa;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        int i2 = this.f9069b == 5 ? 4 : 0;
        if (view.getVisibility() != i2) {
            view.setVisibility(i2);
        }
        Iterator it = this.w.iterator();
        if (it.hasNext()) {
            throw tn.c(it);
        }
        ak();
    }

    @Override // g.dip
    public final void ca() {
        this.aa = null;
        this.ac = null;
    }

    @Override // g.dip
    public final void cj(eu euVar) {
        this.aa = null;
        this.ac = null;
    }

    @Override // g.dip
    public final boolean f(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i, coordinatorLayout.getPaddingRight() + coordinatorLayout.getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i3, coordinatorLayout.getPaddingBottom() + coordinatorLayout.getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height));
        return true;
    }

    @Override // g.dip
    public final Parcelable i(View view) {
        return new a((Parcelable) View.BaseSavedState.EMPTY_STATE, (SideSheetBehavior<?>) this);
    }

    @Override // g.dip
    public final boolean j(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        dfv dfvVar;
        VelocityTracker velocityTracker;
        if ((!view.isShown() && goi.n(view) == null) || !this.ai) {
            this.ae = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0 && (velocityTracker = this.z) != null) {
            velocityTracker.recycle();
            this.z = null;
        }
        if (this.z == null) {
            this.z = VelocityTracker.obtain();
        }
        this.z.addMovement(motionEvent);
        if (actionMasked == 0) {
            this.ag = (int) motionEvent.getX();
        } else if ((actionMasked == 1 || actionMasked == 3) && this.ae) {
            this.ae = false;
            return false;
        }
        return (this.ae || (dfvVar = this.ac) == null || !dfvVar.af(motionEvent)) ? false : true;
    }

    @Override // g.dip
    public final void l(View view, Parcelable parcelable) {
        a aVar = (a) parcelable;
        if (aVar.getSuperState() != null) {
            aVar.getSuperState();
        }
        int i = aVar.state;
        if (i == 1 || i == 2) {
            i = 5;
        }
        this.f9069b = i;
    }

    @Override // g.dip
    public final boolean n(View view, MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.f9069b == 1 && actionMasked == 0) {
            return true;
        }
        if (al()) {
            this.ac.aj(motionEvent);
        }
        if (actionMasked == 0 && (velocityTracker = this.z) != null) {
            velocityTracker.recycle();
            this.z = null;
        }
        if (this.z == null) {
            this.z = VelocityTracker.obtain();
        }
        this.z.addMovement(motionEvent);
        if (al() && actionMasked == 2 && !this.ae && al()) {
            float abs = Math.abs(this.ag - motionEvent.getX());
            dfv dfvVar = this.ac;
            if (abs > dfvVar.p) {
                dfvVar.ai(motionEvent.getPointerId(motionEvent.getActionIndex()), view);
            }
        }
        return !this.ae;
    }

    @Override // g.dip
    public final boolean o(CoordinatorLayout coordinatorLayout, View view, int i) {
        View view2;
        View view3;
        int i2;
        View findViewById;
        if (coordinatorLayout.getFitsSystemWindows() && !view.getFitsSystemWindows()) {
            view.setFitsSystemWindows(true);
        }
        int i3 = 0;
        if (this.aa == null) {
            this.aa = new WeakReference(view);
            new PathInterpolator(0.1f, 0.1f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
            Context context = view.getContext();
            egh.bf(context, R.attr.motionDurationMedium2, TTAdConstant.DEFAULT_LIVE_SHOW_TIME_MAX);
            egh.bf(context, R.attr.motionDurationShort3, 150);
            egh.bf(context, R.attr.motionDurationShort2, 100);
            Resources resources = view.getResources();
            resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_x_distance_shrink);
            resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_x_distance_grow);
            resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_y_distance);
            ddm ddmVar = this.ad;
            if (ddmVar != null) {
                view.setBackground(ddmVar);
                float f2 = this.y;
                if (f2 == -1.0f) {
                    f2 = view.getElevation();
                }
                this.ad.ec(f2);
            } else {
                ColorStateList colorStateList = this.ah;
                if (colorStateList != null) {
                    goi.y(view, colorStateList);
                }
            }
            int i4 = this.f9069b == 5 ? 4 : 0;
            if (view.getVisibility() != i4) {
                view.setVisibility(i4);
            }
            ak();
            if (view.getImportantForAccessibility() == 0) {
                view.setImportantForAccessibility(1);
            }
            if (goi.n(view) == null) {
                goi.r(view, view.getResources().getString(R.string.side_sheet_accessibility_pane_title));
            }
        }
        int i5 = Gravity.getAbsoluteGravity(((eu) view.getLayoutParams()).n, i) == 3 ? 1 : 0;
        erl erlVar = this.v;
        if (erlVar == null || erlVar.bq() != i5) {
            eu euVar = null;
            cjg cjgVar = this.s;
            if (i5 == 0) {
                this.v = new fpp(this, 1);
                if (cjgVar != null) {
                    WeakReference weakReference = this.aa;
                    if (weakReference != null && (view3 = (View) weakReference.get()) != null && (view3.getLayoutParams() instanceof eu)) {
                        euVar = (eu) view3.getLayoutParams();
                    }
                    if (euVar == null || ((ViewGroup.MarginLayoutParams) euVar).rightMargin <= 0) {
                        bem r = cjgVar.r();
                        r.f11392g = new ett(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                        r.l = new ett(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                        cjg n = r.n();
                        ddm ddmVar2 = this.ad;
                        if (ddmVar2 != null) {
                            ddmVar2.setShapeAppearanceModel(n);
                        }
                    }
                }
            } else {
                if (i5 != 1) {
                    throw new IllegalArgumentException(awf.b(i5, "Invalid sheet edge position value: ", ". Must be 0 or 1."));
                }
                this.v = new fpp(this, 0);
                if (cjgVar != null) {
                    WeakReference weakReference2 = this.aa;
                    if (weakReference2 != null && (view2 = (View) weakReference2.get()) != null && (view2.getLayoutParams() instanceof eu)) {
                        euVar = (eu) view2.getLayoutParams();
                    }
                    if (euVar == null || ((ViewGroup.MarginLayoutParams) euVar).leftMargin <= 0) {
                        bem r2 = cjgVar.r();
                        r2.f11390e = new ett(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                        r2.f11386a = new ett(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                        cjg n2 = r2.n();
                        ddm ddmVar3 = this.ad;
                        if (ddmVar3 != null) {
                            ddmVar3.setShapeAppearanceModel(n2);
                        }
                    }
                }
            }
        }
        if (this.ac == null) {
            this.ac = new dfv(coordinatorLayout.getContext(), coordinatorLayout, this.x);
        }
        int bk = this.v.bk(view);
        coordinatorLayout.as(i, view);
        this.f9068ab = coordinatorLayout.getWidth();
        this.r = this.v.bl(coordinatorLayout);
        this.t = view.getWidth();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        this.q = marginLayoutParams != null ? this.v.be(marginLayoutParams) : 0;
        int i6 = this.f9069b;
        if (i6 == 1 || i6 == 2) {
            i3 = bk - this.v.bk(view);
        } else if (i6 != 3) {
            if (i6 != 5) {
                throw new IllegalStateException("Unexpected value: " + this.f9069b);
            }
            i3 = this.v.bm();
        }
        goi.i(i3, view);
        if (this.af == null && (i2 = this.aj) != -1 && (findViewById = coordinatorLayout.findViewById(i2)) != null) {
            this.af = new WeakReference(findViewById);
        }
        Iterator it = this.w.iterator();
        while (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
        }
        return true;
    }
}
