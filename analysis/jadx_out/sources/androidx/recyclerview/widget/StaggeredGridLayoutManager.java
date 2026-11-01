package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.aqz;
import g.bjd;
import g.blc;
import g.byd;
import g.ckd;
import g.ctw;
import g.cur;
import g.fc;
import g.fdy;
import g.fnz;
import g.fyb;
import g.goi;
import g.gur;
import g.he;
import g.ru;
import g.wp;
import g.yx;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class StaggeredGridLayoutManager extends b implements wp {
    public final int ac;
    public a ad;
    public final boolean af;
    public boolean ai;
    public final bjd al;

    /* renamed from: b, reason: collision with root package name */
    public final ru f253b;

    /* renamed from: c, reason: collision with root package name */
    public final BitSet f254c;

    /* renamed from: d, reason: collision with root package name */
    public final Rect f255d;

    /* renamed from: e, reason: collision with root package name */
    public final fdy f256e;

    /* renamed from: f, reason: collision with root package name */
    public int f257f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f258g;
    public final int h;
    public final byd i;
    public final fyb j;
    public boolean k;
    public int[] l;
    public final bjd o;
    public final int p;
    public final ctw[] t;
    public boolean ak = false;

    /* renamed from: a, reason: collision with root package name */
    public int f252a = -1;
    public int aa = Integer.MIN_VALUE;

    public static class a implements Parcelable {
        public static final Parcelable.Creator<a> CREATOR = new q();
        boolean mAnchorLayoutFromEnd;
        int mAnchorPosition;
        List<blc> mFullSpanItems;
        boolean mLastLayoutRTL;
        boolean mReverseLayout;
        int[] mSpanLookup;
        int mSpanLookupSize;
        int[] mSpanOffsets;
        int mSpanOffsetsSize;
        int mVisibleAnchorPosition;

        public a() {
        }

        public a(Parcel parcel) {
            this.mAnchorPosition = parcel.readInt();
            this.mVisibleAnchorPosition = parcel.readInt();
            int readInt = parcel.readInt();
            this.mSpanOffsetsSize = readInt;
            if (readInt > 0) {
                int[] iArr = new int[readInt];
                this.mSpanOffsets = iArr;
                parcel.readIntArray(iArr);
            }
            int readInt2 = parcel.readInt();
            this.mSpanLookupSize = readInt2;
            if (readInt2 > 0) {
                int[] iArr2 = new int[readInt2];
                this.mSpanLookup = iArr2;
                parcel.readIntArray(iArr2);
            }
            this.mReverseLayout = parcel.readInt() == 1;
            this.mAnchorLayoutFromEnd = parcel.readInt() == 1;
            this.mLastLayoutRTL = parcel.readInt() == 1;
            this.mFullSpanItems = parcel.readArrayList(blc.class.getClassLoader());
        }

        public a(a aVar) {
            this.mSpanOffsetsSize = aVar.mSpanOffsetsSize;
            this.mAnchorPosition = aVar.mAnchorPosition;
            this.mVisibleAnchorPosition = aVar.mVisibleAnchorPosition;
            this.mSpanOffsets = aVar.mSpanOffsets;
            this.mSpanLookupSize = aVar.mSpanLookupSize;
            this.mSpanLookup = aVar.mSpanLookup;
            this.mReverseLayout = aVar.mReverseLayout;
            this.mAnchorLayoutFromEnd = aVar.mAnchorLayoutFromEnd;
            this.mLastLayoutRTL = aVar.mLastLayoutRTL;
            this.mFullSpanItems = aVar.mFullSpanItems;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public void invalidateAnchorPositionInfo() {
            this.mSpanOffsets = null;
            this.mSpanOffsetsSize = 0;
            this.mAnchorPosition = -1;
            this.mVisibleAnchorPosition = -1;
        }

        public void invalidateSpanInfo() {
            this.mSpanOffsets = null;
            this.mSpanOffsetsSize = 0;
            this.mSpanLookupSize = 0;
            this.mSpanLookup = null;
            this.mFullSpanItems = null;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mAnchorPosition);
            parcel.writeInt(this.mVisibleAnchorPosition);
            parcel.writeInt(this.mSpanOffsetsSize);
            if (this.mSpanOffsetsSize > 0) {
                parcel.writeIntArray(this.mSpanOffsets);
            }
            parcel.writeInt(this.mSpanLookupSize);
            if (this.mSpanLookupSize > 0) {
                parcel.writeIntArray(this.mSpanLookup);
            }
            parcel.writeInt(this.mReverseLayout ? 1 : 0);
            parcel.writeInt(this.mAnchorLayoutFromEnd ? 1 : 0);
            parcel.writeInt(this.mLastLayoutRTL ? 1 : 0);
            parcel.writeList(this.mFullSpanItems);
        }
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.p = -1;
        this.k = false;
        fdy fdyVar = new fdy(2, false);
        this.f256e = fdyVar;
        this.h = 2;
        this.f255d = new Rect();
        this.f253b = new ru(this);
        this.af = true;
        this.i = new byd(25, this);
        gur eb = b.eb(context, attributeSet, i, i2);
        int i3 = eb.f18784b;
        if (i3 != 0 && i3 != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        de(null);
        if (i3 != this.ac) {
            this.ac = i3;
            bjd bjdVar = this.al;
            this.al = this.o;
            this.o = bjdVar;
            em();
        }
        int i4 = eb.f18785c;
        de(null);
        if (i4 != this.p) {
            fdyVar.o();
            em();
            this.p = i4;
            this.f254c = new BitSet(this.p);
            this.t = new ctw[this.p];
            for (int i5 = 0; i5 < this.p; i5++) {
                this.t[i5] = new ctw(this, i5);
            }
            em();
        }
        boolean z = eb.f18786d;
        de(null);
        a aVar = this.ad;
        if (aVar != null && aVar.mReverseLayout != z) {
            aVar.mReverseLayout = z;
        }
        this.k = z;
        em();
        fyb fybVar = new fyb();
        fybVar.f17623d = true;
        fybVar.f17624e = 0;
        fybVar.i = 0;
        this.j = fybVar;
        this.al = bjd.e(this, this.ac);
        this.o = bjd.e(this, 1 - this.ac);
    }

    public static int an(int i, int i2, int i3) {
        int mode;
        return (!(i2 == 0 && i3 == 0) && ((mode = View.MeasureSpec.getMode(i)) == Integer.MIN_VALUE || mode == 1073741824)) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - i2) - i3), mode) : i;
    }

    @Override // androidx.recyclerview.widget.b
    public final boolean ab(yx yxVar) {
        return yxVar instanceof cur;
    }

    @Override // androidx.recyclerview.widget.b
    public final yx ae(Context context, AttributeSet attributeSet) {
        return new cur(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.b
    public final void ag(int i, int i2) {
        as(i, i2, 8);
    }

    @Override // androidx.recyclerview.widget.b
    public final boolean ah() {
        return this.ad == null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:111:0x0050, code lost:
    
        if (r8.ac == 1) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0056, code lost:
    
        if (r8.ac == 0) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0062, code lost:
    
        if (bi() == false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x006e, code lost:
    
        if (bi() == false) goto L37;
     */
    @Override // androidx.recyclerview.widget.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final View aj(View view, int i, f fVar, aqz aqzVar) {
        View view2;
        int i2;
        if (et() != 0) {
            RecyclerView recyclerView = this.dw;
            if (recyclerView == null || (view2 = recyclerView.findContainingItemView(view)) == null || this.ds.f307e.contains(view2)) {
                view2 = null;
            }
            if (view2 != null) {
                bs();
                if (i == 1) {
                    if (this.ac != 1) {
                    }
                    i2 = -1;
                } else if (i == 2) {
                    if (this.ac != 1) {
                    }
                    i2 = 1;
                } else if (i != 17) {
                    if (i != 33) {
                        if (i == 66) {
                        }
                    }
                    i2 = Integer.MIN_VALUE;
                }
                if (i2 != Integer.MIN_VALUE) {
                    cur curVar = (cur) view2.getLayoutParams();
                    curVar.getClass();
                    ctw ctwVar = curVar.f13552e;
                    int at = i2 == 1 ? at() : aq();
                    ax(at, aqzVar);
                    bq(i2);
                    fyb fybVar = this.j;
                    fybVar.h = fybVar.f17621b + at;
                    fybVar.f17626g = (int) (this.al.g() * 0.33333334f);
                    fybVar.f17620a = true;
                    fybVar.f17623d = false;
                    bk(fVar, fybVar, aqzVar);
                    this.f258g = this.ak;
                    View u = ctwVar.u(at, i2);
                    if (u != null && u != view2) {
                        return u;
                    }
                    if (bv(i2)) {
                        for (int i3 = this.p - 1; i3 >= 0; i3--) {
                            View u2 = this.t[i3].u(at, i2);
                            if (u2 != null && u2 != view2) {
                                return u2;
                            }
                        }
                    } else {
                        for (int i4 = 0; i4 < this.p; i4++) {
                            View u3 = this.t[i4].u(at, i2);
                            if (u3 != null && u3 != view2) {
                                return u3;
                            }
                        }
                    }
                    boolean z = (this.k ^ true) == (i2 == -1);
                    View cz = cz(z ? ctwVar.o() : ctwVar.p());
                    if (cz != null && cz != view2) {
                        return cz;
                    }
                    if (bv(i2)) {
                        for (int i5 = this.p - 1; i5 >= 0; i5--) {
                            if (i5 != ctwVar.f13502d) {
                                View cz2 = cz(z ? this.t[i5].o() : this.t[i5].p());
                                if (cz2 != null && cz2 != view2) {
                                    return cz2;
                                }
                            }
                        }
                    } else {
                        for (int i6 = 0; i6 < this.p; i6++) {
                            View cz3 = cz(z ? this.t[i6].o() : this.t[i6].p());
                            if (cz3 != null && cz3 != view2) {
                                return cz3;
                            }
                        }
                    }
                }
            }
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.b
    public final int am(int i, f fVar, aqz aqzVar) {
        return bg(i, fVar, aqzVar);
    }

    @Override // androidx.recyclerview.widget.b
    public final yx ao(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new cur((ViewGroup.MarginLayoutParams) layoutParams) : new cur(layoutParams);
    }

    @Override // androidx.recyclerview.widget.b
    public final void ap(aqz aqzVar) {
        this.f252a = -1;
        this.aa = Integer.MIN_VALUE;
        this.ad = null;
        this.f253b.h();
    }

    public final int aq() {
        if (et() == 0) {
            return 0;
        }
        return b.ed(eo(0));
    }

    public final int ar(int i) {
        int w = this.t[0].w(i);
        for (int i2 = 1; i2 < this.p; i2++) {
            int w2 = this.t[i2].w(i);
            if (w2 < w) {
                w = w2;
            }
        }
        return w;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void as(int i, int i2, int i3) {
        int i4;
        int i5;
        int at = this.ak ? at() : aq();
        if (i3 != 8) {
            i4 = i + i2;
        } else {
            if (i >= i2) {
                i4 = i + 1;
                i5 = i2;
                fdy fdyVar = this.f256e;
                fdyVar.v(i5);
                if (i3 != 1) {
                    fdyVar.al(i, i2);
                } else if (i3 == 2) {
                    fdyVar.aj(i, i2);
                } else if (i3 == 8) {
                    fdyVar.aj(i, 1);
                    fdyVar.al(i2, 1);
                }
                if (i4 > at) {
                    return;
                }
                if (i5 <= (this.ak ? aq() : at())) {
                    em();
                    return;
                }
                return;
            }
            i4 = i2 + 1;
        }
        i5 = i;
        fdy fdyVar2 = this.f256e;
        fdyVar2.v(i5);
        if (i3 != 1) {
        }
        if (i4 > at) {
        }
    }

    public final int at() {
        int et = et();
        if (et == 0) {
            return 0;
        }
        return b.ed(eo(et - 1));
    }

    @Override // androidx.recyclerview.widget.b
    public final void au() {
        this.f256e.o();
        em();
    }

    @Override // androidx.recyclerview.widget.b
    public final int av(f fVar, aqz aqzVar) {
        if (this.ac == 0) {
            return Math.min(this.p, aqzVar.p());
        }
        return -1;
    }

    @Override // androidx.recyclerview.widget.b
    public final int aw(f fVar, aqz aqzVar) {
        if (this.ac == 1) {
            return Math.min(this.p, aqzVar.p());
        }
        return -1;
    }

    public final void ax(int i, aqz aqzVar) {
        int i2;
        int i3;
        RecyclerView recyclerView;
        int i4;
        fyb fybVar = this.j;
        boolean z = false;
        fybVar.f17626g = 0;
        fybVar.h = i;
        i iVar = this.dr;
        if (iVar == null || !iVar.f292g || (i4 = aqzVar.f10687g) == -1) {
            i2 = 0;
        } else {
            if (this.ak != (i4 < i)) {
                i3 = this.al.g();
                i2 = 0;
                recyclerView = this.dw;
                if (recyclerView == null && recyclerView.mClipToPadding) {
                    fybVar.f17624e = this.al.p() - i3;
                    fybVar.i = this.al.r() + i2;
                } else {
                    fybVar.i = this.al.l() + i2;
                    fybVar.f17624e = -i3;
                }
                fybVar.f17620a = false;
                fybVar.f17623d = true;
                if (this.al.n() == 0 && this.al.l() == 0) {
                    z = true;
                }
                fybVar.f17625f = z;
            }
            i2 = this.al.g();
        }
        i3 = 0;
        recyclerView = this.dw;
        if (recyclerView == null) {
        }
        fybVar.i = this.al.l() + i2;
        fybVar.f17624e = -i3;
        fybVar.f17620a = false;
        fybVar.f17623d = true;
        if (this.al.n() == 0) {
            z = true;
        }
        fybVar.f17625f = z;
    }

    @Override // androidx.recyclerview.widget.b
    public final void ay(Rect rect, int i, int i2) {
        int eh;
        int eh2;
        int fj = fj() + eq();
        int er = er() + fd();
        int i3 = this.ac;
        int i4 = this.p;
        if (i3 == 1) {
            int height = rect.height() + er;
            RecyclerView recyclerView = this.dw;
            WeakHashMap weakHashMap = goi.f18490c;
            eh2 = b.eh(i2, height, recyclerView.getMinimumHeight());
            eh = b.eh(i, (this.f257f * i4) + fj, this.dw.getMinimumWidth());
        } else {
            int width = rect.width() + fj;
            RecyclerView recyclerView2 = this.dw;
            WeakHashMap weakHashMap2 = goi.f18490c;
            eh = b.eh(i, width, recyclerView2.getMinimumWidth());
            eh2 = b.eh(i2, (this.f257f * i4) + er, this.dw.getMinimumHeight());
        }
        this.dw.setMeasuredDimension(eh, eh2);
    }

    @Override // androidx.recyclerview.widget.b
    public final yx az() {
        return this.ac == 0 ? new cur(-2, -1) : new cur(-1, -2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01a5, code lost:
    
        r11 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01a1, code lost:
    
        if ((r11 < aq()) != r16.ak) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:261:0x0416, code lost:
    
        if (br() != false) goto L255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0193, code lost:
    
        if (r16.ak != false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01a3, code lost:
    
        r11 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void ba(f fVar, aqz aqzVar, boolean z) {
        a aVar;
        int i;
        int i2;
        boolean z2;
        a aVar2 = this.ad;
        ru ruVar = this.f253b;
        if (!(aVar2 == null && this.f252a == -1) && aqzVar.p() == 0) {
            fh(fVar);
            ruVar.h();
            return;
        }
        boolean z3 = ruVar.f19924b;
        StaggeredGridLayoutManager staggeredGridLayoutManager = ruVar.f19929g;
        boolean z4 = true;
        boolean z5 = (z3 && this.f252a == -1 && this.ad == null) ? false : true;
        fdy fdyVar = this.f256e;
        if (z5) {
            ruVar.h();
            a aVar3 = this.ad;
            if (aVar3 != null) {
                int i3 = aVar3.mSpanOffsetsSize;
                if (i3 > 0) {
                    if (i3 == this.p) {
                        for (int i4 = 0; i4 < this.p; i4++) {
                            this.t[i4].v();
                            a aVar4 = this.ad;
                            int i5 = aVar4.mSpanOffsets[i4];
                            if (i5 != Integer.MIN_VALUE) {
                                i5 += aVar4.mAnchorLayoutFromEnd ? this.al.r() : this.al.p();
                            }
                            ctw ctwVar = this.t[i4];
                            ctwVar.f13505g = i5;
                            ctwVar.h = i5;
                        }
                    } else {
                        aVar3.invalidateSpanInfo();
                        a aVar5 = this.ad;
                        aVar5.mAnchorPosition = aVar5.mVisibleAnchorPosition;
                    }
                }
                a aVar6 = this.ad;
                this.ai = aVar6.mLastLayoutRTL;
                boolean z6 = aVar6.mReverseLayout;
                de(null);
                a aVar7 = this.ad;
                if (aVar7 != null && aVar7.mReverseLayout != z6) {
                    aVar7.mReverseLayout = z6;
                }
                this.k = z6;
                em();
                bs();
                a aVar8 = this.ad;
                int i6 = aVar8.mAnchorPosition;
                if (i6 != -1) {
                    this.f252a = i6;
                    ruVar.f19928f = aVar8.mAnchorLayoutFromEnd;
                } else {
                    ruVar.f19928f = this.ak;
                }
                if (aVar8.mSpanLookupSize > 1) {
                    fdyVar.f16634c = aVar8.mSpanLookup;
                    fdyVar.f16632a = aVar8.mFullSpanItems;
                }
            } else {
                bs();
                ruVar.f19928f = this.ak;
            }
            if (!aqzVar.n && (i2 = this.f252a) != -1) {
                if (i2 < 0 || i2 >= aqzVar.p()) {
                    this.f252a = -1;
                    this.aa = Integer.MIN_VALUE;
                } else {
                    a aVar9 = this.ad;
                    if (aVar9 == null || aVar9.mAnchorPosition == -1 || aVar9.mSpanOffsetsSize < 1) {
                        View cz = cz(this.f252a);
                        if (cz != null) {
                            ruVar.f19925c = this.ak ? at() : aq();
                            if (this.aa != Integer.MIN_VALUE) {
                                if (ruVar.f19928f) {
                                    ruVar.f19927e = (this.al.r() - this.aa) - this.al.o(cz);
                                } else {
                                    ruVar.f19927e = (this.al.p() + this.aa) - this.al.k(cz);
                                }
                            } else if (this.al.q(cz) > this.al.g()) {
                                ruVar.f19927e = ruVar.f19928f ? this.al.r() : this.al.p();
                            } else {
                                int k = this.al.k(cz) - this.al.p();
                                if (k < 0) {
                                    ruVar.f19927e = -k;
                                } else {
                                    int r = this.al.r() - this.al.o(cz);
                                    if (r < 0) {
                                        ruVar.f19927e = r;
                                    } else {
                                        ruVar.f19927e = Integer.MIN_VALUE;
                                    }
                                }
                            }
                        } else {
                            int i7 = this.f252a;
                            ruVar.f19925c = i7;
                            int i8 = this.aa;
                            if (i8 == Integer.MIN_VALUE) {
                                if (et() == 0) {
                                }
                                ruVar.f19928f = z2;
                                ruVar.f19927e = z2 ? staggeredGridLayoutManager.al.r() : staggeredGridLayoutManager.al.p();
                            } else if (ruVar.f19928f) {
                                ruVar.f19927e = staggeredGridLayoutManager.al.r() - i8;
                            } else {
                                ruVar.f19927e = staggeredGridLayoutManager.al.p() + i8;
                            }
                            ruVar.f19923a = true;
                        }
                    } else {
                        ruVar.f19927e = Integer.MIN_VALUE;
                        ruVar.f19925c = this.f252a;
                    }
                    ruVar.f19924b = true;
                }
            }
            if (this.f258g) {
                int p = aqzVar.p();
                for (int et = et() - 1; et >= 0; et--) {
                    i = b.ed(eo(et));
                    if (i >= 0 && i < p) {
                        break;
                    }
                }
                i = 0;
                ruVar.f19925c = i;
                ruVar.f19927e = Integer.MIN_VALUE;
                ruVar.f19924b = true;
            } else {
                int p2 = aqzVar.p();
                int et2 = et();
                for (int i9 = 0; i9 < et2; i9++) {
                    int ed = b.ed(eo(i9));
                    if (ed >= 0 && ed < p2) {
                        i = ed;
                        break;
                    }
                }
                i = 0;
                ruVar.f19925c = i;
                ruVar.f19927e = Integer.MIN_VALUE;
                ruVar.f19924b = true;
            }
        }
        if (this.ad == null && this.f252a == -1 && (ruVar.f19928f != this.f258g || bi() != this.ai)) {
            fdyVar.o();
            ruVar.f19923a = true;
        }
        if (et() > 0 && ((aVar = this.ad) == null || aVar.mSpanOffsetsSize < 1)) {
            if (ruVar.f19923a) {
                for (int i10 = 0; i10 < this.p; i10++) {
                    this.t[i10].v();
                    int i11 = ruVar.f19927e;
                    if (i11 != Integer.MIN_VALUE) {
                        ctw ctwVar2 = this.t[i10];
                        ctwVar2.f13505g = i11;
                        ctwVar2.h = i11;
                    }
                }
            } else if (z5 || ruVar.f19926d == null) {
                for (int i12 = 0; i12 < this.p; i12++) {
                    ctw ctwVar3 = this.t[i12];
                    boolean z7 = this.ak;
                    int i13 = ruVar.f19927e;
                    StaggeredGridLayoutManager staggeredGridLayoutManager2 = (StaggeredGridLayoutManager) ctwVar3.i;
                    int l = z7 ? ctwVar3.l(Integer.MIN_VALUE) : ctwVar3.w(Integer.MIN_VALUE);
                    ctwVar3.v();
                    if (l != Integer.MIN_VALUE && ((!z7 || l >= staggeredGridLayoutManager2.al.r()) && (z7 || l <= staggeredGridLayoutManager2.al.p()))) {
                        if (i13 != Integer.MIN_VALUE) {
                            l += i13;
                        }
                        ctwVar3.h = l;
                        ctwVar3.f13505g = l;
                    }
                }
                ctw[] ctwVarArr = this.t;
                int length = ctwVarArr.length;
                int[] iArr = ruVar.f19926d;
                if (iArr == null || iArr.length < length) {
                    ruVar.f19926d = new int[staggeredGridLayoutManager.t.length];
                }
                for (int i14 = 0; i14 < length; i14++) {
                    ruVar.f19926d[i14] = ctwVarArr[i14].w(Integer.MIN_VALUE);
                }
            } else {
                for (int i15 = 0; i15 < this.p; i15++) {
                    ctw ctwVar4 = this.t[i15];
                    ctwVar4.v();
                    int i16 = ruVar.f19926d[i15];
                    ctwVar4.f13505g = i16;
                    ctwVar4.h = i16;
                }
            }
        }
        ex(fVar);
        fyb fybVar = this.j;
        fybVar.f17623d = false;
        int g2 = this.o.g();
        this.f257f = g2 / this.p;
        View.MeasureSpec.makeMeasureSpec(g2, this.o.n());
        ax(ruVar.f19925c, aqzVar);
        if (ruVar.f19928f) {
            bq(-1);
            bk(fVar, fybVar, aqzVar);
            bq(1);
            fybVar.h = ruVar.f19925c + fybVar.f17621b;
            bk(fVar, fybVar, aqzVar);
        } else {
            bq(1);
            bk(fVar, fybVar, aqzVar);
            bq(-1);
            fybVar.h = ruVar.f19925c + fybVar.f17621b;
            bk(fVar, fybVar, aqzVar);
        }
        if (this.o.n() != 1073741824) {
            int et3 = et();
            float f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            for (int i17 = 0; i17 < et3; i17++) {
                View eo = eo(i17);
                float q = this.o.q(eo);
                if (q >= f2) {
                    ((cur) eo.getLayoutParams()).getClass();
                    f2 = Math.max(f2, q);
                }
            }
            int i18 = this.f257f;
            int round = Math.round(f2 * this.p);
            if (this.o.n() == Integer.MIN_VALUE) {
                round = Math.min(round, this.o.g());
            }
            this.f257f = round / this.p;
            View.MeasureSpec.makeMeasureSpec(round, this.o.n());
            if (this.f257f != i18) {
                for (int i19 = 0; i19 < et3; i19++) {
                    View eo2 = eo(i19);
                    cur curVar = (cur) eo2.getLayoutParams();
                    curVar.getClass();
                    if (bi() && this.ac == 1) {
                        int i20 = -((this.p - 1) - curVar.f13552e.f13502d);
                        eo2.offsetLeftAndRight((this.f257f * i20) - (i20 * i18));
                    } else {
                        int i21 = curVar.f13552e.f13502d;
                        int i22 = this.f257f * i21;
                        int i23 = i21 * i18;
                        if (this.ac == 1) {
                            eo2.offsetLeftAndRight(i22 - i23);
                        } else {
                            eo2.offsetTopAndBottom(i22 - i23);
                        }
                    }
                }
            }
        }
        if (et() > 0) {
            if (this.ak) {
                bw(fVar, aqzVar, true);
                bd(fVar, aqzVar, false);
            } else {
                bd(fVar, aqzVar, true);
                bw(fVar, aqzVar, false);
            }
        }
        if (z && !aqzVar.n && this.h != 0 && et() > 0 && bl() != null) {
            RecyclerView recyclerView = this.dw;
            if (recyclerView != null) {
                recyclerView.removeCallbacks(this.i);
            }
        }
        z4 = false;
        if (aqzVar.n) {
            ruVar.h();
        }
        this.f258g = ruVar.f19928f;
        this.ai = bi();
        if (z4) {
            ruVar.h();
            ba(fVar, aqzVar, false);
        }
    }

    @Override // androidx.recyclerview.widget.b
    public final void bb(int i, int i2) {
        as(i, i2, 1);
    }

    public final void bc(int i, aqz aqzVar) {
        int aq;
        int i2;
        if (i > 0) {
            aq = at();
            i2 = 1;
        } else {
            aq = aq();
            i2 = -1;
        }
        fyb fybVar = this.j;
        fybVar.f17623d = true;
        ax(aq, aqzVar);
        bq(i2);
        fybVar.h = aq + fybVar.f17621b;
        fybVar.f17626g = Math.abs(i);
    }

    public final void bd(f fVar, aqz aqzVar, boolean z) {
        int p;
        int ar = ar(he.UNDEFINED_ITEM_ID);
        if (ar != Integer.MAX_VALUE && (p = ar - this.al.p()) > 0) {
            int bg = p - bg(p, fVar, aqzVar);
            if (!z || bg <= 0) {
                return;
            }
            this.al.h(-bg);
        }
    }

    public final int be(aqz aqzVar) {
        if (et() == 0) {
            return 0;
        }
        boolean z = !this.af;
        return ckd.au(aqzVar, this.al, bj(z), bp(z), this, this.af, this.ak);
    }

    public final void bf(f fVar, int i) {
        for (int et = et() - 1; et >= 0; et--) {
            View eo = eo(et);
            if (this.al.k(eo) < i || this.al.m(eo) < i) {
                return;
            }
            cur curVar = (cur) eo.getLayoutParams();
            curVar.getClass();
            if (((ArrayList) curVar.f13552e.f13504f).size() == 1) {
                return;
            }
            ctw ctwVar = curVar.f13552e;
            ArrayList arrayList = (ArrayList) ctwVar.f13504f;
            int size = arrayList.size();
            View view = (View) arrayList.remove(size - 1);
            cur curVar2 = (cur) view.getLayoutParams();
            curVar2.f13552e = null;
            if (curVar2.f20371b.u() || curVar2.f20371b.v()) {
                ctwVar.f13501c -= ((StaggeredGridLayoutManager) ctwVar.i).al.q(view);
            }
            if (size == 1) {
                ctwVar.f13505g = Integer.MIN_VALUE;
            }
            ctwVar.h = Integer.MIN_VALUE;
            fi(eo, fVar);
        }
    }

    public final int bg(int i, f fVar, aqz aqzVar) {
        if (et() == 0 || i == 0) {
            return 0;
        }
        bc(i, aqzVar);
        fyb fybVar = this.j;
        int bk = bk(fVar, fybVar, aqzVar);
        if (fybVar.f17626g >= bk) {
            i = i < 0 ? -bk : bk;
        }
        this.al.h(-i);
        this.f258g = this.ak;
        fybVar.f17626g = 0;
        bo(fVar, fybVar);
        return i;
    }

    public final int bh(int i) {
        int l = this.t[0].l(i);
        for (int i2 = 1; i2 < this.p; i2++) {
            int l2 = this.t[i2].l(i);
            if (l2 > l) {
                l = l2;
            }
        }
        return l;
    }

    public final boolean bi() {
        return this.dw.getLayoutDirection() == 1;
    }

    public final View bj(boolean z) {
        int p = this.al.p();
        int r = this.al.r();
        int et = et();
        View view = null;
        for (int i = 0; i < et; i++) {
            View eo = eo(i);
            int k = this.al.k(eo);
            if (this.al.o(eo) > p && k < r) {
                if (k >= p || !z) {
                    return eo;
                }
                if (view == null) {
                    view = eo;
                }
            }
        }
        return view;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0269, code lost:
    
        bo(r20, r3);
     */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v24 */
    /* JADX WARN: Type inference failed for: r8v3, types: [boolean, int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int bk(f fVar, fyb fybVar, aqz aqzVar) {
        ctw ctwVar;
        ?? r8;
        int w;
        int q;
        int p;
        int q2;
        int i;
        int i2;
        int i3;
        int i4 = 1;
        this.f254c.set(0, this.p, true);
        fyb fybVar2 = this.j;
        int i5 = fybVar2.f17625f ? fybVar.f17622c == 1 ? he.UNDEFINED_ITEM_ID : Integer.MIN_VALUE : fybVar.f17622c == 1 ? fybVar.i + fybVar.f17626g : fybVar.f17624e - fybVar.f17626g;
        int i6 = fybVar.f17622c;
        for (int i7 = 0; i7 < this.p; i7++) {
            if (!((ArrayList) this.t[i7].f13504f).isEmpty()) {
                bt(this.t[i7], i6, i5);
            }
        }
        int r = this.ak ? this.al.r() : this.al.p();
        boolean z = false;
        while (true) {
            int i8 = fybVar.h;
            if (i8 < 0 || i8 >= aqzVar.p() || (!fybVar2.f17625f && this.f254c.isEmpty())) {
                break;
            }
            View n = fVar.n(fybVar.h);
            fybVar.h += fybVar.f17621b;
            cur curVar = (cur) n.getLayoutParams();
            int ag = curVar.f20371b.ag();
            fdy fdyVar = this.f256e;
            int[] iArr = (int[]) fdyVar.f16634c;
            int i9 = (iArr == null || ag >= iArr.length) ? -1 : iArr[ag];
            if (i9 == -1) {
                if (bv(fybVar.f17622c)) {
                    i2 = this.p - i4;
                    i = -1;
                    i3 = -1;
                } else {
                    i = this.p;
                    i2 = 0;
                    i3 = 1;
                }
                ctw ctwVar2 = null;
                if (fybVar.f17622c == i4) {
                    int p2 = this.al.p();
                    int i10 = he.UNDEFINED_ITEM_ID;
                    while (i2 != i) {
                        ctw ctwVar3 = this.t[i2];
                        int l = ctwVar3.l(p2);
                        if (l < i10) {
                            i10 = l;
                            ctwVar2 = ctwVar3;
                        }
                        i2 += i3;
                    }
                } else {
                    int r2 = this.al.r();
                    int i11 = Integer.MIN_VALUE;
                    while (i2 != i) {
                        ctw ctwVar4 = this.t[i2];
                        int w2 = ctwVar4.w(r2);
                        if (w2 > i11) {
                            ctwVar2 = ctwVar4;
                            i11 = w2;
                        }
                        i2 += i3;
                    }
                }
                ctwVar = ctwVar2;
                fdyVar.m(ag);
                ((int[]) fdyVar.f16634c)[ag] = ctwVar.f13502d;
            } else {
                ctwVar = this.t[i9];
            }
            curVar.f13552e = ctwVar;
            if (fybVar.f17622c == 1) {
                r8 = 0;
                fc(n, -1, false);
            } else {
                r8 = 0;
                fc(n, 0, false);
            }
            if (this.ac == 1) {
                bm(n, b.ef(this.f257f, this.dq, r8, ((ViewGroup.MarginLayoutParams) curVar).width, r8), b.ef(this.dn, this.du, er() + fd(), ((ViewGroup.MarginLayoutParams) curVar).height, true));
            } else {
                bm(n, b.ef(this.f0do, this.dq, fj() + eq(), ((ViewGroup.MarginLayoutParams) curVar).width, true), b.ef(this.f257f, this.du, 0, ((ViewGroup.MarginLayoutParams) curVar).height, false));
            }
            if (fybVar.f17622c == 1) {
                q = ctwVar.l(r);
                w = this.al.q(n) + q;
            } else {
                w = ctwVar.w(r);
                q = w - this.al.q(n);
            }
            if (fybVar.f17622c == 1) {
                ctw ctwVar5 = curVar.f13552e;
                ctwVar5.getClass();
                cur curVar2 = (cur) n.getLayoutParams();
                curVar2.f13552e = ctwVar5;
                ArrayList arrayList = (ArrayList) ctwVar5.f13504f;
                arrayList.add(n);
                ctwVar5.h = Integer.MIN_VALUE;
                if (arrayList.size() == 1) {
                    ctwVar5.f13505g = Integer.MIN_VALUE;
                }
                if (curVar2.f20371b.u() || curVar2.f20371b.v()) {
                    ctwVar5.f13501c = ((StaggeredGridLayoutManager) ctwVar5.i).al.q(n) + ctwVar5.f13501c;
                }
            } else {
                ctw ctwVar6 = curVar.f13552e;
                ctwVar6.getClass();
                cur curVar3 = (cur) n.getLayoutParams();
                curVar3.f13552e = ctwVar6;
                ArrayList arrayList2 = (ArrayList) ctwVar6.f13504f;
                arrayList2.add(0, n);
                ctwVar6.f13505g = Integer.MIN_VALUE;
                if (arrayList2.size() == 1) {
                    ctwVar6.h = Integer.MIN_VALUE;
                }
                if (curVar3.f20371b.u() || curVar3.f20371b.v()) {
                    ctwVar6.f13501c = ((StaggeredGridLayoutManager) ctwVar6.i).al.q(n) + ctwVar6.f13501c;
                }
            }
            if (bi() && this.ac == 1) {
                q2 = this.o.r() - (((this.p - 1) - ctwVar.f13502d) * this.f257f);
                p = q2 - this.o.q(n);
            } else {
                p = this.o.p() + (ctwVar.f13502d * this.f257f);
                q2 = this.o.q(n) + p;
            }
            if (this.ac == 1) {
                b.ec(n, p, q, q2, w);
            } else {
                b.ec(n, q, p, w, q2);
            }
            bt(ctwVar, fybVar2.f17622c, i5);
            bo(fVar, fybVar2);
            if (fybVar2.f17620a && n.hasFocusable()) {
                this.f254c.set(ctwVar.f13502d, false);
            }
            i4 = 1;
            z = true;
        }
        int p3 = fybVar2.f17622c == -1 ? this.al.p() - ar(this.al.p()) : bh(this.al.r()) - this.al.r();
        if (p3 > 0) {
            return Math.min(fybVar.f17626g, p3);
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0107 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x002c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00ff  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final View bl() {
        int et = et();
        int i = et - 1;
        BitSet bitSet = new BitSet(this.p);
        bitSet.set(0, this.p, true);
        char c2 = (this.ac == 1 && bi()) ? (char) 1 : (char) 65535;
        if (this.ak) {
            et = -1;
        } else {
            i = 0;
        }
        int i2 = i < et ? 1 : -1;
        while (i != et) {
            View eo = eo(i);
            cur curVar = (cur) eo.getLayoutParams();
            if (bitSet.get(curVar.f13552e.f13502d)) {
                ctw ctwVar = curVar.f13552e;
                if (this.ak) {
                    int i3 = ctwVar.h;
                    if (i3 == Integer.MIN_VALUE) {
                        ctwVar.q();
                        i3 = ctwVar.h;
                    }
                    if (i3 < this.al.r()) {
                        ArrayList arrayList = (ArrayList) ctwVar.f13504f;
                        ((cur) ((View) arrayList.get(arrayList.size() - 1)).getLayoutParams()).getClass();
                        return eo;
                    }
                } else {
                    int i4 = ctwVar.f13505g;
                    if (i4 == Integer.MIN_VALUE) {
                        View view = (View) ((ArrayList) ctwVar.f13504f).get(0);
                        cur curVar2 = (cur) view.getLayoutParams();
                        ctwVar.f13505g = ((StaggeredGridLayoutManager) ctwVar.i).al.k(view);
                        curVar2.getClass();
                        i4 = ctwVar.f13505g;
                    }
                    if (i4 > this.al.p()) {
                        ((cur) ((View) ((ArrayList) ctwVar.f13504f).get(0)).getLayoutParams()).getClass();
                        return eo;
                    }
                }
                bitSet.clear(curVar.f13552e.f13502d);
            }
            i += i2;
            if (i != et) {
                View eo2 = eo(i);
                if (this.ak) {
                    int o = this.al.o(eo);
                    int o2 = this.al.o(eo2);
                    if (o < o2) {
                        return eo;
                    }
                    if (o == o2) {
                        if ((curVar.f13552e.f13502d - ((cur) eo2.getLayoutParams()).f13552e.f13502d >= 0) == (c2 >= 0)) {
                            return eo;
                        }
                    } else {
                        continue;
                    }
                } else {
                    int k = this.al.k(eo);
                    int k2 = this.al.k(eo2);
                    if (k > k2) {
                        return eo;
                    }
                    if (k == k2) {
                        if ((curVar.f13552e.f13502d - ((cur) eo2.getLayoutParams()).f13552e.f13502d >= 0) == (c2 >= 0)) {
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
        return null;
    }

    public final void bm(View view, int i, int i2) {
        RecyclerView recyclerView = this.dw;
        Rect rect = this.f255d;
        if (recyclerView == null) {
            rect.set(0, 0, 0, 0);
        } else {
            rect.set(recyclerView.getItemDecorInsetsForChild(view));
        }
        cur curVar = (cur) view.getLayoutParams();
        int an = an(i, ((ViewGroup.MarginLayoutParams) curVar).leftMargin + rect.left, ((ViewGroup.MarginLayoutParams) curVar).rightMargin + rect.right);
        int an2 = an(i2, ((ViewGroup.MarginLayoutParams) curVar).topMargin + rect.top, ((ViewGroup.MarginLayoutParams) curVar).bottomMargin + rect.bottom);
        if (fk(view, an, an2, curVar)) {
            view.measure(an, an2);
        }
    }

    public final void bn(f fVar, int i) {
        while (et() > 0) {
            View eo = eo(0);
            if (this.al.o(eo) > i || this.al.j(eo) > i) {
                return;
            }
            cur curVar = (cur) eo.getLayoutParams();
            curVar.getClass();
            if (((ArrayList) curVar.f13552e.f13504f).size() == 1) {
                return;
            }
            ctw ctwVar = curVar.f13552e;
            ArrayList arrayList = (ArrayList) ctwVar.f13504f;
            View view = (View) arrayList.remove(0);
            cur curVar2 = (cur) view.getLayoutParams();
            curVar2.f13552e = null;
            if (arrayList.size() == 0) {
                ctwVar.h = Integer.MIN_VALUE;
            }
            if (curVar2.f20371b.u() || curVar2.f20371b.v()) {
                ctwVar.f13501c -= ((StaggeredGridLayoutManager) ctwVar.i).al.q(view);
            }
            ctwVar.f13505g = Integer.MIN_VALUE;
            fi(eo, fVar);
        }
    }

    public final void bo(f fVar, fyb fybVar) {
        if (!fybVar.f17623d || fybVar.f17625f) {
            return;
        }
        if (fybVar.f17626g == 0) {
            if (fybVar.f17622c == -1) {
                bf(fVar, fybVar.i);
                return;
            } else {
                bn(fVar, fybVar.f17624e);
                return;
            }
        }
        int i = 1;
        if (fybVar.f17622c == -1) {
            int i2 = fybVar.f17624e;
            int w = this.t[0].w(i2);
            while (i < this.p) {
                int w2 = this.t[i].w(i2);
                if (w2 > w) {
                    w = w2;
                }
                i++;
            }
            int i3 = i2 - w;
            bf(fVar, i3 < 0 ? fybVar.i : fybVar.i - Math.min(i3, fybVar.f17626g));
            return;
        }
        int i4 = fybVar.i;
        int l = this.t[0].l(i4);
        while (i < this.p) {
            int l2 = this.t[i].l(i4);
            if (l2 < l) {
                l = l2;
            }
            i++;
        }
        int i5 = l - fybVar.i;
        bn(fVar, i5 < 0 ? fybVar.f17624e : Math.min(i5, fybVar.f17626g) + fybVar.f17624e);
    }

    public final View bp(boolean z) {
        int p = this.al.p();
        int r = this.al.r();
        View view = null;
        for (int et = et() - 1; et >= 0; et--) {
            View eo = eo(et);
            int k = this.al.k(eo);
            int o = this.al.o(eo);
            if (o > p && k < r) {
                if (o <= r || !z) {
                    return eo;
                }
                if (view == null) {
                    view = eo;
                }
            }
        }
        return view;
    }

    public final void bq(int i) {
        fyb fybVar = this.j;
        fybVar.f17622c = i;
        fybVar.f17621b = this.ak != (i == -1) ? -1 : 1;
    }

    public final boolean br() {
        int aq;
        if (et() != 0 && this.h != 0 && this.dz) {
            if (this.ak) {
                aq = at();
                aq();
            } else {
                aq = aq();
                at();
            }
            if (aq == 0 && bl() != null) {
                this.f256e.o();
                this.dt = true;
                em();
                return true;
            }
        }
        return false;
    }

    public final void bs() {
        if (this.ac == 1 || !bi()) {
            this.ak = this.k;
        } else {
            this.ak = !this.k;
        }
    }

    public final void bt(ctw ctwVar, int i, int i2) {
        int i3 = ctwVar.f13501c;
        int i4 = ctwVar.f13502d;
        if (i != -1) {
            int i5 = ctwVar.h;
            if (i5 == Integer.MIN_VALUE) {
                ctwVar.q();
                i5 = ctwVar.h;
            }
            if (i5 - i3 >= i2) {
                this.f254c.set(i4, false);
                return;
            }
            return;
        }
        int i6 = ctwVar.f13505g;
        if (i6 == Integer.MIN_VALUE) {
            View view = (View) ((ArrayList) ctwVar.f13504f).get(0);
            cur curVar = (cur) view.getLayoutParams();
            ctwVar.f13505g = ((StaggeredGridLayoutManager) ctwVar.i).al.k(view);
            curVar.getClass();
            i6 = ctwVar.f13505g;
        }
        if (i6 + i3 <= i2) {
            this.f254c.set(i4, false);
        }
    }

    @Override // androidx.recyclerview.widget.b
    public final void bu(int i, int i2, aqz aqzVar, r rVar) {
        fyb fybVar;
        int l;
        int i3;
        if (this.ac != 0) {
            i = i2;
        }
        if (et() == 0 || i == 0) {
            return;
        }
        bc(i, aqzVar);
        int[] iArr = this.l;
        if (iArr == null || iArr.length < this.p) {
            this.l = new int[this.p];
        }
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = this.p;
            fybVar = this.j;
            if (i4 >= i6) {
                break;
            }
            if (fybVar.f17621b == -1) {
                l = fybVar.f17624e;
                i3 = this.t[i4].w(l);
            } else {
                l = this.t[i4].l(fybVar.i);
                i3 = fybVar.i;
            }
            int i7 = l - i3;
            if (i7 >= 0) {
                this.l[i5] = i7;
                i5++;
            }
            i4++;
        }
        Arrays.sort(this.l, 0, i5);
        for (int i8 = 0; i8 < i5; i8++) {
            int i9 = fybVar.h;
            if (i9 < 0 || i9 >= aqzVar.p()) {
                return;
            }
            rVar.e(fybVar.h, this.l[i8]);
            fybVar.h += fybVar.f17621b;
        }
    }

    public final boolean bv(int i) {
        if (this.ac == 0) {
            return (i == -1) != this.ak;
        }
        return ((i == -1) == this.ak) == bi();
    }

    public final void bw(f fVar, aqz aqzVar, boolean z) {
        int r;
        int bh = bh(Integer.MIN_VALUE);
        if (bh != Integer.MIN_VALUE && (r = this.al.r() - bh) > 0) {
            int i = r - (-bg(-r, fVar, aqzVar));
            if (!z || i <= 0) {
                return;
            }
            this.al.h(i);
        }
    }

    @Override // androidx.recyclerview.widget.b
    public final boolean bx() {
        return this.k;
    }

    @Override // androidx.recyclerview.widget.b
    public final boolean ca() {
        return this.ac == 0;
    }

    @Override // androidx.recyclerview.widget.b
    public final Parcelable cc() {
        int w;
        int p;
        int[] iArr;
        a aVar = this.ad;
        if (aVar != null) {
            return new a(aVar);
        }
        a aVar2 = new a();
        aVar2.mReverseLayout = this.k;
        aVar2.mAnchorLayoutFromEnd = this.f258g;
        aVar2.mLastLayoutRTL = this.ai;
        fdy fdyVar = this.f256e;
        if (fdyVar == null || (iArr = (int[]) fdyVar.f16634c) == null) {
            aVar2.mSpanLookupSize = 0;
        } else {
            aVar2.mSpanLookup = iArr;
            aVar2.mSpanLookupSize = iArr.length;
            aVar2.mFullSpanItems = (List) fdyVar.f16632a;
        }
        if (et() <= 0) {
            aVar2.mAnchorPosition = -1;
            aVar2.mVisibleAnchorPosition = -1;
            aVar2.mSpanOffsetsSize = 0;
            return aVar2;
        }
        aVar2.mAnchorPosition = this.f258g ? at() : aq();
        View bp = this.ak ? bp(true) : bj(true);
        aVar2.mVisibleAnchorPosition = bp != null ? b.ed(bp) : -1;
        int i = this.p;
        aVar2.mSpanOffsetsSize = i;
        aVar2.mSpanOffsets = new int[i];
        for (int i2 = 0; i2 < this.p; i2++) {
            if (this.f258g) {
                w = this.t[i2].l(Integer.MIN_VALUE);
                if (w != Integer.MIN_VALUE) {
                    p = this.al.r();
                    w -= p;
                    aVar2.mSpanOffsets[i2] = w;
                } else {
                    aVar2.mSpanOffsets[i2] = w;
                }
            } else {
                w = this.t[i2].w(Integer.MIN_VALUE);
                if (w != Integer.MIN_VALUE) {
                    p = this.al.p();
                    w -= p;
                    aVar2.mSpanOffsets[i2] = w;
                } else {
                    aVar2.mSpanOffsets[i2] = w;
                }
            }
        }
        return aVar2;
    }

    @Override // androidx.recyclerview.widget.b
    public final boolean cd() {
        return this.ac == 1;
    }

    @Override // androidx.recyclerview.widget.b
    public final void ce(AccessibilityEvent accessibilityEvent) {
        super.ce(accessibilityEvent);
        if (et() > 0) {
            View bj = bj(false);
            View bp = bp(false);
            if (bj == null || bp == null) {
                return;
            }
            int ed = b.ed(bj);
            int ed2 = b.ed(bp);
            if (ed < ed2) {
                accessibilityEvent.setFromIndex(ed);
                accessibilityEvent.setToIndex(ed2);
            } else {
                accessibilityEvent.setFromIndex(ed2);
                accessibilityEvent.setToIndex(ed);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0019, code lost:
    
        if ((r4 < aq()) != r3.ak) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x000a, code lost:
    
        if (r3.ak != false) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x000c, code lost:
    
        r1 = 1;
     */
    @Override // g.wp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final PointF cf(int i) {
        int i2 = -1;
        if (et() == 0) {
        }
        PointF pointF = new PointF();
        if (i2 == 0) {
            return null;
        }
        if (this.ac == 0) {
            pointF.x = i2;
            pointF.y = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            return pointF;
        }
        pointF.x = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        pointF.y = i2;
        return pointF;
    }

    @Override // androidx.recyclerview.widget.b
    public final boolean ch() {
        return this.h != 0;
    }

    @Override // androidx.recyclerview.widget.b
    public final void cm(RecyclerView recyclerView, int i) {
        i iVar = new i(recyclerView.getContext());
        iVar.h = i;
        ep(iVar);
    }

    @Override // androidx.recyclerview.widget.b
    public final int cr(aqz aqzVar) {
        if (et() == 0) {
            return 0;
        }
        boolean z = !this.af;
        return ckd.am(aqzVar, this.al, bj(z), bp(z), this, this.af);
    }

    @Override // androidx.recyclerview.widget.b
    public final int cx(aqz aqzVar) {
        if (et() == 0) {
            return 0;
        }
        boolean z = !this.af;
        return ckd.am(aqzVar, this.al, bj(z), bp(z), this, this.af);
    }

    @Override // androidx.recyclerview.widget.b
    public final void dc(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.dw;
        if (recyclerView2 != null) {
            recyclerView2.removeCallbacks(this.i);
        }
        for (int i = 0; i < this.p; i++) {
            this.t[i].v();
        }
        recyclerView.requestLayout();
    }

    @Override // androidx.recyclerview.widget.b
    public final void de(String str) {
        if (this.ad == null) {
            super.de(str);
        }
    }

    @Override // androidx.recyclerview.widget.b
    public final void dg(Parcelable parcelable) {
        if (parcelable instanceof a) {
            a aVar = (a) parcelable;
            this.ad = aVar;
            if (this.f252a != -1) {
                aVar.invalidateAnchorPositionInfo();
                this.ad.invalidateSpanInfo();
            }
            em();
        }
    }

    @Override // androidx.recyclerview.widget.b
    public final void dh(int i) {
        a aVar = this.ad;
        if (aVar != null && aVar.mAnchorPosition != i) {
            aVar.invalidateAnchorPositionInfo();
        }
        this.f252a = i;
        this.aa = Integer.MIN_VALUE;
        em();
    }

    @Override // androidx.recyclerview.widget.b
    public final void ei(int i) {
        if (i == 0) {
            br();
        }
    }

    @Override // androidx.recyclerview.widget.b
    public final void el() {
        this.f256e.o();
        for (int i = 0; i < this.p; i++) {
            this.t[i].v();
        }
    }

    @Override // androidx.recyclerview.widget.b
    public final void ez(int i) {
        super.ez(i);
        for (int i2 = 0; i2 < this.p; i2++) {
            ctw ctwVar = this.t[i2];
            int i3 = ctwVar.f13505g;
            if (i3 != Integer.MIN_VALUE) {
                ctwVar.f13505g = i3 + i;
            }
            int i4 = ctwVar.h;
            if (i4 != Integer.MIN_VALUE) {
                ctwVar.h = i4 + i;
            }
        }
    }

    @Override // androidx.recyclerview.widget.b
    public final void fe(int i) {
        super.fe(i);
        for (int i2 = 0; i2 < this.p; i2++) {
            ctw ctwVar = this.t[i2];
            int i3 = ctwVar.f13505g;
            if (i3 != Integer.MIN_VALUE) {
                ctwVar.f13505g = i3 + i;
            }
            int i4 = ctwVar.h;
            if (i4 != Integer.MIN_VALUE) {
                ctwVar.h = i4 + i;
            }
        }
    }

    @Override // androidx.recyclerview.widget.b
    public final int m(int i, f fVar, aqz aqzVar) {
        return bg(i, fVar, aqzVar);
    }

    @Override // androidx.recyclerview.widget.b
    public final int q(aqz aqzVar) {
        return be(aqzVar);
    }

    @Override // androidx.recyclerview.widget.b
    public final void r(f fVar, aqz aqzVar) {
        ba(fVar, aqzVar, true);
    }

    @Override // androidx.recyclerview.widget.b
    public final int s(aqz aqzVar) {
        if (et() == 0) {
            return 0;
        }
        boolean z = !this.af;
        return ckd.bg(aqzVar, this.al, bj(z), bp(z), this, this.af);
    }

    @Override // androidx.recyclerview.widget.b
    public final void u(int i, int i2) {
        as(i, i2, 4);
    }

    @Override // androidx.recyclerview.widget.b
    public final void v(f fVar, aqz aqzVar, fnz fnzVar) {
        super.v(fVar, aqzVar, fnzVar);
        fnzVar.j("androidx.recyclerview.widget.StaggeredGridLayoutManager");
    }

    @Override // androidx.recyclerview.widget.b
    public final int w(aqz aqzVar) {
        return be(aqzVar);
    }

    @Override // androidx.recyclerview.widget.b
    public final int x(aqz aqzVar) {
        if (et() == 0) {
            return 0;
        }
        boolean z = !this.af;
        return ckd.bg(aqzVar, this.al, bj(z), bp(z), this, this.af);
    }

    @Override // androidx.recyclerview.widget.b
    public final void y(int i, int i2) {
        as(i, i2, 2);
    }

    @Override // androidx.recyclerview.widget.b
    public final void z(f fVar, aqz aqzVar, View view, fnz fnzVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof cur)) {
            eu(view, fnzVar);
            return;
        }
        cur curVar = (cur) layoutParams;
        if (this.ac == 0) {
            ctw ctwVar = curVar.f13552e;
            fnzVar.l(fc.f(ctwVar == null ? -1 : ctwVar.f13502d, 1, -1, -1, false));
        } else {
            ctw ctwVar2 = curVar.f13552e;
            fnzVar.l(fc.f(-1, -1, ctwVar2 == null ? -1 : ctwVar2.f13502d, 1, false));
        }
    }
}
