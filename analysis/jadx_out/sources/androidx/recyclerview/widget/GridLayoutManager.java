package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.aeg;
import g.aqz;
import g.awf;
import g.ayb;
import g.bjd;
import g.cea;
import g.cgo;
import g.cju;
import g.csk;
import g.efd;
import g.fc;
import g.fnz;
import g.goi;
import g.yx;
import j$.util.Objects;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.TreeMap;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class GridLayoutManager extends LinearLayoutManager {

    /* renamed from: a, reason: collision with root package name */
    public static final Set f245a = Collections.unmodifiableSet(new HashSet(Arrays.asList(17, 66, 33, 130)));

    /* renamed from: b, reason: collision with root package name */
    public View[] f246b;

    /* renamed from: c, reason: collision with root package name */
    public final Rect f247c;

    /* renamed from: d, reason: collision with root package name */
    public int f248d;

    /* renamed from: e, reason: collision with root package name */
    public int[] f249e;

    /* renamed from: f, reason: collision with root package name */
    public int f250f;

    /* renamed from: g, reason: collision with root package name */
    public cgo f251g;
    public final SparseIntArray h;
    public int i;
    public int j;
    public final SparseIntArray k;
    public boolean l;

    public GridLayoutManager(int i) {
        super(1);
        this.l = false;
        this.i = -1;
        this.k = new SparseIntArray();
        this.h = new SparseIntArray();
        this.f251g = new aeg();
        this.f247c = new Rect();
        this.f250f = -1;
        this.f248d = -1;
        this.j = -1;
        as(i);
    }

    public GridLayoutManager(int i, int i2) {
        super(1);
        this.l = false;
        this.i = -1;
        this.k = new SparseIntArray();
        this.h = new SparseIntArray();
        this.f251g = new aeg();
        this.f247c = new Rect();
        this.f250f = -1;
        this.f248d = -1;
        this.j = -1;
        as(i);
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.l = false;
        this.i = -1;
        this.k = new SparseIntArray();
        this.h = new SparseIntArray();
        this.f251g = new aeg();
        this.f247c = new Rect();
        this.f250f = -1;
        this.f248d = -1;
        this.j = -1;
        as(b.eb(context, attributeSet, i, i2).f18785c);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void aa(aqz aqzVar, cju cjuVar, r rVar) {
        int i;
        int i2 = this.i;
        for (int i3 = 0; i3 < this.i && (i = cjuVar.f13002c) >= 0 && i < aqzVar.p() && i2 > 0; i3++) {
            int i4 = cjuVar.f13002c;
            rVar.e(i4, Math.max(0, cjuVar.l));
            i2 -= this.f251g._r(i4);
            cjuVar.f13002c += cjuVar.f13004e;
        }
    }

    @Override // androidx.recyclerview.widget.b
    public final boolean ab(yx yxVar) {
        return yxVar instanceof ayb;
    }

    public final HashSet ac(int i) {
        return ax(ba(i), i);
    }

    public final void ad() {
        View[] viewArr = this.f246b;
        if (viewArr == null || viewArr.length != this.i) {
            this.f246b = new View[this.i];
        }
    }

    @Override // androidx.recyclerview.widget.b
    public final yx ae(Context context, AttributeSet attributeSet) {
        ayb aybVar = new ayb(context, attributeSet);
        aybVar.f11050e = -1;
        aybVar.f11051f = 0;
        return aybVar;
    }

    public final int af(int i) {
        if (this.bm == 0) {
            RecyclerView recyclerView = this.dw;
            return bc(i, recyclerView.mRecycler, recyclerView.mState);
        }
        RecyclerView recyclerView2 = this.dw;
        return o(i, recyclerView2.mRecycler, recyclerView2.mState);
    }

    @Override // androidx.recyclerview.widget.b
    public final void ag(int i, int i2) {
        this.f251g.af();
        ((SparseIntArray) this.f251g.f12848ab).clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.b
    public final boolean ah() {
        return this.bd == null && !this.l;
    }

    public final void ai() {
        int er;
        int fd;
        if (this.bm == 1) {
            er = this.f0do - fj();
            fd = eq();
        } else {
            er = this.dn - er();
            fd = fd();
        }
        p(er - fd);
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x00e0, code lost:
    
        if (r13 == (r2 > r15)) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0105, code lost:
    
        if (r13 == (r2 > r8)) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x001f, code lost:
    
        if (r22.ds.f307e.contains(r3) != false) goto L10;
     */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final View aj(View view, int i, f fVar, aqz aqzVar) {
        View findContainingItemView;
        int et;
        int i2;
        int i3;
        View view2;
        View view3;
        int i4;
        int i5;
        f fVar2 = fVar;
        aqz aqzVar2 = aqzVar;
        RecyclerView recyclerView = this.dw;
        if (recyclerView != null) {
            findContainingItemView = recyclerView.findContainingItemView(view);
            if (findContainingItemView != null) {
            }
        }
        findContainingItemView = null;
        if (findContainingItemView != null) {
            ayb aybVar = (ayb) findContainingItemView.getLayoutParams();
            int i6 = aybVar.f11050e;
            int i7 = aybVar.f11051f + i6;
            if (super.aj(view, i, fVar, aqzVar) != null) {
                if ((dk(i) == 1) != this.bg) {
                    i2 = et() - 1;
                    et = -1;
                    i3 = -1;
                } else {
                    et = et();
                    i2 = 0;
                    i3 = 1;
                }
                boolean z = this.bm == 1 && ck();
                int bc = bc(i2, fVar2, aqzVar2);
                View view4 = null;
                int i8 = i2;
                int i9 = -1;
                int i10 = 0;
                int i11 = -1;
                View view5 = null;
                int i12 = 0;
                while (true) {
                    view2 = view5;
                    if (i8 == et) {
                        break;
                    }
                    int bc2 = bc(i8, fVar2, aqzVar2);
                    View eo = eo(i8);
                    if (eo == findContainingItemView) {
                        break;
                    }
                    if (!eo.hasFocusable() || bc2 == bc) {
                        ayb aybVar2 = (ayb) eo.getLayoutParams();
                        int i13 = aybVar2.f11050e;
                        view3 = findContainingItemView;
                        int i14 = aybVar2.f11051f + i13;
                        if (eo.hasFocusable() && i13 == i6 && i14 == i7) {
                            return eo;
                        }
                        if (!(eo.hasFocusable() && view4 == null) && (eo.hasFocusable() || view2 != null)) {
                            i4 = et;
                            int min = Math.min(i14, i7) - Math.max(i13, i6);
                            if (eo.hasFocusable()) {
                                if (min <= i10) {
                                    if (min == i10) {
                                    }
                                    i5 = i10;
                                }
                                i5 = i10;
                            } else {
                                if (view4 == null) {
                                    i5 = i10;
                                    if (!this.dy.r(eo) || !this.dp.r(eo)) {
                                        if (min <= i12) {
                                            if (min == i12) {
                                            }
                                        }
                                    }
                                }
                                i5 = i10;
                            }
                        } else {
                            i5 = i10;
                            i4 = et;
                        }
                        if (eo.hasFocusable()) {
                            int i15 = aybVar2.f11050e;
                            i10 = Math.min(i14, i7) - Math.max(i13, i6);
                            view4 = eo;
                            i11 = i15;
                            view5 = view2;
                        } else {
                            int i16 = aybVar2.f11050e;
                            view5 = eo;
                            i9 = i16;
                            i10 = i5;
                            i12 = Math.min(i14, i7) - Math.max(i13, i6);
                        }
                        i8 += i3;
                        fVar2 = fVar;
                        aqzVar2 = aqzVar;
                        findContainingItemView = view3;
                        et = i4;
                    } else {
                        if (view4 != null) {
                            break;
                        }
                        view3 = findContainingItemView;
                        i5 = i10;
                        i4 = et;
                    }
                    view5 = view2;
                    i10 = i5;
                    i8 += i3;
                    fVar2 = fVar;
                    aqzVar2 = aqzVar;
                    findContainingItemView = view3;
                    et = i4;
                }
                return view4 != null ? view4 : view2;
            }
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final View ak(f fVar, aqz aqzVar, boolean z, boolean z2) {
        int i;
        int i2;
        int et = et();
        int i3 = 1;
        if (z2) {
            i2 = et() - 1;
            i = -1;
            i3 = -1;
        } else {
            i = et;
            i2 = 0;
        }
        int p = aqzVar.p();
        cj();
        int p2 = this.br.p();
        int r = this.br.r();
        View view = null;
        View view2 = null;
        while (i2 != i) {
            View eo = eo(i2);
            int ed = b.ed(eo);
            if (ed >= 0 && ed < p && o(ed, fVar, aqzVar) == 0) {
                if (((yx) eo.getLayoutParams()).f20371b.u()) {
                    if (view2 == null) {
                        view2 = eo;
                    }
                } else {
                    if (this.br.k(eo) < r && this.br.o(eo) >= p2) {
                        return eo;
                    }
                    if (view == null) {
                        view = eo;
                    }
                }
            }
            i2 += i3;
        }
        return view != null ? view : view2;
    }

    public final void al(View view, int i, boolean z) {
        int i2;
        int i3;
        ayb aybVar = (ayb) view.getLayoutParams();
        Rect rect = aybVar.f20372c;
        int i4 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) aybVar).topMargin + ((ViewGroup.MarginLayoutParams) aybVar).bottomMargin;
        int i5 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) aybVar).leftMargin + ((ViewGroup.MarginLayoutParams) aybVar).rightMargin;
        int at = at(aybVar.f11050e, aybVar.f11051f);
        if (this.bm == 1) {
            i3 = b.ef(at, i, i5, ((ViewGroup.MarginLayoutParams) aybVar).width, false);
            i2 = b.ef(this.br.g(), this.du, i4, ((ViewGroup.MarginLayoutParams) aybVar).height, true);
        } else {
            int ef = b.ef(at, i, i4, ((ViewGroup.MarginLayoutParams) aybVar).height, false);
            int ef2 = b.ef(this.br.g(), this.dq, i5, ((ViewGroup.MarginLayoutParams) aybVar).width, true);
            i2 = ef;
            i3 = ef2;
        }
        yx yxVar = (yx) view.getLayoutParams();
        if (z ? ff(view, i3, i2, yxVar) : fk(view, i3, i2, yxVar)) {
            view.measure(i3, i2);
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.b
    public final int am(int i, f fVar, aqz aqzVar) {
        ai();
        ad();
        return super.am(i, fVar, aqzVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0096, code lost:
    
        r22.f15427c = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0098, code lost:
    
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v22 */
    /* JADX WARN: Type inference failed for: r12v23, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r12v26 */
    /* JADX WARN: Type inference failed for: r12v27 */
    /* JADX WARN: Type inference failed for: r12v34 */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void an(f fVar, aqz aqzVar, cju cjuVar, efd efdVar) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int ef;
        int i9;
        ?? r12;
        int i10;
        View n;
        bjd bjdVar = this.br;
        switch (bjdVar.f11689a) {
            case 0:
                i = bjdVar.f11690b.du;
                break;
            default:
                i = bjdVar.f11690b.dq;
                break;
        }
        boolean z = i != 1073741824;
        int i11 = et() > 0 ? this.f249e[this.i] : 0;
        if (z) {
            ai();
        }
        boolean z2 = cjuVar.f13004e == 1;
        int i12 = this.i;
        if (!z2) {
            i12 = o(cjuVar.f13002c, fVar, aqzVar) + t(cjuVar.f13002c, fVar, aqzVar);
        }
        int i13 = 0;
        while (i13 < this.i && (i10 = cjuVar.f13002c) >= 0 && i10 < aqzVar.p() && i12 > 0) {
            int i14 = cjuVar.f13002c;
            int t = t(i14, fVar, aqzVar);
            if (t > this.i) {
                throw new IllegalArgumentException(awf.x(awf.z(i14, t, "Item at position ", " requires ", " spans but GridLayoutManager has only "), this.i, " spans."));
            }
            i12 -= t;
            if (i12 >= 0 && (n = cjuVar.n(fVar)) != null) {
                this.f246b[i13] = n;
                i13++;
            }
        }
        if (z2) {
            i3 = i13;
            i2 = 0;
            i4 = 1;
        } else {
            i2 = i13 - 1;
            i3 = -1;
            i4 = -1;
        }
        int i15 = 0;
        while (i2 != i3) {
            View view = this.f246b[i2];
            ayb aybVar = (ayb) view.getLayoutParams();
            int t2 = t(b.ed(view), fVar, aqzVar);
            aybVar.f11051f = t2;
            aybVar.f11050e = i15;
            i15 += t2;
            i2 += i4;
        }
        float f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        int i16 = 0;
        for (int i17 = 0; i17 < i13; i17++) {
            View view2 = this.f246b[i17];
            if (cjuVar.f13001b != null) {
                r12 = 0;
                r12 = 0;
                if (z2) {
                    fc(view2, -1, true);
                } else {
                    fc(view2, 0, true);
                }
            } else if (z2) {
                r12 = 0;
                fc(view2, -1, false);
            } else {
                r12 = 0;
                fc(view2, 0, false);
            }
            RecyclerView recyclerView = this.dw;
            Rect rect = this.f247c;
            if (recyclerView == null) {
                rect.set(r12, r12, r12, r12);
            } else {
                rect.set(recyclerView.getItemDecorInsetsForChild(view2));
            }
            al(view2, i, r12);
            int q = this.br.q(view2);
            if (q > i16) {
                i16 = q;
            }
            float i18 = (this.br.i(view2) * 1.0f) / ((ayb) view2.getLayoutParams()).f11051f;
            if (i18 > f2) {
                f2 = i18;
            }
        }
        if (z) {
            p(Math.max(Math.round(f2 * this.i), i11));
            i16 = 0;
            for (int i19 = 0; i19 < i13; i19++) {
                View view3 = this.f246b[i19];
                al(view3, C.ENCODING_PCM_32BIT, true);
                int q2 = this.br.q(view3);
                if (q2 > i16) {
                    i16 = q2;
                }
            }
        }
        for (int i20 = 0; i20 < i13; i20++) {
            View view4 = this.f246b[i20];
            if (this.br.q(view4) != i16) {
                ayb aybVar2 = (ayb) view4.getLayoutParams();
                Rect rect2 = aybVar2.f20372c;
                int i21 = rect2.top + rect2.bottom + ((ViewGroup.MarginLayoutParams) aybVar2).topMargin + ((ViewGroup.MarginLayoutParams) aybVar2).bottomMargin;
                int i22 = rect2.left + rect2.right + ((ViewGroup.MarginLayoutParams) aybVar2).leftMargin + ((ViewGroup.MarginLayoutParams) aybVar2).rightMargin;
                int at = at(aybVar2.f11050e, aybVar2.f11051f);
                if (this.bm == 1) {
                    i9 = b.ef(at, C.ENCODING_PCM_32BIT, i22, ((ViewGroup.MarginLayoutParams) aybVar2).width, false);
                    ef = View.MeasureSpec.makeMeasureSpec(i16 - i21, C.ENCODING_PCM_32BIT);
                } else {
                    int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i16 - i22, C.ENCODING_PCM_32BIT);
                    ef = b.ef(at, C.ENCODING_PCM_32BIT, i21, ((ViewGroup.MarginLayoutParams) aybVar2).height, false);
                    i9 = makeMeasureSpec;
                }
                if (ff(view4, i9, ef, (yx) view4.getLayoutParams())) {
                    view4.measure(i9, ef);
                }
            }
        }
        efdVar.f15426b = i16;
        if (this.bm != 1) {
            if (cjuVar.f13006g == -1) {
                int i23 = cjuVar.i;
                i6 = i23 - i16;
                i5 = i23;
            } else {
                int i24 = cjuVar.i;
                i5 = i24 + i16;
                i6 = i24;
            }
            i7 = 0;
            i8 = 0;
        } else if (cjuVar.f13006g == -1) {
            i8 = cjuVar.i;
            i7 = i8 - i16;
            i6 = 0;
            i5 = 0;
        } else {
            int i25 = cjuVar.i;
            i7 = i25;
            i5 = 0;
            i8 = i25 + i16;
            i6 = 0;
        }
        for (int i26 = 0; i26 < i13; i26++) {
            View view5 = this.f246b[i26];
            ayb aybVar3 = (ayb) view5.getLayoutParams();
            if (this.bm != 1) {
                i7 = fd() + this.f249e[aybVar3.f11050e];
                i8 = this.br.i(view5) + i7;
            } else if (ck()) {
                int eq = eq() + this.f249e[this.i - aybVar3.f11050e];
                i5 = eq;
                i6 = eq - this.br.i(view5);
            } else {
                i6 = eq() + this.f249e[aybVar3.f11050e];
                i5 = this.br.i(view5) + i6;
            }
            b.ec(view5, i6, i7, i5, i8);
            if (aybVar3.f20371b.u() || aybVar3.f20371b.v()) {
                efdVar.f15428d = true;
            }
            efdVar.f15425a = view5.hasFocusable() | efdVar.f15425a;
        }
        Arrays.fill(this.f246b, (Object) null);
    }

    @Override // androidx.recyclerview.widget.b
    public final yx ao(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ayb aybVar = new ayb((ViewGroup.MarginLayoutParams) layoutParams);
            aybVar.f11050e = -1;
            aybVar.f11051f = 0;
            return aybVar;
        }
        ayb aybVar2 = new ayb(layoutParams);
        aybVar2.f11050e = -1;
        aybVar2.f11051f = 0;
        return aybVar2;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.b
    public final void ap(aqz aqzVar) {
        View cz;
        super.ap(aqzVar);
        this.l = false;
        int i = this.f250f;
        if (i == -1 || (cz = cz(i)) == null) {
            return;
        }
        cz.sendAccessibilityEvent(TTAdConstant.KEY_CLICK_AREA);
        this.f250f = -1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void aq(boolean z) {
        if (z) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.aq(false);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void ar(f fVar, aqz aqzVar, cea ceaVar, int i) {
        ai();
        if (aqzVar.p() > 0 && !aqzVar.n) {
            boolean z = i == 1;
            int o = o(ceaVar.f12725d, fVar, aqzVar);
            if (z) {
                while (o > 0) {
                    int i2 = ceaVar.f12725d;
                    if (i2 <= 0) {
                        break;
                    }
                    int i3 = i2 - 1;
                    ceaVar.f12725d = i3;
                    o = o(i3, fVar, aqzVar);
                }
            } else {
                int p = aqzVar.p() - 1;
                int i4 = ceaVar.f12725d;
                while (i4 < p) {
                    int i5 = i4 + 1;
                    int o2 = o(i5, fVar, aqzVar);
                    if (o2 <= o) {
                        break;
                    }
                    i4 = i5;
                    o = o2;
                }
                ceaVar.f12725d = i4;
            }
        }
        ad();
    }

    public final void as(int i) {
        if (i == this.i) {
            return;
        }
        this.l = true;
        if (i < 1) {
            throw new IllegalArgumentException(awf.ac(i, "Span count should be at least 1. Provided "));
        }
        this.i = i;
        this.f251g.af();
        em();
    }

    public final int at(int i, int i2) {
        if (this.bm != 1 || !ck()) {
            int[] iArr = this.f249e;
            return iArr[i2 + i] - iArr[i];
        }
        int[] iArr2 = this.f249e;
        int i3 = this.i;
        return iArr2[i3 - i] - iArr2[(i3 - i) - i2];
    }

    @Override // androidx.recyclerview.widget.b
    public final void au() {
        this.f251g.af();
        ((SparseIntArray) this.f251g.f12848ab).clear();
    }

    @Override // androidx.recyclerview.widget.b
    public final int av(f fVar, aqz aqzVar) {
        if (this.bm == 0) {
            return Math.min(this.i, en());
        }
        if (aqzVar.p() < 1) {
            return 0;
        }
        return bc(aqzVar.p() - 1, fVar, aqzVar) + 1;
    }

    @Override // androidx.recyclerview.widget.b
    public final int aw(f fVar, aqz aqzVar) {
        if (this.bm == 1) {
            return Math.min(this.i, en());
        }
        if (aqzVar.p() < 1) {
            return 0;
        }
        return bc(aqzVar.p() - 1, fVar, aqzVar) + 1;
    }

    public final HashSet ax(int i, int i2) {
        HashSet hashSet = new HashSet();
        RecyclerView recyclerView = this.dw;
        int t = t(i2, recyclerView.mRecycler, recyclerView.mState);
        for (int i3 = i; i3 < i + t; i3++) {
            hashSet.add(Integer.valueOf(i3));
        }
        return hashSet;
    }

    @Override // androidx.recyclerview.widget.b
    public final void ay(Rect rect, int i, int i2) {
        int eh;
        int eh2;
        if (this.f249e == null) {
            super.ay(rect, i, i2);
        }
        int fj = fj() + eq();
        int er = er() + fd();
        if (this.bm == 1) {
            int height = rect.height() + er;
            RecyclerView recyclerView = this.dw;
            WeakHashMap weakHashMap = goi.f18490c;
            eh2 = b.eh(i2, height, recyclerView.getMinimumHeight());
            int[] iArr = this.f249e;
            eh = b.eh(i, iArr[iArr.length - 1] + fj, this.dw.getMinimumWidth());
        } else {
            int width = rect.width() + fj;
            RecyclerView recyclerView2 = this.dw;
            WeakHashMap weakHashMap2 = goi.f18490c;
            eh = b.eh(i, width, recyclerView2.getMinimumWidth());
            int[] iArr2 = this.f249e;
            eh2 = b.eh(i2, iArr2[iArr2.length - 1] + er, this.dw.getMinimumHeight());
        }
        this.dw.setMeasuredDimension(eh, eh2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.b
    public final yx az() {
        return this.bm == 0 ? new ayb(-2, -1) : new ayb(-1, -2);
    }

    public final int ba(int i) {
        if (this.bm == 1) {
            RecyclerView recyclerView = this.dw;
            return bc(i, recyclerView.mRecycler, recyclerView.mState);
        }
        RecyclerView recyclerView2 = this.dw;
        return o(i, recyclerView2.mRecycler, recyclerView2.mState);
    }

    @Override // androidx.recyclerview.widget.b
    public final void bb(int i, int i2) {
        this.f251g.af();
        ((SparseIntArray) this.f251g.f12848ab).clear();
    }

    public final int bc(int i, f fVar, aqz aqzVar) {
        if (!aqzVar.n) {
            return this.f251g.ae(i, this.i);
        }
        int t = fVar.t(i);
        if (t == -1) {
            return 0;
        }
        return this.f251g.ae(t, this.i);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.b
    public final int m(int i, f fVar, aqz aqzVar) {
        ai();
        ad();
        return super.m(i, fVar, aqzVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x0283  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0218  */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean n(int i, Bundle bundle) {
        View view;
        p childViewHolder;
        int i2;
        int i3;
        if (i == csk.f13430c.o() && i != -1) {
            int i4 = 0;
            while (true) {
                if (i4 >= et()) {
                    view = null;
                    break;
                }
                View eo = eo(i4);
                Objects.requireNonNull(eo);
                if (eo.isAccessibilityFocused()) {
                    view = eo(i4);
                    break;
                }
                i4++;
            }
            if (view != null && bundle != null) {
                int i5 = bundle.getInt("android.view.accessibility.action.ARGUMENT_DIRECTION_INT", -1);
                if (f245a.contains(Integer.valueOf(i5)) && (childViewHolder = this.dw.getChildViewHolder(view)) != null) {
                    RecyclerView recyclerView = childViewHolder.m;
                    int adapterPositionInRecyclerView = recyclerView == null ? -1 : recyclerView.getAdapterPositionInRecyclerView(childViewHolder);
                    int ba = ba(adapterPositionInRecyclerView);
                    int af = af(adapterPositionInRecyclerView);
                    if (ba >= 0 && af >= 0) {
                        if (!ac(adapterPositionInRecyclerView).contains(Integer.valueOf(this.f248d)) || !ax(af(adapterPositionInRecyclerView), adapterPositionInRecyclerView).contains(Integer.valueOf(this.j))) {
                            this.f248d = ba;
                            this.j = af;
                        }
                        int i6 = this.f248d;
                        if (i6 == -1) {
                            i6 = ba;
                        }
                        int i7 = this.j;
                        if (i7 != -1) {
                            af = i7;
                        }
                        if (i5 == 17) {
                            i2 = adapterPositionInRecyclerView - 1;
                            while (i2 >= 0) {
                                int ba2 = ba(i2);
                                int af2 = af(i2);
                                if (ba2 < 0 || af2 < 0) {
                                    break;
                                }
                                if (this.bm != 1) {
                                    if (ac(i2).contains(Integer.valueOf(i6)) && af2 < af) {
                                        this.j = af2;
                                        break;
                                    }
                                    i2--;
                                } else {
                                    if ((ba2 == i6 && af2 < af) || ba2 < i6) {
                                        this.f248d = ba2;
                                        this.j = af2;
                                        break;
                                    }
                                    i2--;
                                }
                            }
                            i2 = -1;
                            if (i2 == -1) {
                            }
                            if (i2 != -1) {
                            }
                        } else if (i5 == 33) {
                            i2 = adapterPositionInRecyclerView - 1;
                            while (i2 >= 0) {
                                int ba3 = ba(i2);
                                int af3 = af(i2);
                                if (ba3 < 0 || af3 < 0) {
                                    break;
                                }
                                if (this.bm == 1) {
                                    if (ba3 < i6 && ax(af(i2), i2).contains(Integer.valueOf(af))) {
                                        this.f248d = ba3;
                                        break;
                                    }
                                    i2--;
                                } else {
                                    if (ba3 < i6 && af3 == af) {
                                        this.f248d = ((Integer) Collections.max(ac(i2))).intValue();
                                        break;
                                    }
                                    i2--;
                                }
                            }
                            i2 = -1;
                            if (i2 == -1) {
                            }
                            if (i2 != -1) {
                            }
                        } else if (i5 == 66) {
                            i2 = adapterPositionInRecyclerView + 1;
                            while (i2 < en()) {
                                int ba4 = ba(i2);
                                int af4 = af(i2);
                                if (ba4 < 0 || af4 < 0) {
                                    break;
                                }
                                if (this.bm != 1) {
                                    if (af4 > af && ac(i2).contains(Integer.valueOf(i6))) {
                                        this.j = af4;
                                        break;
                                    }
                                    i2++;
                                } else {
                                    if ((ba4 == i6 && af4 > af) || ba4 > i6) {
                                        this.f248d = ba4;
                                        this.j = af4;
                                        break;
                                    }
                                    i2++;
                                }
                            }
                            i2 = -1;
                            if (i2 == -1) {
                                if (i5 != 17) {
                                }
                            }
                            if (i2 != -1) {
                            }
                        } else if (i5 == 130) {
                            i2 = adapterPositionInRecyclerView + 1;
                            while (i2 < en()) {
                                int ba5 = ba(i2);
                                int af5 = af(i2);
                                if (ba5 < 0 || af5 < 0) {
                                    break;
                                }
                                if (this.bm == 1) {
                                    if (ba5 > i6 && (af5 == af || ax(af(i2), i2).contains(Integer.valueOf(af)))) {
                                        this.f248d = ba5;
                                        break;
                                    }
                                    i2++;
                                } else {
                                    if (ba5 > i6 && af5 == af) {
                                        this.f248d = ba(i2);
                                        break;
                                    }
                                    i2++;
                                }
                            }
                            i2 = -1;
                            if (i2 == -1 && (i3 = this.bm) == 0) {
                                if (i5 != 17) {
                                    if (ba >= 0 && i3 != 1) {
                                        TreeMap treeMap = new TreeMap(Collections.reverseOrder());
                                        int i8 = 0;
                                        loop2: while (true) {
                                            if (i8 >= en()) {
                                                for (Integer num : treeMap.keySet()) {
                                                    int intValue = num.intValue();
                                                    if (intValue < ba) {
                                                        i2 = ((Integer) treeMap.get(num)).intValue();
                                                        this.f248d = intValue;
                                                        this.j = af(i2);
                                                        break;
                                                    }
                                                }
                                            } else {
                                                Iterator it = ac(i8).iterator();
                                                while (it.hasNext()) {
                                                    Integer num2 = (Integer) it.next();
                                                    if (num2.intValue() < 0) {
                                                        break loop2;
                                                    }
                                                    treeMap.put(num2, Integer.valueOf(i8));
                                                }
                                                i8++;
                                            }
                                        }
                                    }
                                    i2 = -1;
                                } else if (i5 == 66) {
                                    if (ba >= 0 && i3 != 1) {
                                        TreeMap treeMap2 = new TreeMap();
                                        int i9 = 0;
                                        loop5: while (true) {
                                            if (i9 >= en()) {
                                                for (Integer num3 : treeMap2.keySet()) {
                                                    int intValue2 = num3.intValue();
                                                    if (intValue2 > ba) {
                                                        i2 = ((Integer) treeMap2.get(num3)).intValue();
                                                        this.f248d = intValue2;
                                                        this.j = 0;
                                                        break;
                                                    }
                                                }
                                            } else {
                                                Iterator it2 = ac(i9).iterator();
                                                while (it2.hasNext()) {
                                                    Integer num4 = (Integer) it2.next();
                                                    if (num4.intValue() < 0) {
                                                        break loop5;
                                                    }
                                                    if (!treeMap2.containsKey(num4)) {
                                                        treeMap2.put(num4, Integer.valueOf(i9));
                                                    }
                                                }
                                                i9++;
                                            }
                                        }
                                    }
                                    i2 = -1;
                                }
                            }
                            if (i2 != -1) {
                                dh(i2);
                                this.f250f = i2;
                                return true;
                            }
                        }
                    }
                }
            }
        } else {
            if (i != 16908343 || bundle == null) {
                return super.n(i, bundle);
            }
            int i10 = bundle.getInt("android.view.accessibility.action.ARGUMENT_ROW_INT", -1);
            int i11 = bundle.getInt("android.view.accessibility.action.ARGUMENT_COLUMN_INT", -1);
            if (i10 != -1 && i11 != -1) {
                int itemCount = this.dw.mAdapter.getItemCount();
                int i12 = 0;
                while (true) {
                    if (i12 >= itemCount) {
                        i12 = -1;
                        break;
                    }
                    RecyclerView recyclerView2 = this.dw;
                    int o = o(i12, recyclerView2.mRecycler, recyclerView2.mState);
                    RecyclerView recyclerView3 = this.dw;
                    int bc = bc(i12, recyclerView3.mRecycler, recyclerView3.mState);
                    if (this.bm == 1) {
                        if (o == i11 && bc == i10) {
                            break;
                        }
                        i12++;
                    } else {
                        if (o == i10 && bc == i11) {
                            break;
                        }
                        i12++;
                    }
                }
                if (i12 > -1) {
                    bw(i12, 0);
                    return true;
                }
            }
        }
        return false;
    }

    public final int o(int i, f fVar, aqz aqzVar) {
        if (!aqzVar.n) {
            return this.f251g._q(i, this.i);
        }
        int i2 = this.h.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int t = fVar.t(i);
        if (t == -1) {
            return 0;
        }
        return this.f251g._q(t, this.i);
    }

    public final void p(int i) {
        int i2;
        int[] iArr = this.f249e;
        int i3 = this.i;
        if (iArr == null || iArr.length != i3 + 1 || iArr[iArr.length - 1] != i) {
            iArr = new int[i3 + 1];
        }
        int i4 = 0;
        iArr[0] = 0;
        int i5 = i / i3;
        int i6 = i % i3;
        int i7 = 0;
        for (int i8 = 1; i8 <= i3; i8++) {
            i4 += i6;
            if (i4 <= 0 || i3 - i4 >= i6) {
                i2 = i5;
            } else {
                i2 = i5 + 1;
                i4 -= i3;
            }
            i7 += i2;
            iArr[i8] = i7;
        }
        this.f249e = iArr;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.b
    public final int q(aqz aqzVar) {
        return da(aqzVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.b
    public final void r(f fVar, aqz aqzVar) {
        boolean z = aqzVar.n;
        SparseIntArray sparseIntArray = this.h;
        SparseIntArray sparseIntArray2 = this.k;
        if (z) {
            int et = et();
            for (int i = 0; i < et; i++) {
                ayb aybVar = (ayb) eo(i).getLayoutParams();
                int ag = aybVar.f20371b.ag();
                sparseIntArray2.put(ag, aybVar.f11051f);
                sparseIntArray.put(ag, aybVar.f11050e);
            }
        }
        super.r(fVar, aqzVar);
        sparseIntArray2.clear();
        sparseIntArray.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.b
    public final int s(aqz aqzVar) {
        return ct(aqzVar);
    }

    public final int t(int i, f fVar, aqz aqzVar) {
        if (!aqzVar.n) {
            return this.f251g._r(i);
        }
        int i2 = this.k.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int t = fVar.t(i);
        if (t == -1) {
            return 1;
        }
        return this.f251g._r(t);
    }

    @Override // androidx.recyclerview.widget.b
    public final void u(int i, int i2) {
        this.f251g.af();
        ((SparseIntArray) this.f251g.f12848ab).clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.b
    public final void v(f fVar, aqz aqzVar, fnz fnzVar) {
        super.v(fVar, aqzVar, fnzVar);
        fnzVar.j(GridView.class.getName());
        m mVar = this.dw.mAdapter;
        if (mVar == null || mVar.getItemCount() <= 1) {
            return;
        }
        fnzVar.k(csk.f13430c);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.b
    public final int w(aqz aqzVar) {
        return da(aqzVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.b
    public final int x(aqz aqzVar) {
        return ct(aqzVar);
    }

    @Override // androidx.recyclerview.widget.b
    public final void y(int i, int i2) {
        this.f251g.af();
        ((SparseIntArray) this.f251g.f12848ab).clear();
    }

    @Override // androidx.recyclerview.widget.b
    public final void z(f fVar, aqz aqzVar, View view, fnz fnzVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ayb)) {
            eu(view, fnzVar);
            return;
        }
        ayb aybVar = (ayb) layoutParams;
        int bc = bc(aybVar.f20371b.ag(), fVar, aqzVar);
        if (this.bm == 0) {
            fnzVar.l(fc.f(aybVar.f11050e, aybVar.f11051f, bc, 1, false));
        } else {
            fnzVar.l(fc.f(bc, 1, aybVar.f11050e, aybVar.f11051f, false));
        }
    }
}
