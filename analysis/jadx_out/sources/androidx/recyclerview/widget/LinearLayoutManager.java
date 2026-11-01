package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.aqz;
import g.awf;
import g.bjd;
import g.cea;
import g.cju;
import g.ckd;
import g.csk;
import g.efd;
import g.fnz;
import g.gur;
import g.wp;
import g.yx;
import java.util.List;

/* loaded from: classes.dex */
public class LinearLayoutManager extends b implements wp {
    public a bd;
    public int be;
    public final efd bf;
    public boolean bg;
    public final int[] bh;
    public final int bi;
    public boolean bj;
    public final boolean bk;
    public boolean bl;
    public int bm;
    public cju bn;
    public final cea bo;
    public final boolean bp;
    public int bq;
    public bjd br;

    public static class a implements Parcelable {
        public static final Parcelable.Creator<a> CREATOR = new g();
        boolean mAnchorLayoutFromEnd;
        int mAnchorOffset;
        int mAnchorPosition;

        public a() {
        }

        public a(Parcel parcel) {
            this.mAnchorPosition = parcel.readInt();
            this.mAnchorOffset = parcel.readInt();
            this.mAnchorLayoutFromEnd = parcel.readInt() == 1;
        }

        @SuppressLint({"UnknownNullness"})
        public a(a aVar) {
            this.mAnchorPosition = aVar.mAnchorPosition;
            this.mAnchorOffset = aVar.mAnchorOffset;
            this.mAnchorLayoutFromEnd = aVar.mAnchorLayoutFromEnd;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean hasValidAnchor() {
            return this.mAnchorPosition >= 0;
        }

        public void invalidateAnchor() {
            this.mAnchorPosition = -1;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mAnchorPosition);
            parcel.writeInt(this.mAnchorOffset);
            parcel.writeInt(this.mAnchorLayoutFromEnd ? 1 : 0);
        }
    }

    public LinearLayoutManager(int i) {
        this.bm = 1;
        this.bp = false;
        this.bg = false;
        this.bj = false;
        this.bk = true;
        this.bq = -1;
        this.be = Integer.MIN_VALUE;
        this.bd = null;
        this.bo = new cea();
        this.bf = new efd();
        this.bi = 2;
        this.bh = new int[2];
        co(i);
        de(null);
        if (this.bp) {
            this.bp = false;
            em();
        }
    }

