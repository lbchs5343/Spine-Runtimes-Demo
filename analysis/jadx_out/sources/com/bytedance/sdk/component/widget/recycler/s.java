package com.bytedance.sdk.component.widget.recycler;

import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.component.widget.recycler.RecyclerView;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.he;
import java.util.List;

/* loaded from: classes.dex */
public class s extends RecyclerView.kk implements RecyclerView.gh.d {
    private ox cd;

    /* renamed from: d, reason: collision with root package name */
    ia f2295d;
    int dq;

    /* renamed from: e, reason: collision with root package name */
    private int f2296e;
    private boolean gh;
    private boolean i;
    p iw;
    private boolean k;
    private boolean le;
    final dq mn;
    boolean ox;
    int p;
    private boolean r;
    int s;
    private final d wp;

    public static class d {

        /* renamed from: d, reason: collision with root package name */
        public boolean f2297d;
        public int dq;
        public boolean ox;
        public boolean p;

        public void dq() {
            this.dq = 0;
            this.f2297d = false;
            this.ox = false;
            this.p = false;
        }
    }

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        int f2298d;
        ia dq;
        int ox;
        boolean p;
        boolean s;

        public dq() {
            dq();
        }

        public void d() {
            this.ox = this.p ? this.dq.p() : this.dq.ox();
        }

        public void d(View view, int i) {
            if (this.p) {
                this.ox = this.dq.d() + this.dq.d(view);
            } else {
                this.ox = this.dq.dq(view);
            }
            this.f2298d = i;
        }

        public void dq() {
            this.f2298d = -1;
            this.ox = Integer.MIN_VALUE;
            this.p = false;
            this.s = false;
        }

        public void dq(View view, int i) {
            int d2 = this.dq.d();
            if (d2 >= 0) {
                d(view, i);
                return;
            }
            this.f2298d = i;
            if (!this.p) {
                int dq = this.dq.dq(view);
                int ox = dq - this.dq.ox();
                this.ox = dq;
                if (ox > 0) {
                    int p = (this.dq.p() - Math.min(0, (this.dq.p() - d2) - this.dq.d(view))) - (this.dq.s(view) + dq);
                    if (p < 0) {
                        this.ox -= Math.min(ox, -p);
                        return;
                    }
                    return;
                }
                return;
            }
            int p2 = (this.dq.p() - d2) - this.dq.d(view);
            this.ox = this.dq.p() - p2;
            if (p2 > 0) {
                int s = this.ox - this.dq.s(view);
                int ox2 = this.dq.ox();
                int min = s - (Math.min(this.dq.dq(view) - ox2, 0) + ox2);
                if (min < 0) {
                    this.ox = Math.min(p2, -min) + this.ox;
                }
            }
        }

