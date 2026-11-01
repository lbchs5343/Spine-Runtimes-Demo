package com.google.android.material.carousel;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.b;
import androidx.recyclerview.widget.f;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.akp;
import g.aqz;
import g.awf;
import g.axc;
import g.cph;
import g.exz;
import g.git;
import g.god;
import g.wp;
import g.yx;

/* loaded from: classes3.dex */
public class CarouselLayoutManager extends b implements wp {

    /* renamed from: a, reason: collision with root package name */
    public final akp f9028a;

    /* renamed from: b, reason: collision with root package name */
    public cph f9029b;

    /* renamed from: c, reason: collision with root package name */
    public final View.OnLayoutChangeListener f9030c;

    public CarouselLayoutManager() {
        akp akpVar = new akp();
        new exz();
        this.f9030c = new axc(1, this);
        this.f9028a = akpVar;
        em();
        f(0);
    }

    @SuppressLint({"UnknownNullness"})
    public CarouselLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        new exz();
        this.f9030c = new axc(1, this);
        this.f9028a = new akp();
        em();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, git.ae);
            obtainStyledAttributes.getInt(0, 0);
            em();
            f(obtainStyledAttributes.getInt(0, 0));
            obtainStyledAttributes.recycle();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x0028, code lost:
    
        if (r6 != 1) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0032, code lost:
    
        if (e() != false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0036, code lost:
    
        if (r6 == 1) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x003f, code lost:
    
        if (e() != false) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:48:? A[RETURN, SYNTHETIC] */
    @Override // androidx.recyclerview.widget.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final View aj(View view, int i, f fVar, aqz aqzVar) {
        char c2;
        if (et() == 0) {
            return null;
        }
        int i2 = this.f9029b.f13270a;
        if (i != 1) {
            if (i != 2) {
                if (i == 17) {
                    if (i2 == 0) {
                    }
                    c2 = 0;
                } else if (i != 33) {
                    if (i != 66) {
                        if (i == 130) {
                        }
                        c2 = 0;
                    } else {
                        if (i2 == 0) {
                        }
                        c2 = 0;
                    }
                }
                if (c2 == 0) {
                    return null;
                }
                if (c2 == 65535) {
                    if (b.ed(view) == 0) {
                        return null;
                    }
                    int ed = b.ed(eo(0)) - 1;
                    if (ed < 0 || ed >= en()) {
                        return eo(e() ? et() - 1 : 0);
                    }
                    this.f9029b.d();
                    throw null;
                }
                if (b.ed(view) == en() - 1) {
                    return null;
                }
                int ed2 = b.ed(eo(et() - 1)) + 1;
                if (ed2 < 0 || ed2 >= en()) {
                    return eo(e() ? 0 : et() - 1);
                }
                this.f9029b.d();
                throw null;
            }
            c2 = 1;
            if (c2 == 0) {
            }
        }
        c2 = 65535;
        if (c2 == 0) {
        }
    }

    @Override // androidx.recyclerview.widget.b
    public final int am(int i, f fVar, aqz aqzVar) {
        if (!d() || et() == 0 || i == 0) {
            return 0;
        }
        fVar.n(0);
        throw new IllegalStateException("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
    }

    @Override // androidx.recyclerview.widget.b
    public final void ap(aqz aqzVar) {
        if (et() == 0) {
            return;
        }
        b.ed(eo(0));
    }

    @Override // androidx.recyclerview.widget.b
    public final void au() {
        en();
    }

    @Override // androidx.recyclerview.widget.b
    public final yx az() {
        return new yx(-2, -2);
    }

    @Override // androidx.recyclerview.widget.b
    public final void bb(int i, int i2) {
        en();
    }

    @Override // androidx.recyclerview.widget.b
    public final boolean ca() {
        return d();
    }

    @Override // androidx.recyclerview.widget.b
    public final boolean cd() {
        return !d();
    }

    @Override // androidx.recyclerview.widget.b
    public final void ce(AccessibilityEvent accessibilityEvent) {
        super.ce(accessibilityEvent);
        if (et() > 0) {
            accessibilityEvent.setFromIndex(b.ed(eo(0)));
            accessibilityEvent.setToIndex(b.ed(eo(et() - 1)));
        }
    }

    @Override // g.wp
    public final PointF cf(int i) {
        return null;
    }

    @Override // androidx.recyclerview.widget.b
    public final boolean ch() {
        return true;
    }

    @Override // androidx.recyclerview.widget.b
    public final void cm(RecyclerView recyclerView, int i) {
        god godVar = new god(this, recyclerView.getContext());
        godVar.h = i;
        ep(godVar);
    }

    @Override // androidx.recyclerview.widget.b
    public final int cr(aqz aqzVar) {
        et();
        return 0;
    }

    @Override // androidx.recyclerview.widget.b
    public final int cx(aqz aqzVar) {
        et();
        return 0;
    }

    public final boolean d() {
        return this.f9029b.f13270a == 0;
    }

    @Override // androidx.recyclerview.widget.b
    public final void dc(RecyclerView recyclerView) {
        recyclerView.removeOnLayoutChangeListener(this.f9030c);
    }

    @Override // androidx.recyclerview.widget.b
    public final void dh(int i) {
    }

    public final boolean e() {
        return d() && this.dw.getLayoutDirection() == 1;
    }

    @Override // androidx.recyclerview.widget.b
    public final void ek(View view, Rect rect) {
        RecyclerView.getDecoratedBoundsWithMarginsInt(view, rect);
        rect.centerY();
        if (d()) {
            rect.centerX();
        }
        throw null;
    }

    @Override // androidx.recyclerview.widget.b
    public final void ey(RecyclerView recyclerView) {
        Context context = recyclerView.getContext();
        akp akpVar = this.f9028a;
        float f2 = akpVar.f10398a;
        if (f2 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            f2 = context.getResources().getDimension(R.dimen.m3_carousel_small_item_size_min);
        }
        akpVar.f10398a = f2;
        float f3 = akpVar.f10399b;
        if (f3 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            f3 = context.getResources().getDimension(R.dimen.m3_carousel_small_item_size_max);
        }
        akpVar.f10399b = f3;
        em();
        recyclerView.addOnLayoutChangeListener(this.f9030c);
    }

    public final void f(int i) {
        cph cphVar;
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException(awf.ac(i, "invalid orientation:"));
        }
        de(null);
        cph cphVar2 = this.f9029b;
        if (cphVar2 == null || i != cphVar2.f13270a) {
            if (i == 0) {
                cphVar = new cph(this, 1);
            } else {
                if (i != 1) {
                    throw new IllegalArgumentException("invalid orientation");
                }
                cphVar = new cph(this, 0);
            }
            this.f9029b = cphVar;
            em();
        }
    }

    @Override // androidx.recyclerview.widget.b
    public final boolean fa(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
        return false;
    }

    public final float g(float f2, float f3) {
        return e() ? f2 - f3 : f2 + f3;
    }

    @Override // androidx.recyclerview.widget.b
    public final int m(int i, f fVar, aqz aqzVar) {
        if (!cd() || et() == 0 || i == 0) {
            return 0;
        }
        fVar.n(0);
        throw new IllegalStateException("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
    }

    @Override // androidx.recyclerview.widget.b
    public final int q(aqz aqzVar) {
        return 0;
    }

    @Override // androidx.recyclerview.widget.b
    public final void r(f fVar, aqz aqzVar) {
        if (aqzVar.p() > 0) {
            if ((d() ? this.f0do : this.dn) > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                e();
                fVar.n(0);
                throw new IllegalStateException("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
            }
        }
        fh(fVar);
    }

    @Override // androidx.recyclerview.widget.b
    public final int s(aqz aqzVar) {
        return 0;
    }

    @Override // androidx.recyclerview.widget.b
    public final int w(aqz aqzVar) {
        return 0;
    }

    @Override // androidx.recyclerview.widget.b
    public final int x(aqz aqzVar) {
        return 0;
    }

    @Override // androidx.recyclerview.widget.b
    public final void y(int i, int i2) {
        en();
    }
}