    @SuppressLint({"UnknownNullness"})
    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.bm = 1;
        this.bp = false;
        this.bg = false;
        this.bj = false;
        this.bk = true;
        this.bq = -1;
        this.be = Integer.MIN_VALUE;
        this.bd = null;
        this.bo = new cea();
        this.bf = new efd();
        this.bi = 2;
        this.bh = new int[2];
        gur eb = b.eb(context, attributeSet, i, i2);
        co(eb.f18784b);
        boolean z = eb.f18786d;
        de(null);
        if (z != this.bp) {
            this.bp = z;
            em();
        }
        aq(eb.f18783a);
    }

    public void aa(aqz aqzVar, cju cjuVar, r rVar) {
        int i = cjuVar.f13002c;
        if (i < 0 || i >= aqzVar.p()) {
            return;
        }
        rVar.e(i, Math.max(0, cjuVar.l));
    }

    @Override // androidx.recyclerview.widget.b
    public boolean ah() {
        return this.bd == null && this.bl == this.bj;
    }

    @Override // androidx.recyclerview.widget.b
    public View aj(View view, int i, f fVar, aqz aqzVar) {
        int dk;
        cb();
        if (et() != 0 && (dk = dk(i)) != Integer.MIN_VALUE) {
            cj();
            cw(dk, (int) (this.br.g() * 0.33333334f), false, aqzVar);
            cju cjuVar = this.bn;
            cjuVar.l = Integer.MIN_VALUE;
            cjuVar.f13005f = false;
            bs(fVar, cjuVar, aqzVar, true);
            View cv = dk == -1 ? this.bg ? cv(et() - 1, -1) : cv(0, et()) : this.bg ? cv(0, et()) : cv(et() - 1, -1);
            View cy = dk == -1 ? cy() : ci();
            if (!cy.hasFocusable()) {
                return cv;
            }
            if (cv != null) {
                return cy;
            }
        }
        return null;
    }

    public View ak(f fVar, aqz aqzVar, boolean z, boolean z2) {
        int i;
        int i2;
        int i3;
        cj();
        int et = et();
        if (z2) {
            i2 = et() - 1;
            i = -1;
            i3 = -1;
        } else {
            i = et;
            i2 = 0;
            i3 = 1;
        }
        int p = aqzVar.p();
        int p2 = this.br.p();
        int r = this.br.r();
        View view = null;
        View view2 = null;
        View view3 = null;
        while (i2 != i) {
            View eo = eo(i2);
            int ed = b.ed(eo);
            int k = this.br.k(eo);
            int o = this.br.o(eo);
            if (ed >= 0 && ed < p) {
                if (!((yx) eo.getLayoutParams()).f20371b.u()) {
                    boolean z3 = o <= p2 && k < p2;
                    boolean z4 = k >= r && o > r;
                    if (!z3 && !z4) {
                        return eo;
                    }
                    if (z) {
                        if (!z4) {
                            if (view != null) {
                            }
                            view = eo;
                        }
                        view2 = eo;
                    } else {
                        if (!z3) {
                            if (view != null) {
                            }
                            view = eo;
                        }
                        view2 = eo;
                    }
                } else if (view3 == null) {
                    view3 = eo;
                }
            }
            i2 += i3;
        }
        return view != null ? view : view2 != null ? view2 : view3;
    }

    @Override // androidx.recyclerview.widget.b
    public int am(int i, f fVar, aqz aqzVar) {
        if (this.bm == 1) {
            return 0;
        }
        return di(i, fVar, aqzVar);
    }

    public void an(f fVar, aqz aqzVar, cju cjuVar, efd efdVar) {
        int i;
        int i2;
        int i3;
        int i4;
        View n = cjuVar.n(fVar);
        if (n == null) {
            efdVar.f15427c = true;
            return;
        }
        yx yxVar = (yx) n.getLayoutParams();
        if (cjuVar.f13001b == null) {
            if (this.bg == (cjuVar.f13006g == -1)) {
                fc(n, -1, false);
            } else {
                fc(n, 0, false);
            }
        } else {
            if (this.bg == (cjuVar.f13006g == -1)) {
                fc(n, -1, true);
            } else {
                fc(n, 0, true);
            }
        }
        yx yxVar2 = (yx) n.getLayoutParams();
        Rect itemDecorInsetsForChild = this.dw.getItemDecorInsetsForChild(n);
        int i5 = itemDecorInsetsForChild.left + itemDecorInsetsForChild.right;
        int i6 = itemDecorInsetsForChild.top + itemDecorInsetsForChild.bottom;
        int ef = b.ef(this.f0do, this.dq, fj() + eq() + ((ViewGroup.MarginLayoutParams) yxVar2).leftMargin + ((ViewGroup.MarginLayoutParams) yxVar2).rightMargin + i5, ((ViewGroup.MarginLayoutParams) yxVar2).width, ca());
        int ef2 = b.ef(this.dn, this.du, er() + fd() + ((ViewGroup.MarginLayoutParams) yxVar2).topMargin + ((ViewGroup.MarginLayoutParams) yxVar2).bottomMargin + i6, ((ViewGroup.MarginLayoutParams) yxVar2).height, cd());
        if (fk(n, ef, ef2, yxVar2)) {
            n.measure(ef, ef2);
        }
        efdVar.f15426b = this.br.q(n);
        if (this.bm == 1) {
            if (ck()) {
                i4 = this.f0do - fj();
                i = i4 - this.br.i(n);
            } else {
                i = eq();
                i4 = this.br.i(n) + i;
            }
            if (cjuVar.f13006g == -1) {
                i2 = cjuVar.i;
                i3 = i2 - efdVar.f15426b;
            } else {
                i3 = cjuVar.i;
                i2 = efdVar.f15426b + i3;
            }
        } else {
            int fd = fd();
            int i7 = this.br.i(n) + fd;
            if (cjuVar.f13006g == -1) {
                int i8 = cjuVar.i;
                int i9 = i8 - efdVar.f15426b;
                i4 = i8;
                i2 = i7;
                i = i9;
                i3 = fd;
            } else {
                int i10 = cjuVar.i;
                int i11 = efdVar.f15426b + i10;
                i = i10;
                i2 = i7;
                i3 = fd;
                i4 = i11;
            }
        }
        b.ec(n, i, i3, i4, i2);
        if (yxVar.f20371b.u() || yxVar.f20371b.v()) {
            efdVar.f15428d = true;
        }
        efdVar.f15425a = n.hasFocusable();
    }

    @Override // androidx.recyclerview.widget.b
    public void ap(aqz aqzVar) {
        this.bd = null;
        this.bq = -1;
        this.be = Integer.MIN_VALUE;
        this.bo.f();
    }

    public void aq(boolean z) {
        de(null);
        if (this.bj == z) {
            return;
        }
        this.bj = z;
        em();
    }

    public void ar(f fVar, aqz aqzVar, cea ceaVar, int i) {
    }

    @Override // androidx.recyclerview.widget.b
    public yx az() {
        return new yx(-2, -2);
    }

    public final int bs(f fVar, cju cjuVar, aqz aqzVar, boolean z) {
        int i;
        int i2 = cjuVar.k;
        int i3 = cjuVar.l;
        if (i3 != Integer.MIN_VALUE) {
            if (i2 < 0) {
                cjuVar.l = i3 + i2;
            }
            cl(fVar, cjuVar);
        }
        int i4 = cjuVar.k + cjuVar.f13000a;
        while (true) {
            if ((!cjuVar.f13003d && i4 <= 0) || (i = cjuVar.f13002c) < 0 || i >= aqzVar.p()) {
                break;
            }
            efd efdVar = this.bf;
            efdVar.f15426b = 0;
            efdVar.f15427c = false;
            efdVar.f15428d = false;
            efdVar.f15425a = false;
            an(fVar, aqzVar, cjuVar, efdVar);
            if (!efdVar.f15427c) {
                int i5 = cjuVar.i;
                int i6 = efdVar.f15426b;
                cjuVar.i = (cjuVar.f13006g * i6) + i5;
                if (!efdVar.f15428d || cjuVar.f13001b != null || !aqzVar.n) {
                    cjuVar.k -= i6;
                    i4 -= i6;
                }
                int i7 = cjuVar.l;
                if (i7 != Integer.MIN_VALUE) {
                    int i8 = i7 + i6;
                    cjuVar.l = i8;
                    int i9 = cjuVar.k;
                    if (i9 < 0) {
                        cjuVar.l = i8 + i9;
                    }
                    cl(fVar, cjuVar);
                }
                if (z && efdVar.f15425a) {
                    break;
                }
            } else {
                break;
            }
        }
        return i2 - cjuVar.k;
    }

    public final void bt(int i, int i2) {
        this.bn.k = i2 - this.br.p();
        cju cjuVar = this.bn;
        cjuVar.f13002c = i;
        cjuVar.f13004e = this.bg ? 1 : -1;
        cjuVar.f13006g = -1;
        cjuVar.i = i2;
        cjuVar.l = Integer.MIN_VALUE;
    }

    @Override // androidx.recyclerview.widget.b
    public final void bu(int i, int i2, aqz aqzVar, r rVar) {
        if (this.bm != 0) {
            i = i2;
        }
        if (et() == 0 || i == 0) {
            return;
        }
        cj();
        cw(i > 0 ? 1 : -1, Math.abs(i), true, aqzVar);
        aa(aqzVar, this.bn, rVar);
    }

    public final int bv() {
        View cq = cq(0, et(), false, true);
        if (cq == null) {
            return -1;
        }
        return b.ed(cq);
    }

    public final void bw(int i, int i2) {
        this.bq = i;
        this.be = i2;
        a aVar = this.bd;
        if (aVar != null) {
            aVar.invalidateAnchor();
        }
        em();
    }

    @Override // androidx.recyclerview.widget.b
    public final boolean bx() {
        return this.bp;
    }

    public final int by() {
        View cq = cq(et() - 1, -1, false, true);
        if (cq == null) {
            return -1;
        }
        return b.ed(cq);
    }

    public final View bz(boolean z) {
        return this.bg ? cq(0, et(), z, true) : cq(et() - 1, -1, z, true);
    }

    @Override // androidx.recyclerview.widget.b
    public final boolean ca() {
        return this.bm == 0;
    }

    public final void cb() {
        if (this.bm == 1 || !ck()) {
            this.bg = this.bp;
        } else {
            this.bg = !this.bp;
        }
    }

    @Override // androidx.recyclerview.widget.b
    public final Parcelable cc() {
        a aVar = this.bd;
        if (aVar != null) {
            return new a(aVar);
        }
        a aVar2 = new a();
        if (et() <= 0) {
            aVar2.invalidateAnchor();
            return aVar2;
        }
        cj();
        boolean z = this.bl ^ this.bg;
        aVar2.mAnchorLayoutFromEnd = z;
        if (z) {
            View ci = ci();
            aVar2.mAnchorOffset = this.br.r() - this.br.o(ci);
            aVar2.mAnchorPosition = b.ed(ci);
            return aVar2;
        }
        View cy = cy();
        aVar2.mAnchorPosition = b.ed(cy);
        aVar2.mAnchorOffset = this.br.k(cy) - this.br.p();
        return aVar2;
    }

    @Override // androidx.recyclerview.widget.b
    public final boolean cd() {
        return this.bm == 1;
    }

    @Override // androidx.recyclerview.widget.b
    public final void ce(AccessibilityEvent accessibilityEvent) {
        super.ce(accessibilityEvent);
        if (et() > 0) {
            accessibilityEvent.setFromIndex(bv());
            accessibilityEvent.setToIndex(by());
        }
    }

    @Override // g.wp
    public final PointF cf(int i) {
        if (et() == 0) {
            return null;
        }
        int i2 = (i < b.ed(eo(0))) != this.bg ? -1 : 1;
        return this.bm == 0 ? new PointF(i2, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) : new PointF(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, i2);
    }

    public final int cg(int i, f fVar, aqz aqzVar, boolean z) {
        int r;
        int r2 = this.br.r() - i;
        if (r2 <= 0) {
            return 0;
        }
        int i2 = -di(-r2, fVar, aqzVar);
        int i3 = i + i2;
        if (!z || (r = this.br.r() - i3) <= 0) {
            return i2;
        }
        this.br.h(r);
        return r + i2;
    }

    @Override // androidx.recyclerview.widget.b
    public final boolean ch() {
        return true;
    }

    public final View ci() {
        return eo(this.bg ? 0 : et() - 1);
    }

    public final void cj() {
        if (this.bn == null) {
            cju cjuVar = new cju();
            cjuVar.f13005f = true;
            cjuVar.f13000a = 0;
            cjuVar.h = 0;
            cjuVar.f13001b = null;
            this.bn = cjuVar;
        }
    }

    public final boolean ck() {
        return this.dw.getLayoutDirection() == 1;
    }

    public final void cl(f fVar, cju cjuVar) {
        if (!cjuVar.f13005f || cjuVar.f13003d) {
            return;
        }
        int i = cjuVar.l;
        int i2 = cjuVar.h;
        if (cjuVar.f13006g == -1) {
            int et = et();
            if (i < 0) {
                return;
            }
            int l = (this.br.l() - i) + i2;
            if (this.bg) {
                for (int i3 = 0; i3 < et; i3++) {
                    View eo = eo(i3);
                    if (this.br.k(eo) < l || this.br.m(eo) < l) {
                        dd(fVar, 0, i3);
                        return;
                    }
                }
                return;
            }
            int i4 = et - 1;
            for (int i5 = i4; i5 >= 0; i5--) {
                View eo2 = eo(i5);
                if (this.br.k(eo2) < l || this.br.m(eo2) < l) {
                    dd(fVar, i4, i5);
                    return;
                }
            }
            return;
        }
        if (i < 0) {
            return;
        }
        int i6 = i - i2;
        int et2 = et();
        if (!this.bg) {
            for (int i7 = 0; i7 < et2; i7++) {
                View eo3 = eo(i7);
                if (this.br.o(eo3) > i6 || this.br.j(eo3) > i6) {
                    dd(fVar, 0, i7);
                    return;
                }
            }
            return;
        }
        int i8 = et2 - 1;
        for (int i9 = i8; i9 >= 0; i9--) {
            View eo4 = eo(i9);
            if (this.br.o(eo4) > i6 || this.br.j(eo4) > i6) {
                dd(fVar, i8, i9);
                return;
            }
        }
    }

    @Override // androidx.recyclerview.widget.b
    public void cm(RecyclerView recyclerView, int i) {
        i iVar = new i(recyclerView.getContext());
        iVar.h = i;
        ep(iVar);
    }

    @Override // androidx.recyclerview.widget.b
    public final boolean cn() {
        if (this.du != 1073741824 && this.dq != 1073741824) {
            int et = et();
            for (int i = 0; i < et; i++) {
                ViewGroup.LayoutParams layoutParams = eo(i).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void co(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException(awf.ac(i, "invalid orientation:"));
        }
        de(null);
        if (i != this.bm || this.br == null) {
            bjd e2 = bjd.e(this, i);
            this.br = e2;
            this.bo.f12724c = e2;
            this.bm = i;
            em();
        }
    }

    public final View cp(boolean z) {
        return this.bg ? cq(et() - 1, -1, z, true) : cq(0, et(), z, true);
    }

    public final View cq(int i, int i2, boolean z, boolean z2) {
        cj();
        int i3 = MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME;
        int i4 = z ? 24579 : MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME;
        if (!z2) {
            i3 = 0;
        }
        return this.bm == 0 ? this.dy.k(i, i2, i4, i3) : this.dp.k(i, i2, i4, i3);
    }

    @Override // androidx.recyclerview.widget.b
    public final int cr(aqz aqzVar) {
        return cu(aqzVar);
    }

    @Override // androidx.recyclerview.widget.b
    public final void cs(int i, r rVar) {
        boolean z;
        int i2;
        a aVar = this.bd;
        if (aVar == null || !aVar.hasValidAnchor()) {
            cb();
            z = this.bg;
            i2 = this.bq;
            if (i2 == -1) {
                i2 = z ? i - 1 : 0;
            }
        } else {
            a aVar2 = this.bd;
            z = aVar2.mAnchorLayoutFromEnd;
            i2 = aVar2.mAnchorPosition;
        }
        int i3 = z ? -1 : 1;
        for (int i4 = 0; i4 < this.bi && i2 >= 0 && i2 < i; i4++) {
            rVar.e(i2, 0);
            i2 += i3;
        }
    }

    public final int ct(aqz aqzVar) {
        if (et() == 0) {
            return 0;
        }
        cj();
        bjd bjdVar = this.br;
        boolean z = !this.bk;
        return ckd.bg(aqzVar, bjdVar, cp(z), bz(z), this, this.bk);
    }

    public final int cu(aqz aqzVar) {
        if (et() == 0) {
            return 0;
        }
        cj();
        bjd bjdVar = this.br;
        boolean z = !this.bk;
        return ckd.am(aqzVar, bjdVar, cp(z), bz(z), this, this.bk);
    }

    public final View cv(int i, int i2) {
        int i3;
        int i4;
        cj();
        if (i2 <= i && i2 >= i) {
            return eo(i);
        }
        if (this.br.k(eo(i)) < this.br.p()) {
            i3 = 16644;
            i4 = 16388;
        } else {
            i3 = 4161;
            i4 = 4097;
        }
        return this.bm == 0 ? this.dy.k(i, i2, i3, i4) : this.dp.k(i, i2, i3, i4);
    }

    public final void cw(int i, int i2, boolean z, aqz aqzVar) {
        int p;
        this.bn.f13003d = this.br.n() == 0 && this.br.l() == 0;
        this.bn.f13006g = i;
        int[] iArr = this.bh;
        iArr[0] = 0;
        iArr[1] = 0;
        df(aqzVar, iArr);
        int max = Math.max(0, iArr[0]);
        int max2 = Math.max(0, iArr[1]);
        boolean z2 = i == 1;
        cju cjuVar = this.bn;
        int i3 = z2 ? max2 : max;
        cjuVar.f13000a = i3;
        if (!z2) {
            max = max2;
        }
        cjuVar.h = max;
        if (z2) {
            cjuVar.f13000a = this.br.f() + i3;
            View ci = ci();
            cju cjuVar2 = this.bn;
            cjuVar2.f13004e = this.bg ? -1 : 1;
            int ed = b.ed(ci);
            cju cjuVar3 = this.bn;
            cjuVar2.f13002c = ed + cjuVar3.f13004e;
            cjuVar3.i = this.br.o(ci);
            p = this.br.o(ci) - this.br.r();
        } else {
            View cy = cy();
            cju cjuVar4 = this.bn;
            cjuVar4.f13000a = this.br.p() + cjuVar4.f13000a;
            cju cjuVar5 = this.bn;
            cjuVar5.f13004e = this.bg ? 1 : -1;
            int ed2 = b.ed(cy);
            cju cjuVar6 = this.bn;
            cjuVar5.f13002c = ed2 + cjuVar6.f13004e;
            cjuVar6.i = this.br.k(cy);
            p = (-this.br.k(cy)) + this.br.p();
        }
        cju cjuVar7 = this.bn;
        cjuVar7.k = i2;
        if (z) {
            cjuVar7.k = i2 - p;
        }
        cjuVar7.l = p;
    }

    @Override // androidx.recyclerview.widget.b
    public final int cx(aqz aqzVar) {
        return cu(aqzVar);
    }

    public final View cy() {
        return eo(this.bg ? et() - 1 : 0);
    }

    @Override // androidx.recyclerview.widget.b
    public final View cz(int i) {
        int et = et();
        if (et == 0) {
            return null;
        }
        int ed = i - b.ed(eo(0));
        if (ed >= 0 && ed < et) {
            View eo = eo(ed);
            if (b.ed(eo) == i) {
                return eo;
            }
        }
        return super.cz(i);
    }

    public final int da(aqz aqzVar) {
        if (et() == 0) {
            return 0;
        }
        cj();
        bjd bjdVar = this.br;
        boolean z = !this.bk;
        return ckd.au(aqzVar, bjdVar, cp(z), bz(z), this, this.bk, this.bg);
    }

    public final void db(int i, int i2) {
        this.bn.k = this.br.r() - i2;
        cju cjuVar = this.bn;
        cjuVar.f13004e = this.bg ? -1 : 1;
        cjuVar.f13002c = i;
        cjuVar.f13006g = 1;
        cjuVar.i = i2;
        cjuVar.l = Integer.MIN_VALUE;
    }

    @Override // androidx.recyclerview.widget.b
    public final void dc(RecyclerView recyclerView) {
    }

    public final void dd(f fVar, int i, int i2) {
        if (i == i2) {
            return;
        }
        if (i2 <= i) {
            while (i > i2) {
                View eo = eo(i);
                ej(i);
                fVar.u(eo);
                i--;
            }
            return;
        }
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            View eo2 = eo(i3);
            ej(i3);
            fVar.u(eo2);
        }
    }

    @Override // androidx.recyclerview.widget.b
    public final void de(String str) {
        if (this.bd == null) {
            super.de(str);
        }
    }

    public void df(aqz aqzVar, int[] iArr) {
        int i;
        int g2 = aqzVar.f10687g != -1 ? this.br.g() : 0;
        if (this.bn.f13006g == -1) {
            i = 0;
        } else {
            i = g2;
            g2 = 0;
        }
        iArr[0] = g2;
        iArr[1] = i;
    }

    @Override // androidx.recyclerview.widget.b
    public final void dg(Parcelable parcelable) {
        if (parcelable instanceof a) {
            a aVar = (a) parcelable;
            this.bd = aVar;
            if (this.bq != -1) {
                aVar.invalidateAnchor();
            }
            em();
        }
    }

    @Override // androidx.recyclerview.widget.b
    public final void dh(int i) {
        this.bq = i;
        this.be = Integer.MIN_VALUE;
        a aVar = this.bd;
        if (aVar != null) {
            aVar.invalidateAnchor();
        }
        em();
    }

    public final int di(int i, f fVar, aqz aqzVar) {
        if (et() != 0 && i != 0) {
            cj();
            this.bn.f13005f = true;
            int i2 = i > 0 ? 1 : -1;
            int abs = Math.abs(i);
            cw(i2, abs, true, aqzVar);
            cju cjuVar = this.bn;
            int bs = bs(fVar, cjuVar, aqzVar, false) + cjuVar.l;
            if (bs >= 0) {
                if (abs > bs) {
                    i = i2 * bs;
                }
                this.br.h(-i);
                this.bn.j = i;
                return i;
            }
        }
        return 0;
    }

    public final int dj(int i, f fVar, aqz aqzVar, boolean z) {
        int p;
        int p2 = i - this.br.p();
        if (p2 <= 0) {
            return 0;
        }
        int i2 = -di(p2, fVar, aqzVar);
        int i3 = i + i2;
        if (!z || (p = i3 - this.br.p()) <= 0) {
            return i2;
        }
        this.br.h(-p);
        return i2 - p;
    }

    public final int dk(int i) {
        return i != 1 ? i != 2 ? i != 17 ? i != 33 ? i != 66 ? (i == 130 && this.bm == 1) ? 1 : Integer.MIN_VALUE : this.bm == 0 ? 1 : Integer.MIN_VALUE : this.bm == 1 ? -1 : Integer.MIN_VALUE : this.bm == 0 ? -1 : Integer.MIN_VALUE : (this.bm != 1 && ck()) ? -1 : 1 : (this.bm != 1 && ck()) ? 1 : -1;
    }

    @Override // androidx.recyclerview.widget.b
    public int m(int i, f fVar, aqz aqzVar) {
        if (this.bm == 0) {
            return 0;
        }
        return di(i, fVar, aqzVar);
    }

    @Override // androidx.recyclerview.widget.b
    public boolean n(int i, Bundle bundle) {
        int min;
        if (super.n(i, bundle)) {
            return true;
        }
        if (i == 16908343 && bundle != null) {
            if (this.bm == 1) {
                int i2 = bundle.getInt("android.view.accessibility.action.ARGUMENT_ROW_INT", -1);
                if (i2 < 0) {
                    return false;
                }
                RecyclerView recyclerView = this.dw;
                min = Math.min(i2, av(recyclerView.mRecycler, recyclerView.mState) - 1);
            } else {
                int i3 = bundle.getInt("android.view.accessibility.action.ARGUMENT_COLUMN_INT", -1);
                if (i3 < 0) {
                    return false;
                }
                RecyclerView recyclerView2 = this.dw;
                min = Math.min(i3, aw(recyclerView2.mRecycler, recyclerView2.mState) - 1);
            }
            if (min >= 0) {
                bw(min, 0);
                return true;
            }
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.b
    public int q(aqz aqzVar) {
        return da(aqzVar);
    }

    @Override // androidx.recyclerview.widget.b
    public void r(f fVar, aqz aqzVar) {
        View view;
        View view2;
        View ak;
        int i;
        int k;
        int i2;
        int i3;
        List list;
        int i4;
        int i5;
        int cg;
        int i6;
        View cz;
        int k2;
        int i7;
        int i8 = -1;
        if (!(this.bd == null && this.bq == -1) && aqzVar.p() == 0) {
            fh(fVar);
            return;
        }
        a aVar = this.bd;
        if (aVar != null && aVar.hasValidAnchor()) {
            this.bq = this.bd.mAnchorPosition;
        }
        cj();
        this.bn.f13005f = false;
        cb();
        RecyclerView recyclerView = this.dw;
        if (recyclerView == null || (view = recyclerView.getFocusedChild()) == null || this.ds.f307e.contains(view)) {
            view = null;
        }
        cea ceaVar = this.bo;
        if (!ceaVar.f12723b || this.bq != -1 || this.bd != null) {
            ceaVar.f();
            ceaVar.f12722a = this.bg ^ this.bj;
            if (!aqzVar.n && (i = this.bq) != -1) {
                if (i < 0 || i >= aqzVar.p()) {
                    this.bq = -1;
                    this.be = Integer.MIN_VALUE;
                } else {
                    ceaVar.f12725d = this.bq;
                    a aVar2 = this.bd;
                    if (aVar2 != null && aVar2.hasValidAnchor()) {
                        boolean z = this.bd.mAnchorLayoutFromEnd;
                        ceaVar.f12722a = z;
                        if (z) {
                            ceaVar.f12726e = this.br.r() - this.bd.mAnchorOffset;
                        } else {
                            ceaVar.f12726e = this.br.p() + this.bd.mAnchorOffset;
                        }
                    } else if (this.be == Integer.MIN_VALUE) {
                        View cz2 = cz(this.bq);
                        if (cz2 == null) {
                            if (et() > 0) {
                                ceaVar.f12722a = (this.bq < b.ed(eo(0))) == this.bg;
                            }
                            ceaVar.g();
                        } else if (this.br.q(cz2) > this.br.g()) {
                            ceaVar.g();
                        } else if (this.br.k(cz2) - this.br.p() < 0) {
                            ceaVar.f12726e = this.br.p();
                            ceaVar.f12722a = false;
                        } else if (this.br.r() - this.br.o(cz2) < 0) {
                            ceaVar.f12726e = this.br.r();
                            ceaVar.f12722a = true;
                        } else {
                            if (ceaVar.f12722a) {
                                int o = this.br.o(cz2);
                                bjd bjdVar = this.br;
                                k = (Integer.MIN_VALUE == bjdVar.f11691c ? 0 : bjdVar.g() - bjdVar.f11691c) + o;
                            } else {
                                k = this.br.k(cz2);
                            }
                            ceaVar.f12726e = k;
                        }
                    } else {
                        boolean z2 = this.bg;
                        ceaVar.f12722a = z2;
                        if (z2) {
                            ceaVar.f12726e = this.br.r() - this.be;
                        } else {
                            ceaVar.f12726e = this.br.p() + this.be;
                        }
                    }
                    ceaVar.f12723b = true;
                }
            }
            if (et() != 0) {
                RecyclerView recyclerView2 = this.dw;
                if (recyclerView2 == null || (view2 = recyclerView2.getFocusedChild()) == null || this.ds.f307e.contains(view2)) {
                    view2 = null;
                }
                if (view2 != null) {
                    yx yxVar = (yx) view2.getLayoutParams();
                    if (!yxVar.f20371b.u() && yxVar.f20371b.ag() >= 0 && yxVar.f20371b.ag() < aqzVar.p()) {
                        ceaVar.i(b.ed(view2), view2);
                        ceaVar.f12723b = true;
                    }
                }
                boolean z3 = this.bl;
                boolean z4 = this.bj;
                if (z3 == z4 && (ak = ak(fVar, aqzVar, ceaVar.f12722a, z4)) != null) {
                    ceaVar.h(b.ed(ak), ak);
                    if (!aqzVar.n && ah()) {
                        int k3 = this.br.k(ak);
                        int o2 = this.br.o(ak);
                        int p = this.br.p();
                        int r = this.br.r();
                        boolean z5 = o2 <= p && k3 < p;
                        boolean z6 = k3 >= r && o2 > r;
                        if (z5 || z6) {
                            if (ceaVar.f12722a) {
                                p = r;
                            }
                            ceaVar.f12726e = p;
                        }
                    }
                    ceaVar.f12723b = true;
                }
            }
            ceaVar.g();
            ceaVar.f12725d = this.bj ? aqzVar.p() - 1 : 0;
            ceaVar.f12723b = true;
        } else if (view != null && (this.br.k(view) >= this.br.r() || this.br.o(view) <= this.br.p())) {
            ceaVar.i(b.ed(view), view);
        }
        cju cjuVar = this.bn;
        cjuVar.f13006g = cjuVar.j >= 0 ? 1 : -1;
        int[] iArr = this.bh;
        iArr[0] = 0;
        iArr[1] = 0;
        df(aqzVar, iArr);
        int p2 = this.br.p() + Math.max(0, iArr[0]);
        int f2 = this.br.f() + Math.max(0, iArr[1]);
        if (aqzVar.n && (i6 = this.bq) != -1 && this.be != Integer.MIN_VALUE && (cz = cz(i6)) != null) {
            if (this.bg) {
                i7 = this.br.r() - this.br.o(cz);
                k2 = this.be;
            } else {
                k2 = this.br.k(cz) - this.br.p();
                i7 = this.be;
            }
            int i9 = i7 - k2;
            if (i9 > 0) {
                p2 += i9;
            } else {
                f2 -= i9;
            }
        }
        if (!ceaVar.f12722a ? !this.bg : this.bg) {
            i8 = 1;
        }
        ar(fVar, aqzVar, ceaVar, i8);
        ex(fVar);
        this.bn.f13003d = this.br.n() == 0 && this.br.l() == 0;
        this.bn.getClass();
        this.bn.h = 0;
        if (ceaVar.f12722a) {
            bt(ceaVar.f12725d, ceaVar.f12726e);
            cju cjuVar2 = this.bn;
            cjuVar2.f13000a = p2;
            bs(fVar, cjuVar2, aqzVar, false);
            cju cjuVar3 = this.bn;
            i3 = cjuVar3.i;
            int i10 = cjuVar3.f13002c;
            int i11 = cjuVar3.k;
            if (i11 > 0) {
                f2 += i11;
            }
            db(ceaVar.f12725d, ceaVar.f12726e);
            cju cjuVar4 = this.bn;
            cjuVar4.f13000a = f2;
            cjuVar4.f13002c += cjuVar4.f13004e;
            bs(fVar, cjuVar4, aqzVar, false);
            cju cjuVar5 = this.bn;
            i2 = cjuVar5.i;
            int i12 = cjuVar5.k;
            if (i12 > 0) {
                bt(i10, i3);
                cju cjuVar6 = this.bn;
                cjuVar6.f13000a = i12;
                bs(fVar, cjuVar6, aqzVar, false);
                i3 = this.bn.i;
            }
        } else {
            db(ceaVar.f12725d, ceaVar.f12726e);
            cju cjuVar7 = this.bn;
            cjuVar7.f13000a = f2;
            bs(fVar, cjuVar7, aqzVar, false);
            cju cjuVar8 = this.bn;
            i2 = cjuVar8.i;
            int i13 = cjuVar8.f13002c;
            int i14 = cjuVar8.k;
            if (i14 > 0) {
                p2 += i14;
            }
            bt(ceaVar.f12725d, ceaVar.f12726e);
            cju cjuVar9 = this.bn;
            cjuVar9.f13000a = p2;
            cjuVar9.f13002c += cjuVar9.f13004e;
            bs(fVar, cjuVar9, aqzVar, false);
            cju cjuVar10 = this.bn;
            int i15 = cjuVar10.i;
            int i16 = cjuVar10.k;
            if (i16 > 0) {
                db(i13, i2);
                cju cjuVar11 = this.bn;
                cjuVar11.f13000a = i16;
                bs(fVar, cjuVar11, aqzVar, false);
                i2 = this.bn.i;
            }
            i3 = i15;
        }
        if (et() > 0) {
            if (this.bg ^ this.bj) {
                int cg2 = cg(i2, fVar, aqzVar, true);
                i4 = i3 + cg2;
                i5 = i2 + cg2;
                cg = dj(i4, fVar, aqzVar, false);
            } else {
                int dj = dj(i3, fVar, aqzVar, true);
                i4 = i3 + dj;
                i5 = i2 + dj;
                cg = cg(i5, fVar, aqzVar, false);
            }
            i3 = i4 + cg;
            i2 = i5 + cg;
        }
        if (aqzVar.f10682b && et() != 0 && !aqzVar.n && ah()) {
            List list2 = fVar.f274b;
            int size = list2.size();
            int ed = b.ed(eo(0));
            int i17 = 0;
            int i18 = 0;
            for (int i19 = 0; i19 < size; i19++) {
                p pVar = (p) list2.get(i19);
                boolean u = pVar.u();
                View view3 = pVar.n;
                if (!u) {
                    if ((pVar.ag() < ed) != this.bg) {
                        i17 += this.br.q(view3);
                    } else {
                        i18 += this.br.q(view3);
                    }
                }
            }
            this.bn.f13001b = list2;
            if (i17 > 0) {
                bt(b.ed(cy()), i3);
                cju cjuVar12 = this.bn;
                cjuVar12.f13000a = i17;
                cjuVar12.k = 0;
                cjuVar12.m(null);
                bs(fVar, this.bn, aqzVar, false);
            }
            if (i18 > 0) {
                db(b.ed(ci()), i2);
                cju cjuVar13 = this.bn;
                cjuVar13.f13000a = i18;
                cjuVar13.k = 0;
                list = null;
                cjuVar13.m(null);
                bs(fVar, this.bn, aqzVar, false);
            } else {
                list = null;
            }
            this.bn.f13001b = list;
        }
        if (aqzVar.n) {
            ceaVar.f();
        } else {
            bjd bjdVar2 = this.br;
            bjdVar2.f11691c = bjdVar2.g();
        }
        this.bl = this.bj;
    }

    @Override // androidx.recyclerview.widget.b
    public int s(aqz aqzVar) {
        return ct(aqzVar);
    }

    @Override // androidx.recyclerview.widget.b
    public void v(f fVar, aqz aqzVar, fnz fnzVar) {
        super.v(fVar, aqzVar, fnzVar);
        m mVar = this.dw.mAdapter;
        if (mVar == null || mVar.getItemCount() <= 0 || Build.VERSION.SDK_INT < 23) {
            return;
        }
        fnzVar.k(csk.f13429b);
    }

    @Override // androidx.recyclerview.widget.b
    public int w(aqz aqzVar) {
        return da(aqzVar);
    }

    @Override // androidx.recyclerview.widget.b
    public int x(aqz aqzVar) {
        return ct(aqzVar);
    }
}