        public boolean dq(View view, RecyclerView.r rVar) {
            RecyclerView.o oVar = (RecyclerView.o) view.getLayoutParams();
            return !oVar.d() && oVar.p() >= 0 && oVar.p() < rVar.p();
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.f2298d + ", mCoordinate=" + this.ox + ", mLayoutFromEnd=" + this.p + ", mValid=" + this.s + '}';
        }
    }

    public static class ox {

        /* renamed from: d, reason: collision with root package name */
        int f2299d;
        boolean ig;
        int iw;
        int mn;
        int o;
        int ox;
        int p;
        int s;
        boolean dq = true;
        int ia = 0;
        boolean kk = false;
        List<RecyclerView.k> no = null;

        private View d() {
            int size = this.no.size();
            for (int i = 0; i < size; i++) {
                View view = this.no.get(i).p;
                RecyclerView.o oVar = (RecyclerView.o) view.getLayoutParams();
                if (!oVar.d() && this.p == oVar.p()) {
                    dq(view);
                    return view;
                }
            }
            return null;
        }

        public View d(View view) {
            int p;
            int size = this.no.size();
            View view2 = null;
            int i = he.UNDEFINED_ITEM_ID;
            for (int i2 = 0; i2 < size; i2++) {
                View view3 = this.no.get(i2).p;
                RecyclerView.o oVar = (RecyclerView.o) view3.getLayoutParams();
                if (view3 != view && !oVar.d() && (p = (oVar.p() - this.p) * this.s) >= 0 && p < i) {
                    if (p == 0) {
                        return view3;
                    }
                    view2 = view3;
                    i = p;
                }
            }
            return view2;
        }

        public View dq(RecyclerView.f fVar) {
            if (this.no != null) {
                return d();
            }
            View d2 = fVar.d(this.p);
            this.p += this.s;
            return d2;
        }

        public void dq() {
            dq((View) null);
        }

        public void dq(View view) {
            View d2 = d(view);
            if (d2 == null) {
                this.p = -1;
            } else {
                this.p = ((RecyclerView.o) d2.getLayoutParams()).p();
            }
        }

        public boolean dq(RecyclerView.r rVar) {
            int i = this.p;
            return i >= 0 && i < rVar.p();
        }
    }

    public static class p implements Parcelable {
        public static final Parcelable.Creator<p> CREATOR = new Parcelable.Creator<p>() { // from class: com.bytedance.sdk.component.widget.recycler.s.p.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public p createFromParcel(Parcel parcel) {
                return new p(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public p[] newArray(int i) {
                return new p[i];
            }
        };

        /* renamed from: d, reason: collision with root package name */
        int f2300d;
        int dq;
        boolean ox;

        public p() {
        }

        public p(Parcel parcel) {
            this.dq = parcel.readInt();
            this.f2300d = parcel.readInt();
            this.ox = parcel.readInt() == 1;
        }

        public void d() {
            this.dq = -1;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean dq() {
            return this.dq >= 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.dq);
            parcel.writeInt(this.f2300d);
            parcel.writeInt(this.ox ? 1 : 0);
        }
    }

    public s(Context context) {
        this(context, 1, false);
    }

    public s(Context context, int i, boolean z) {
        this.dq = 1;
        this.r = false;
        this.ox = false;
        this.i = false;
        this.le = true;
        this.p = -1;
        this.s = Integer.MIN_VALUE;
        this.iw = null;
        this.mn = new dq();
        this.wp = new d();
        this.f2296e = 2;
        dq(i);
        dq(z);
    }

    private int d(int i, RecyclerView.f fVar, RecyclerView.r rVar, boolean z) {
        int ox2;
        int ox3 = i - this.f2295d.ox();
        if (ox3 <= 0) {
            return 0;
        }
        int i2 = -ox(ox3, fVar, rVar);
        int i3 = i + i2;
        if (!z || (ox2 = i3 - this.f2295d.ox()) <= 0) {
            return i2;
        }
        this.f2295d.dq(-ox2);
        return i2 - ox2;
    }

    private View d(RecyclerView.f fVar, RecyclerView.r rVar) {
        return this.ox ? p(fVar, rVar) : s(fVar, rVar);
    }

    private View d(boolean z, boolean z2) {
        int i;
        int i2;
        if (this.ox) {
            i = 0;
            i2 = i();
        } else {
            i = i() - 1;
            i2 = -1;
        }
        return dq(i, i2, z, z2);
    }

    private void d(RecyclerView.f fVar, int i) {
        int i2 = i();
        if (i >= 0) {
            int s = this.f2295d.s() - i;
            if (this.ox) {
                for (int i3 = 0; i3 < i2; i3++) {
                    View ia = ia(i3);
                    if (this.f2295d.dq(ia) < s || this.f2295d.p(ia) < s) {
                        dq(fVar, 0, i3);
                        return;
                    }
                }
                return;
            }
            int i4 = i2 - 1;
            for (int i5 = i4; i5 >= 0; i5--) {
                View ia2 = ia(i5);
                if (this.f2295d.dq(ia2) < s || this.f2295d.p(ia2) < s) {
                    dq(fVar, i4, i5);
                    return;
                }
            }
        }
    }

    private void d(RecyclerView.f fVar, RecyclerView.r rVar, int i, int i2) {
        if (!rVar.d() || i() == 0 || rVar.dq() || !q()) {
            return;
        }
        List<RecyclerView.k> ox2 = fVar.ox();
        int size = ox2.size();
        int p2 = p(ia(0));
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < size; i5++) {
            RecyclerView.k kVar = ox2.get(i5);
            if (!kVar.i()) {
                if ((kVar.ia() < p2) != this.ox) {
                    i3 += this.f2295d.s(kVar.p);
                } else {
                    i4 += this.f2295d.s(kVar.p);
                }
            }
        }
        this.cd.no = ox2;
        if (i3 > 0) {
            mn(p(wn()), i);
            ox oxVar = this.cd;
            oxVar.ia = i3;
            oxVar.ox = 0;
            oxVar.dq();
            dq(fVar, this.cd, rVar, false);
        }
        if (i4 > 0) {
            iw(p(j()), i2);
            ox oxVar2 = this.cd;
            oxVar2.ia = i4;
            oxVar2.ox = 0;
            oxVar2.dq();
            dq(fVar, this.cd, rVar, false);
        }
        this.cd.no = null;
    }

    private void d(dq dqVar) {
        mn(dqVar.f2298d, dqVar.ox);
    }

    private boolean d(RecyclerView.f fVar, RecyclerView.r rVar, dq dqVar) {
        if (i() == 0) {
            return false;
        }
        View n = n();
        if (n != null && dqVar.dq(n, rVar)) {
            dqVar.dq(n, p(n));
            return true;
        }
        if (this.gh != this.i) {
            return false;
        }
        View d2 = dqVar.p ? d(fVar, rVar) : ox(fVar, rVar);
        if (d2 == null) {
            return false;
        }
        dqVar.d(d2, p(d2));
        if (!rVar.dq() && q() && (this.f2295d.dq(d2) >= this.f2295d.p() || this.f2295d.d(d2) < this.f2295d.ox())) {
            dqVar.ox = dqVar.p ? this.f2295d.p() : this.f2295d.ox();
        }
        return true;
    }

    private int dq(int i, RecyclerView.f fVar, RecyclerView.r rVar, boolean z) {
        int p2;
        int p3 = this.f2295d.p() - i;
        if (p3 <= 0) {
            return 0;
        }
        int i2 = -ox(-p3, fVar, rVar);
        int i3 = i + i2;
        if (!z || (p2 = this.f2295d.p() - i3) <= 0) {
            return i2;
        }
        this.f2295d.dq(p2);
        return p2 + i2;
    }

    private View dq(boolean z, boolean z2) {
        int i;
        int i2;
        if (this.ox) {
            i = i() - 1;
            i2 = -1;
        } else {
            i = 0;
            i2 = i();
        }
        return dq(i, i2, z, z2);
    }

    private void dq(int i, int i2, boolean z, RecyclerView.r rVar) {
        int ox2;
        this.cd.ig = ia();
        this.cd.ia = dq(rVar);
        ox oxVar = this.cd;
        oxVar.iw = i;
        if (i == 1) {
            oxVar.ia = this.f2295d.mn() + oxVar.ia;
            View j = j();
            ox oxVar2 = this.cd;
            oxVar2.s = this.ox ? -1 : 1;
            int p2 = p(j);
            ox oxVar3 = this.cd;
            oxVar2.p = p2 + oxVar3.s;
            oxVar3.f2299d = this.f2295d.d(j);
            ox2 = this.f2295d.d(j) - this.f2295d.p();
        } else {
            View wn = wn();
            ox oxVar4 = this.cd;
            oxVar4.ia = this.f2295d.ox() + oxVar4.ia;
            ox oxVar5 = this.cd;
            oxVar5.s = this.ox ? 1 : -1;
            int p3 = p(wn);
            ox oxVar6 = this.cd;
            oxVar5.p = p3 + oxVar6.s;
            oxVar6.f2299d = this.f2295d.dq(wn);
            ox2 = (-this.f2295d.dq(wn)) + this.f2295d.ox();
        }
        ox oxVar7 = this.cd;
        oxVar7.ox = i2;
        if (z) {
            oxVar7.ox = i2 - ox2;
        }
        oxVar7.mn = ox2;
    }

    private void dq(RecyclerView.f fVar, int i) {
        if (i >= 0) {
            int i2 = i();
            if (!this.ox) {
                for (int i3 = 0; i3 < i2; i3++) {
                    View ia = ia(i3);
                    if (this.f2295d.d(ia) > i || this.f2295d.ox(ia) > i) {
                        dq(fVar, 0, i3);
                        return;
                    }
                }
                return;
            }
            int i4 = i2 - 1;
            for (int i5 = i4; i5 >= 0; i5--) {
                View ia2 = ia(i5);
                if (this.f2295d.d(ia2) > i || this.f2295d.ox(ia2) > i) {
                    dq(fVar, i4, i5);
                    return;
                }
            }
        }
    }

    private void dq(RecyclerView.f fVar, int i, int i2) {
        if (i != i2) {
            if (i2 <= i) {
                while (i > i2) {
                    dq(i, fVar);
                    i--;
                }
            } else {
                for (int i3 = i2 - 1; i3 >= i; i3--) {
                    dq(i3, fVar);
                }
            }
        }
    }

    private void dq(RecyclerView.f fVar, RecyclerView.r rVar, dq dqVar) {
        if (dq(rVar, dqVar) || d(fVar, rVar, dqVar)) {
            return;
        }
        dqVar.d();
        dqVar.f2298d = this.i ? rVar.p() - 1 : 0;
    }

    private void dq(RecyclerView.f fVar, ox oxVar) {
        if (!oxVar.dq || oxVar.ig) {
            return;
        }
        if (oxVar.iw == -1) {
            d(fVar, oxVar.mn);
        } else {
            dq(fVar, oxVar.mn);
        }
    }

    private void dq(dq dqVar) {
        iw(dqVar.f2298d, dqVar.ox);
    }

    private boolean dq(RecyclerView.r rVar, dq dqVar) {
        int i;
        if (!rVar.dq() && (i = this.p) != -1) {
            if (i >= 0 && i < rVar.p()) {
                dqVar.f2298d = this.p;
                p pVar = this.iw;
                if (pVar != null && pVar.dq()) {
                    boolean z = this.iw.ox;
                    dqVar.p = z;
                    if (z) {
                        dqVar.ox = this.f2295d.p() - this.iw.f2300d;
                    } else {
                        dqVar.ox = this.f2295d.ox() + this.iw.f2300d;
                    }
                    return true;
                }
                if (this.s != Integer.MIN_VALUE) {
                    boolean z2 = this.ox;
                    dqVar.p = z2;
                    if (z2) {
                        dqVar.ox = this.f2295d.p() - this.s;
                    } else {
                        dqVar.ox = this.f2295d.ox() + this.s;
                    }
                    return true;
                }
                View d2 = d(this.p);
                if (d2 == null) {
                    if (i() > 0) {
                        dqVar.p = (this.p < p(ia(0))) == this.ox;
                    }
                    dqVar.d();
                } else {
                    if (this.f2295d.s(d2) > this.f2295d.iw()) {
                        dqVar.d();
                        return true;
                    }
                    if (this.f2295d.dq(d2) - this.f2295d.ox() < 0) {
                        dqVar.ox = this.f2295d.ox();
                        dqVar.p = false;
                        return true;
                    }
                    if (this.f2295d.p() - this.f2295d.d(d2) < 0) {
                        dqVar.ox = this.f2295d.p();
                        dqVar.p = true;
                        return true;
                    }
                    dqVar.ox = dqVar.p ? this.f2295d.d() + this.f2295d.d(d2) : this.f2295d.dq(d2);
                }
                return true;
            }
            this.p = -1;
            this.s = Integer.MIN_VALUE;
        }
        return false;
    }

    private void er() {
        if (this.dq == 1 || !s()) {
            this.ox = this.r;
        } else {
            this.ox = !this.r;
        }
    }

    private View ia(RecyclerView.f fVar, RecyclerView.r rVar) {
        return dq(0, i());
    }

    private View iw(RecyclerView.f fVar, RecyclerView.r rVar) {
        return this.ox ? ia(fVar, rVar) : kk(fVar, rVar);
    }

    private void iw(int i, int i2) {
        this.cd.ox = this.f2295d.p() - i2;
        ox oxVar = this.cd;
        oxVar.s = this.ox ? -1 : 1;
        oxVar.p = i;
        oxVar.iw = 1;
        oxVar.f2299d = i2;
        oxVar.mn = Integer.MIN_VALUE;
    }

    private View j() {
        return ia(this.ox ? 0 : i() - 1);
    }

    private int kk(RecyclerView.r rVar) {
        if (i() == 0) {
            return 0;
        }
        iw();
        return o.dq(rVar, this.f2295d, dq(!this.le, true), d(!this.le, true), this, this.le, this.ox);
    }

    private View kk(RecyclerView.f fVar, RecyclerView.r rVar) {
        return dq(i() - 1, -1);
    }

    private View mn(RecyclerView.f fVar, RecyclerView.r rVar) {
        return this.ox ? kk(fVar, rVar) : ia(fVar, rVar);
    }

    private void mn(int i, int i2) {
        this.cd.ox = i2 - this.f2295d.ox();
        ox oxVar = this.cd;
        oxVar.p = i;
        oxVar.s = this.ox ? 1 : -1;
        oxVar.iw = -1;
        oxVar.f2299d = i2;
        oxVar.mn = Integer.MIN_VALUE;
    }

    private int no(RecyclerView.r rVar) {
        if (i() == 0) {
            return 0;
        }
        iw();
        return o.d(rVar, this.f2295d, dq(!this.le, true), d(!this.le, true), this, this.le);
    }

    private int o(RecyclerView.r rVar) {
        if (i() == 0) {
            return 0;
        }
        iw();
        return o.dq(rVar, this.f2295d, dq(!this.le, true), d(!this.le, true), this, this.le);
    }

    private View ox(RecyclerView.f fVar, RecyclerView.r rVar) {
        return this.ox ? s(fVar, rVar) : p(fVar, rVar);
    }

    private View p(RecyclerView.f fVar, RecyclerView.r rVar) {
        return dq(fVar, rVar, 0, i(), rVar.p());
    }

    private View s(RecyclerView.f fVar, RecyclerView.r rVar) {
        return dq(fVar, rVar, i() - 1, -1, rVar.p());
    }

    private View wn() {
        return ia(this.ox ? i() - 1 : 0);
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.kk
    public int d(int i, RecyclerView.f fVar, RecyclerView.r rVar) {
        if (this.dq == 0) {
            return 0;
        }
        return ox(i, fVar, rVar);
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.kk
    public View d(int i) {
        int i2 = i();
        if (i2 == 0) {
            return null;
        }
        int p2 = i - p(ia(0));
        if (p2 >= 0 && p2 < i2) {
            View ia = ia(p2);
            if (p(ia) == i) {
                return ia;
            }
        }
        return super.d(i);
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.kk
    public RecyclerView.o d() {
        return new RecyclerView.o(-2, -2);
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.kk
    public void d(RecyclerView.r rVar) {
        super.d(rVar);
        this.iw = null;
        this.p = -1;
        this.s = Integer.MIN_VALUE;
        this.mn.dq();
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.kk
    public int dq(int i, RecyclerView.f fVar, RecyclerView.r rVar) {
        if (this.dq == 1) {
            return 0;
        }
        return ox(i, fVar, rVar);
    }

    public int dq(RecyclerView.f fVar, ox oxVar, RecyclerView.r rVar, boolean z) {
        int i = oxVar.ox;
        int i2 = oxVar.mn;
        if (i2 != Integer.MIN_VALUE) {
            if (i < 0) {
                oxVar.mn = i2 + i;
            }
            dq(fVar, oxVar);
        }
        int i3 = oxVar.ox + oxVar.ia;
        d dVar = this.wp;
        while (true) {
            if ((!oxVar.ig && i3 <= 0) || !oxVar.dq(rVar)) {
                break;
            }
            dVar.dq();
            dq(fVar, rVar, oxVar, dVar);
            if (!dVar.f2297d) {
                oxVar.f2299d = (dVar.dq * oxVar.iw) + oxVar.f2299d;
                if (!dVar.ox || this.cd.no != null || !rVar.dq()) {
                    int i4 = oxVar.ox;
                    int i5 = dVar.dq;
                    oxVar.ox = i4 - i5;
                    i3 -= i5;
                }
                int i6 = oxVar.mn;
                if (i6 != Integer.MIN_VALUE) {
                    int i7 = i6 + dVar.dq;
                    oxVar.mn = i7;
                    int i8 = oxVar.ox;
                    if (i8 < 0) {
                        oxVar.mn = i7 + i8;
                    }
                    dq(fVar, oxVar);
                }
                if (z && dVar.p) {
                    break;
                }
            } else {
                break;
            }
        }
        return i - oxVar.ox;
    }

    public int dq(RecyclerView.r rVar) {
        if (rVar.ox()) {
            return this.f2295d.iw();
        }
        return 0;
    }

    public View dq(int i, int i2) {
        int i3;
        int i4;
        iw();
        if (i2 <= i && i2 >= i) {
            return ia(i);
        }
        if (this.f2295d.dq(ia(i)) < this.f2295d.ox()) {
            i3 = 16644;
            i4 = 16388;
        } else {
            i3 = 4161;
            i4 = 4097;
        }
        return (this.dq == 0 ? this.o : this.no).dq(i, i2, i3, i4);
    }

    public View dq(int i, int i2, boolean z, boolean z2) {
        iw();
        int i3 = MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME;
        int i4 = z ? 24579 : MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME;
        if (!z2) {
            i3 = 0;
        }
        return (this.dq == 0 ? this.o : this.no).dq(i, i2, i4, i3);
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.kk
    public View dq(View view, int i, RecyclerView.f fVar, RecyclerView.r rVar) {
        int s;
        er();
        if (i() == 0 || (s = s(i)) == Integer.MIN_VALUE) {
            return null;
        }
        iw();
        iw();
        dq(s, (int) (this.f2295d.iw() * 0.33333334f), false, rVar);
        ox oxVar = this.cd;
        oxVar.mn = Integer.MIN_VALUE;
        oxVar.dq = false;
        dq(fVar, oxVar, rVar, true);
        View mn = s == -1 ? mn(fVar, rVar) : iw(fVar, rVar);
        View wn = s == -1 ? wn() : j();
        if (!wn.hasFocusable()) {
            return mn;
        }
        if (mn == null) {
            return null;
        }
        return wn;
    }

    public View dq(RecyclerView.f fVar, RecyclerView.r rVar, int i, int i2, int i3) {
        iw();
        int ox2 = this.f2295d.ox();
        int p2 = this.f2295d.p();
        int i4 = i2 > i ? 1 : -1;
        View view = null;
        View view2 = null;
        while (i != i2) {
            View ia = ia(i);
            int p3 = p(ia);
            if (p3 >= 0 && p3 < i3) {
                if (((RecyclerView.o) ia.getLayoutParams()).d()) {
                    if (view2 == null) {
                        view2 = ia;
                    }
                } else {
                    if (this.f2295d.dq(ia) < p2 && this.f2295d.d(ia) >= ox2) {
                        return ia;
                    }
                    if (view == null) {
                        view = ia;
                    }
                }
            }
            i += i4;
        }
        return view != null ? view : view2;
    }

    public void dq(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("invalid orientation:".concat(String.valueOf(i)));
        }
        dq((String) null);
        if (i != this.dq || this.f2295d == null) {
            ia dq2 = ia.dq(this, i);
            this.f2295d = dq2;
            this.mn.dq = dq2;
            this.dq = i;
            jy();
        }
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.kk
    public void dq(int i, int i2, RecyclerView.r rVar, RecyclerView.kk.dq dqVar) {
        if (this.dq != 0) {
            i = i2;
        }
        if (i() == 0 || i == 0) {
            return;
        }
        iw();
        dq(i > 0 ? 1 : -1, Math.abs(i), true, rVar);
        dq(rVar, this.cd, dqVar);
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.kk
    public void dq(int i, RecyclerView.kk.dq dqVar) {
        boolean z;
        int i2;
        p pVar = this.iw;
        if (pVar == null || !pVar.dq()) {
            er();
            z = this.ox;
            i2 = this.p;
            if (i2 == -1) {
                i2 = z ? i - 1 : 0;
            }
        } else {
            p pVar2 = this.iw;
            z = pVar2.ox;
            i2 = pVar2.dq;
        }
        int i3 = z ? -1 : 1;
        for (int i4 = 0; i4 < this.f2296e && i2 >= 0 && i2 < i; i4++) {
            dqVar.d(i2, 0);
            i2 += i3;
        }
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.kk
    public void dq(RecyclerView.f fVar, RecyclerView.r rVar) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int dq2;
        int i6;
        View d2;
        int dq3;
        int i7;
        if (!(this.iw == null && this.p == -1) && rVar.p() == 0) {
            ox(fVar);
            return;
        }
        p pVar = this.iw;
        if (pVar != null && pVar.dq()) {
            this.p = this.iw.dq;
        }
        iw();
        this.cd.dq = false;
        er();
        View n = n();
        dq dqVar = this.mn;
        if (!dqVar.s || this.p != -1 || this.iw != null) {
            dqVar.dq();
            dq dqVar2 = this.mn;
            dqVar2.p = this.ox ^ this.i;
            dq(fVar, rVar, dqVar2);
            this.mn.s = true;
        } else if (n != null && (this.f2295d.dq(n) >= this.f2295d.p() || this.f2295d.d(n) <= this.f2295d.ox())) {
            this.mn.dq(n, p(n));
        }
        int dq4 = dq(rVar);
        if (this.cd.o >= 0) {
            i = dq4;
            dq4 = 0;
        } else {
            i = 0;
        }
        int ox2 = this.f2295d.ox() + dq4;
        int mn = this.f2295d.mn() + i;
        if (rVar.dq() && (i6 = this.p) != -1 && this.s != Integer.MIN_VALUE && (d2 = d(i6)) != null) {
            if (this.ox) {
                i7 = this.f2295d.p() - this.f2295d.d(d2);
                dq3 = this.s;
            } else {
                dq3 = this.f2295d.dq(d2) - this.f2295d.ox();
                i7 = this.s;
            }
            int i8 = i7 - dq3;
            if (i8 > 0) {
                ox2 += i8;
            } else {
                mn -= i8;
            }
        }
        dq(fVar);
        this.cd.ig = ia();
        this.cd.kk = rVar.dq();
        dq dqVar3 = this.mn;
        if (dqVar3.p) {
            d(dqVar3);
            ox oxVar = this.cd;
            oxVar.ia = ox2;
            dq(fVar, oxVar, rVar, false);
            ox oxVar2 = this.cd;
            i3 = oxVar2.f2299d;
            int i9 = oxVar2.p;
            int i10 = oxVar2.ox;
            if (i10 > 0) {
                mn += i10;
            }
            dq(this.mn);
            ox oxVar3 = this.cd;
            oxVar3.ia = mn;
            oxVar3.p += oxVar3.s;
            dq(fVar, oxVar3, rVar, false);
            ox oxVar4 = this.cd;
            i2 = oxVar4.f2299d;
            int i11 = oxVar4.ox;
            if (i11 > 0) {
                mn(i9, i3);
                ox oxVar5 = this.cd;
                oxVar5.ia = i11;
                dq(fVar, oxVar5, rVar, false);
                i3 = this.cd.f2299d;
            }
        } else {
            dq(dqVar3);
            ox oxVar6 = this.cd;
            oxVar6.ia = mn;
            dq(fVar, oxVar6, rVar, false);
            ox oxVar7 = this.cd;
            i2 = oxVar7.f2299d;
            int i12 = oxVar7.p;
            int i13 = oxVar7.ox;
            if (i13 > 0) {
                ox2 += i13;
            }
            d(this.mn);
            ox oxVar8 = this.cd;
            oxVar8.ia = ox2;
            oxVar8.p += oxVar8.s;
            dq(fVar, oxVar8, rVar, false);
            ox oxVar9 = this.cd;
            int i14 = oxVar9.f2299d;
            int i15 = oxVar9.ox;
            if (i15 > 0) {
                iw(i12, i2);
                ox oxVar10 = this.cd;
                oxVar10.ia = i15;
                dq(fVar, oxVar10, rVar, false);
                i2 = this.cd.f2299d;
            }
            i3 = i14;
        }
        if (i() > 0) {
            if (this.ox ^ this.i) {
                int dq5 = dq(i2, fVar, rVar, true);
                i4 = i3 + dq5;
                i5 = i2 + dq5;
                dq2 = d(i4, fVar, rVar, false);
            } else {
                int d3 = d(i3, fVar, rVar, true);
                i4 = i3 + d3;
                i5 = i2 + d3;
                dq2 = dq(i5, fVar, rVar, false);
            }
            i3 = i4 + dq2;
            i2 = i5 + dq2;
        }
        d(fVar, rVar, i3, i2);
        if (rVar.dq()) {
            this.mn.dq();
        } else {
            this.f2295d.dq();
        }
        this.gh = this.i;
    }

    public void dq(RecyclerView.f fVar, RecyclerView.r rVar, ox oxVar, d dVar) {
        int i;
        int i2;
        int i3;
        int i4;
        int kx;
        int iw;
        int i5;
        int i6;
        View dq2 = oxVar.dq(fVar);
        if (dq2 == null) {
            dVar.f2297d = true;
            return;
        }
        RecyclerView.o oVar = (RecyclerView.o) dq2.getLayoutParams();
        if (oxVar.no == null) {
            if (this.ox == (oxVar.iw == -1)) {
                d(dq2);
            } else {
                d(dq2, 0);
            }
        } else {
            if (this.ox == (oxVar.iw == -1)) {
                dq(dq2);
            } else {
                dq(dq2, 0);
            }
        }
        dq(dq2, 0, 0);
        dVar.dq = this.f2295d.s(dq2);
        if (this.dq == 1) {
            if (s()) {
                iw = wp() - ji();
                kx = iw - this.f2295d.iw(dq2);
            } else {
                kx = kx();
                iw = this.f2295d.iw(dq2) + kx;
            }
            if (oxVar.iw == -1) {
                i6 = oxVar.f2299d;
                i5 = i6 - dVar.dq;
            } else {
                i5 = oxVar.f2299d;
                i6 = dVar.dq + i5;
            }
            int i7 = kx;
            i4 = i5;
            i3 = i7;
            i2 = i6;
            i = iw;
        } else {
            int h = h();
            int iw2 = this.f2295d.iw(dq2) + h;
            if (oxVar.iw == -1) {
                int i8 = oxVar.f2299d;
                i3 = i8 - dVar.dq;
                i = i8;
                i2 = iw2;
            } else {
                int i9 = oxVar.f2299d;
                i = dVar.dq + i9;
                i2 = iw2;
                i3 = i9;
            }
            i4 = h;
        }
        dq(dq2, i3, i4, i, i2);
        if (oVar.d() || oVar.ox()) {
            dVar.ox = true;
        }
        dVar.p = dq2.hasFocusable();
    }

    public void dq(RecyclerView.r rVar, ox oxVar, RecyclerView.kk.dq dqVar) {
        int i = oxVar.p;
        if (i < 0 || i >= rVar.p()) {
            return;
        }
        dqVar.d(i, Math.max(0, oxVar.mn));
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.kk
    public void dq(RecyclerView recyclerView, RecyclerView.f fVar) {
        super.dq(recyclerView, fVar);
        if (this.k) {
            ox(fVar);
            fVar.dq();
        }
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.kk
    public void dq(RecyclerView recyclerView, RecyclerView.r rVar, int i) {
        iw iwVar = new iw(recyclerView.getContext());
        iwVar.ox(i);
        dq(iwVar);
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.kk
    public void dq(String str) {
        if (this.iw == null) {
            super.dq(str);
        }
    }

    public void dq(boolean z) {
        dq((String) null);
        if (z != this.r) {
            this.r = z;
            jy();
        }
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.kk
    public boolean dq() {
        return true;
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.kk
    public int ia(RecyclerView.r rVar) {
        return no(rVar);
    }

    public boolean ia() {
        return this.f2295d.ia() == 0 && this.f2295d.s() == 0;
    }

    public int ig() {
        View dq2 = dq(i() - 1, -1, false, true);
        if (dq2 == null) {
            return -1;
        }
        return p(dq2);
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.kk
    public int iw(RecyclerView.r rVar) {
        return o(rVar);
    }

    public void iw() {
        if (this.cd == null) {
            this.cd = mn();
        }
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.kk
    public boolean kk() {
        return (k() == 1073741824 || le() == 1073741824 || !ce()) ? false : true;
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.kk
    public int mn(RecyclerView.r rVar) {
        return no(rVar);
    }

    public ox mn() {
        return new ox();
    }

    public int mp() {
        View dq2 = dq(i() - 1, -1, true, false);
        if (dq2 == null) {
            return -1;
        }
        return p(dq2);
    }

    public int no() {
        View dq2 = dq(0, i(), true, false);
        if (dq2 == null) {
            return -1;
        }
        return p(dq2);
    }

    public int o() {
        View dq2 = dq(0, i(), false, true);
        if (dq2 == null) {
            return -1;
        }
        return p(dq2);
    }

    public int ox(int i, RecyclerView.f fVar, RecyclerView.r rVar) {
        if (i() == 0 || i == 0) {
            return 0;
        }
        this.cd.dq = true;
        iw();
        int i2 = i > 0 ? 1 : -1;
        int abs = Math.abs(i);
        dq(i2, abs, true, rVar);
        ox oxVar = this.cd;
        int dq2 = dq(fVar, oxVar, rVar, false) + oxVar.mn;
        if (dq2 < 0) {
            return 0;
        }
        if (abs > dq2) {
            i = i2 * dq2;
        }
        this.f2295d.dq(-i);
        this.cd.o = i;
        return i;
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.kk
    public int ox(RecyclerView.r rVar) {
        return kk(rVar);
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.gh.d
    public PointF ox(int i) {
        if (i() == 0) {
            return null;
        }
        int i2 = (i < p(ia(0))) != this.ox ? -1 : 1;
        return this.dq == 0 ? new PointF(i2, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) : new PointF(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, i2);
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.kk
    public boolean ox() {
        return this.dq == 0;
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.kk
    public int p(RecyclerView.r rVar) {
        return kk(rVar);
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.kk
    public void p(int i) {
        this.p = i;
        this.s = Integer.MIN_VALUE;
        p pVar = this.iw;
        if (pVar != null) {
            pVar.d();
        }
        jy();
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.kk
    public boolean p() {
        return this.dq == 1;
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.kk
    public boolean q() {
        return this.iw == null && this.gh == this.i;
    }

    public int s(int i) {
        return i != 1 ? i != 2 ? i != 17 ? i != 33 ? i != 66 ? (i == 130 && this.dq == 1) ? 1 : Integer.MIN_VALUE : this.dq == 0 ? 1 : Integer.MIN_VALUE : this.dq == 1 ? -1 : Integer.MIN_VALUE : this.dq == 0 ? -1 : Integer.MIN_VALUE : (this.dq != 1 && s()) ? -1 : 1 : (this.dq != 1 && s()) ? 1 : -1;
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.kk
    public int s(RecyclerView.r rVar) {
        return o(rVar);
    }

    public boolean s() {
        return gh() == 1;
    }
}
