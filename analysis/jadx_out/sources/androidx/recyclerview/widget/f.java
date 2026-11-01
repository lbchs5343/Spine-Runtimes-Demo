package androidx.recyclerview.widget;

import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import g.amk;
import g.aqz;
import g.atv;
import g.awf;
import g.dgn;
import g.dln;
import g.dvv;
import g.egh;
import g.fmk;
import g.geq;
import g.goi;
import g.tn;
import g.yx;
import j$.util.Objects;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f273a;

    /* renamed from: b, reason: collision with root package name */
    public final List f274b;

    /* renamed from: c, reason: collision with root package name */
    public int f275c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f276d;

    /* renamed from: e, reason: collision with root package name */
    public int f277e;

    /* renamed from: f, reason: collision with root package name */
    public ArrayList f278f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f279g;
    public dvv h;

    public f(RecyclerView recyclerView) {
        this.f273a = recyclerView;
        ArrayList arrayList = new ArrayList();
        this.f276d = arrayList;
        this.f278f = null;
        this.f279g = new ArrayList();
        this.f274b = Collections.unmodifiableList(arrayList);
        this.f275c = 2;
        this.f277e = 2;
    }

    public static void i(ViewGroup viewGroup, boolean z) {
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount);
            if (childAt instanceof ViewGroup) {
                i((ViewGroup) childAt, true);
            }
        }
        if (z) {
            if (viewGroup.getVisibility() == 4) {
                viewGroup.setVisibility(0);
                viewGroup.setVisibility(4);
            } else {
                int visibility = viewGroup.getVisibility();
                viewGroup.setVisibility(4);
                viewGroup.setVisibility(visibility);
            }
        }
    }

    public final void j() {
        ArrayList arrayList = this.f279g;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            s(size);
        }
        arrayList.clear();
        if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
            r rVar = this.f273a.mPrefetchRegistry;
            int[] iArr = rVar.f318d;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            rVar.f315a = 0;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x00cc, code lost:
    
        r5 = r5 - 1;
     */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00e0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void k(p pVar) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean af = pVar.af();
        View view = pVar.n;
        boolean z5 = true;
        RecyclerView recyclerView = this.f273a;
        if (af || view.getParent() != null) {
            StringBuilder sb = new StringBuilder("Scrapped or attached views may not be recycled. isScrap:");
            sb.append(pVar.af());
            sb.append(" isAttached:");
            sb.append(view.getParent() != null);
            sb.append(recyclerView.exceptionLabel());
            throw new IllegalArgumentException(sb.toString());
        }
        if (pVar.ah()) {
            StringBuilder sb2 = new StringBuilder("Tmp detached view should be removed from RecyclerView before it can be recycled: ");
            sb2.append(pVar);
            throw new IllegalArgumentException(awf.u(recyclerView, sb2));
        }
        if (pVar.w()) {
            throw new IllegalArgumentException(awf.u(recyclerView, new StringBuilder("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.")));
        }
        if ((pVar.f313f & 16) == 0) {
            WeakHashMap weakHashMap = goi.f18490c;
            if (view.hasTransientState()) {
                z = true;
                m mVar = recyclerView.mAdapter;
                z2 = mVar == null && z && mVar.onFailedToRecycleView(pVar);
                z3 = RecyclerView.sDebugAssertionsEnabled;
                ArrayList arrayList = this.f279g;
                if (!z3 && arrayList.contains(pVar)) {
                    StringBuilder sb3 = new StringBuilder("cached view received recycle internal? ");
                    sb3.append(pVar);
                    throw new IllegalArgumentException(awf.u(recyclerView, sb3));
                }
                if (!z2 || pVar.aj()) {
                    if (this.f277e > 0 || (pVar.f313f & 526) != 0) {
                        z4 = false;
                    } else {
                        int size = arrayList.size();
                        if (size >= this.f277e && size > 0) {
                            s(0);
                            size--;
                        }
                        if (RecyclerView.ALLOW_THREAD_GAP_WORK && size > 0) {
                            r rVar = recyclerView.mPrefetchRegistry;
                            int i = pVar.f314g;
                            if (rVar.f318d != null) {
                                int i2 = rVar.f315a * 2;
                                for (int i3 = 0; i3 < i2; i3 += 2) {
                                    if (rVar.f318d[i3] == i) {
                                        break;
                                    }
                                }
                            }
                            int i4 = size - 1;
                            loop1: while (i4 >= 0) {
                                int i5 = ((p) arrayList.get(i4)).f314g;
                                r rVar2 = recyclerView.mPrefetchRegistry;
                                if (rVar2.f318d == null) {
                                    break;
                                }
                                int i6 = rVar2.f315a * 2;
                                for (int i7 = 0; i7 < i6; i7 += 2) {
                                    if (rVar2.f318d[i7] == i5) {
                                        break;
                                    }
                                }
                                break loop1;
                            }
                            size = i4 + 1;
                        }
                        arrayList.add(size, pVar);
                        z4 = true;
                    }
                    if (z4) {
                        p(pVar, true);
                        r2 = z4;
                        recyclerView.mViewInfoStore.c(pVar);
                        if (r2 && !z5 && z) {
                            egh.y(view);
                            pVar.j = null;
                            pVar.m = null;
                            return;
                        }
                        return;
                    }
                    r2 = z4;
                } else if (RecyclerView.sVerboseLoggingEnabled) {
                    recyclerView.exceptionLabel();
                }
                z5 = false;
                recyclerView.mViewInfoStore.c(pVar);
                if (r2) {
                    return;
                } else {
                    return;
                }
            }
        }
        z = false;
        m mVar2 = recyclerView.mAdapter;
        if (mVar2 == null) {
        }
        z3 = RecyclerView.sDebugAssertionsEnabled;
        ArrayList arrayList2 = this.f279g;
        if (!z3) {
        }
        if (z2) {
        }
        if (this.f277e > 0) {
        }
        z4 = false;
        if (z4) {
        }
    }

    public final void l() {
        b bVar = this.f273a.mLayout;
        this.f277e = this.f275c + (bVar != null ? bVar.dx : 0);
        ArrayList arrayList = this.f279g;
        for (int size = arrayList.size() - 1; size >= 0 && arrayList.size() > this.f277e; size--) {
            s(size);
        }
    }

    public final void m(p pVar) {
        if (pVar.f312e) {
            this.f278f.remove(pVar);
        } else {
            this.f276d.remove(pVar);
        }
        pVar.q = null;
        pVar.f312e = false;
        pVar.f313f &= -33;
    }

    public final View n(int i) {
        return r(i, Long.MAX_VALUE).n;
    }

    public final void o(View view) {
        p childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        int i = childViewHolderInt.f313f & 12;
        RecyclerView recyclerView = this.f273a;
        if (i == 0 && childViewHolderInt.v() && !recyclerView.canReuseUpdatedViewHolder(childViewHolderInt)) {
            if (this.f278f == null) {
                this.f278f = new ArrayList();
            }
            childViewHolderInt.q = this;
            childViewHolderInt.f312e = true;
            this.f278f.add(childViewHolderInt);
            return;
        }
        if (childViewHolderInt.ac() && !childViewHolderInt.u() && !recyclerView.mAdapter.hasStableIds()) {
            throw new IllegalArgumentException(awf.u(recyclerView, new StringBuilder("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.")));
        }
        childViewHolderInt.q = this;
        childViewHolderInt.f312e = false;
        this.f276d.add(childViewHolderInt);
    }

    public final void p(p pVar, boolean z) {
        RecyclerView.clearNestedRecyclerViewIfNotNested(pVar);
        View view = pVar.n;
        RecyclerView recyclerView = this.f273a;
        j jVar = recyclerView.mAccessibilityDelegate;
        if (jVar != null) {
            t tVar = jVar.f294b;
            goi.ab(view, tVar != null ? (amk) tVar.f322b.remove(view) : null);
        }
        if (z) {
            if (recyclerView.mRecyclerListeners.size() > 0) {
                recyclerView.mRecyclerListeners.get(0).getClass();
                throw new ClassCastException();
            }
            m mVar = recyclerView.mAdapter;
            if (mVar != null) {
                mVar.onViewRecycled(pVar);
            }
            if (recyclerView.mState != null) {
                recyclerView.mViewInfoStore.c(pVar);
            }
            if (RecyclerView.sVerboseLoggingEnabled) {
                Objects.toString(pVar);
            }
        }
        pVar.j = null;
        pVar.m = null;
        dvv v = v();
        v.getClass();
        int i = pVar.t;
        ArrayList arrayList = v.d(i).f10832b;
        if (((atv) v.f14905a.get(i)).f10833c <= arrayList.size()) {
            egh.y(pVar.n);
        } else {
            if (RecyclerView.sDebugAssertionsEnabled && arrayList.contains(pVar)) {
                throw new IllegalArgumentException("this scrap item already exists");
            }
            pVar.ae();
            arrayList.add(pVar);
        }
    }

    public final void q() {
        if (this.h != null) {
            RecyclerView recyclerView = this.f273a;
            if (recyclerView.mAdapter == null || !recyclerView.isAttachedToWindow()) {
                return;
            }
            dvv dvvVar = this.h;
            dvvVar.f14907c.add(recyclerView.mAdapter);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:240:0x0434, code lost:
    
        if (r9.ac() == false) goto L247;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x051b  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x053c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:229:0x0525  */
    /* JADX WARN: Removed duplicated region for block: B:316:0x0085  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final p r(int i, long j) {
        boolean z;
        p pVar;
        long j2;
        long j3;
        boolean z2;
        boolean z3;
        ViewGroup.LayoutParams layoutParams;
        yx yxVar;
        RecyclerView findNestedRecyclerView;
        p pVar2;
        View view;
        p pVar3;
        boolean z4;
        int size;
        int m;
        RecyclerView recyclerView = this.f273a;
        if (i < 0 || i >= recyclerView.mState.p()) {
            StringBuilder z5 = awf.z(i, i, "Invalid item position ", "(", "). Item count:");
            z5.append(recyclerView.mState.p());
            z5.append(recyclerView.exceptionLabel());
            throw new IndexOutOfBoundsException(z5.toString());
        }
        if (recyclerView.mState.n) {
            ArrayList arrayList = this.f278f;
            if (arrayList != null && (size = arrayList.size()) != 0) {
                int i2 = 0;
                while (true) {
                    if (i2 < size) {
                        pVar = (p) this.f278f.get(i2);
                        if (!pVar.ad() && pVar.ag() == i) {
                            pVar.ab(32);
                            break;
                        }
                        i2++;
                    } else if (recyclerView.mAdapter.hasStableIds() && (m = recyclerView.mAdapterHelper.m(i, 0)) > 0 && m < recyclerView.mAdapter.getItemCount()) {
                        long itemId = recyclerView.mAdapter.getItemId(m);
                        for (int i3 = 0; i3 < size; i3++) {
                            p pVar4 = (p) this.f278f.get(i3);
                            if (!pVar4.ad() && pVar4.l == itemId) {
                                pVar4.ab(32);
                                pVar = pVar4;
                                break;
                            }
                        }
                    }
                }
                z = pVar == null;
            }
            pVar = null;
            if (pVar == null) {
            }
        } else {
            z = false;
            pVar = null;
        }
        ArrayList arrayList2 = this.f276d;
        ArrayList arrayList3 = this.f279g;
        if (pVar == null) {
            int size2 = arrayList2.size();
            for (int i4 = 0; i4 < size2; i4++) {
                pVar3 = (p) arrayList2.get(i4);
                if (!pVar3.ad() && pVar3.ag() == i && !pVar3.ac() && (recyclerView.mState.n || !pVar3.u())) {
                    pVar3.ab(32);
                    break;
                }
            }
            ArrayList arrayList4 = recyclerView.mChildHelper.f307e;
            int size3 = arrayList4.size();
            int i5 = 0;
            while (true) {
                if (i5 >= size3) {
                    view = null;
                    break;
                }
                view = (View) arrayList4.get(i5);
                p childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
                if (childViewHolderInt.ag() == i && !childViewHolderInt.ac() && !childViewHolderInt.u()) {
                    break;
                }
                i5++;
            }
            if (view != null) {
                pVar = RecyclerView.getChildViewHolderInt(view);
                n nVar = recyclerView.mChildHelper;
                fmk fmkVar = nVar.f306d;
                int indexOfChild = ((RecyclerView) nVar.f305c.f16548e).indexOfChild(view);
                if (indexOfChild < 0) {
                    throw new IllegalArgumentException("view is not a child, cannot hide " + view);
                }
                if (!fmkVar.f(indexOfChild)) {
                    throw new RuntimeException("trying to unhide a view that was not hidden" + view);
                }
                fmkVar.h(indexOfChild);
                nVar.m(view);
                n nVar2 = recyclerView.mChildHelper;
                fmk fmkVar2 = nVar2.f306d;
                int indexOfChild2 = ((RecyclerView) nVar2.f305c.f16548e).indexOfChild(view);
                int k = (indexOfChild2 == -1 || fmkVar2.f(indexOfChild2)) ? -1 : indexOfChild2 - fmkVar2.k(indexOfChild2);
                if (k == -1) {
                    StringBuilder sb = new StringBuilder("layout index should not be -1 after unhiding a view:");
                    sb.append(pVar);
                    throw new IllegalStateException(awf.u(recyclerView, sb));
                }
                recyclerView.mChildHelper.n(k);
                o(view);
                pVar.ab(8224);
            } else {
                int size4 = arrayList3.size();
                for (int i6 = 0; i6 < size4; i6++) {
                    pVar3 = (p) arrayList3.get(i6);
                    if (!pVar3.ac() && pVar3.ag() == i && !pVar3.y()) {
                        arrayList3.remove(i6);
                        if (RecyclerView.sVerboseLoggingEnabled) {
                            pVar3.toString();
                        }
                        pVar = pVar3;
                    }
                }
                pVar = null;
            }
            if (pVar != null) {
                if (!pVar.u()) {
                    int i7 = pVar.f314g;
                    if (i7 < 0 || i7 >= recyclerView.mAdapter.getItemCount()) {
                        StringBuilder sb2 = new StringBuilder("Inconsistency detected. Invalid view holder adapter position");
                        sb2.append(pVar);
                        throw new IndexOutOfBoundsException(awf.u(recyclerView, sb2));
                    }
                    z4 = (recyclerView.mState.n || recyclerView.mAdapter.getItemViewType(pVar.f314g) == pVar.t) && (!recyclerView.mAdapter.hasStableIds() || pVar.l == recyclerView.mAdapter.getItemId(pVar.f314g));
                } else {
                    if (RecyclerView.sDebugAssertionsEnabled && !recyclerView.mState.n) {
                        throw new IllegalStateException(awf.u(recyclerView, new StringBuilder("should not receive a removed view unless it is pre layout")));
                    }
                    z4 = recyclerView.mState.n;
                }
                if (z4) {
                    z = true;
                } else {
                    pVar.ab(4);
                    if (pVar.af()) {
                        recyclerView.removeDetachedView(pVar.n, false);
                        pVar.q.m(pVar);
                    } else if (pVar.ad()) {
                        pVar.f313f &= -33;
                    }
                    k(pVar);
                    pVar = null;
                }
            }
        }
        if (pVar == null) {
            int m2 = recyclerView.mAdapterHelper.m(i, 0);
            if (m2 < 0 || m2 >= recyclerView.mAdapter.getItemCount()) {
                StringBuilder z6 = awf.z(i, m2, "Inconsistency detected. Invalid item position ", "(offset:", ").state:");
                z6.append(recyclerView.mState.p());
                z6.append(recyclerView.exceptionLabel());
                throw new IndexOutOfBoundsException(z6.toString());
            }
            int itemViewType = recyclerView.mAdapter.getItemViewType(m2);
            j2 = 4;
            if (recyclerView.mAdapter.hasStableIds()) {
                long itemId2 = recyclerView.mAdapter.getItemId(m2);
                int size5 = arrayList2.size() - 1;
                while (true) {
                    if (size5 >= 0) {
                        j3 = 0;
                        p pVar5 = (p) arrayList2.get(size5);
                        long j4 = pVar5.l;
                        View view2 = pVar5.n;
                        if (j4 == itemId2 && !pVar5.ad()) {
                            if (itemViewType == pVar5.t) {
                                pVar5.ab(32);
                                if (pVar5.u() && !recyclerView.mState.n) {
                                    pVar5.f313f = (pVar5.f313f & (-15)) | 2;
                                }
                                pVar = pVar5;
                            } else {
                                arrayList2.remove(size5);
                                recyclerView.removeDetachedView(view2, false);
                                p childViewHolderInt2 = RecyclerView.getChildViewHolderInt(view2);
                                childViewHolderInt2.q = null;
                                childViewHolderInt2.f312e = false;
                                childViewHolderInt2.f313f &= -33;
                                k(childViewHolderInt2);
                            }
                        }
                        size5--;
                    } else {
                        j3 = 0;
                        int size6 = arrayList3.size() - 1;
                        while (true) {
                            if (size6 < 0) {
                                break;
                            }
                            p pVar6 = (p) arrayList3.get(size6);
                            if (pVar6.l != itemId2 || pVar6.y()) {
                                size6--;
                            } else if (itemViewType == pVar6.t) {
                                arrayList3.remove(size6);
                                pVar = pVar6;
                            } else {
                                s(size6);
                            }
                        }
                        pVar = null;
                    }
                }
                if (pVar != null) {
                    pVar.f314g = m2;
                    z = true;
                }
            } else {
                j3 = 0;
            }
            if (pVar == null) {
                int i8 = RecyclerView.HORIZONTAL;
                atv atvVar = (atv) v().f14905a.get(itemViewType);
                if (atvVar != null) {
                    ArrayList arrayList5 = atvVar.f10832b;
                    if (!arrayList5.isEmpty()) {
                        for (int size7 = arrayList5.size() - 1; size7 >= 0; size7--) {
                            if (!((p) arrayList5.get(size7)).y()) {
                                pVar2 = (p) arrayList5.remove(size7);
                                break;
                            }
                        }
                    }
                }
                pVar2 = null;
                if (pVar2 != null) {
                    pVar2.ae();
                    if (RecyclerView.FORCE_INVALIDATE_DISPLAY_LIST) {
                        View view3 = pVar2.n;
                        if (view3 instanceof ViewGroup) {
                            i((ViewGroup) view3, false);
                        }
                    }
                }
                pVar = pVar2;
            }
            if (pVar == null) {
                long nanoTime = recyclerView.getNanoTime();
                if (j != Long.MAX_VALUE) {
                    long j5 = this.h.d(itemViewType).f10834d;
                    if (!(j5 == j3 || j5 + nanoTime < j)) {
                        return null;
                    }
                }
                pVar = recyclerView.mAdapter.createViewHolder(recyclerView, itemViewType);
                if (RecyclerView.ALLOW_THREAD_GAP_WORK && (findNestedRecyclerView = RecyclerView.findNestedRecyclerView(pVar.n)) != null) {
                    pVar.p = new WeakReference(findNestedRecyclerView);
                }
                long nanoTime2 = recyclerView.getNanoTime() - nanoTime;
                atv d2 = this.h.d(itemViewType);
                long j6 = d2.f10834d;
                if (j6 != j3) {
                    nanoTime2 = (nanoTime2 / 4) + ((j6 / 4) * 3);
                }
                d2.f10834d = nanoTime2;
            }
        } else {
            j2 = 4;
            j3 = 0;
        }
        if (z) {
            aqz aqzVar = recyclerView.mState;
            if (!aqzVar.n) {
                int i9 = pVar.f313f;
                if ((i9 & 8192) != 0) {
                    pVar.f313f = i9 & (-8193);
                    if (aqzVar.l) {
                        dgn.g(pVar);
                        dgn dgnVar = recyclerView.mItemAnimator;
                        pVar.ai();
                        dgnVar.getClass();
                        geq geqVar = new geq();
                        geqVar.c(pVar);
                        recyclerView.recordAnimationInfoIfBouncedHiddenView(pVar, geqVar);
                    }
                }
            }
        }
        if (!recyclerView.mState.n || !pVar.aa()) {
            if (pVar.aa()) {
                if (!((pVar.f313f & 2) != 0)) {
                }
            }
            if (RecyclerView.sDebugAssertionsEnabled && pVar.u()) {
                StringBuilder sb3 = new StringBuilder("Removed holder should be bound and it should come here only in pre-layout. Holder: ");
                sb3.append(pVar);
                throw new IllegalStateException(awf.u(recyclerView, sb3));
            }
            int m3 = recyclerView.mAdapterHelper.m(i, 0);
            pVar.j = null;
            View view4 = pVar.n;
            pVar.m = recyclerView;
            int i10 = pVar.t;
            long nanoTime3 = recyclerView.getNanoTime();
            if (j != Long.MAX_VALUE) {
                long j7 = this.h.d(i10).f10831a;
                if (j7 != j3 && j7 + nanoTime3 >= j) {
                    z3 = false;
                    View view5 = pVar.n;
                    layoutParams = view5.getLayoutParams();
                    if (layoutParams == null) {
                        yxVar = (yx) recyclerView.generateDefaultLayoutParams();
                        view5.setLayoutParams(yxVar);
                    } else if (recyclerView.checkLayoutParams(layoutParams)) {
                        yxVar = (yx) layoutParams;
                    } else {
                        yxVar = (yx) recyclerView.generateLayoutParams(layoutParams);
                        view5.setLayoutParams(yxVar);
                    }
                    yxVar.f20371b = pVar;
                    yxVar.f20370a = !z && z3;
                    return pVar;
                }
            }
            if (pVar.ah()) {
                recyclerView.attachViewToParent(view4, recyclerView.getChildCount(), view4.getLayoutParams());
                z2 = true;
            } else {
                z2 = false;
            }
            recyclerView.mAdapter.bindViewHolder(pVar, m3);
            if (z2) {
                recyclerView.detachViewFromParent(view4);
            }
            long nanoTime4 = recyclerView.getNanoTime() - nanoTime3;
            atv d3 = this.h.d(pVar.t);
            long j8 = d3.f10831a;
            if (j8 != j3) {
                nanoTime4 = (nanoTime4 / j2) + ((j8 / j2) * 3);
            }
            d3.f10831a = nanoTime4;
            if (recyclerView.isAccessibilityEnabled()) {
                if (view4.getImportantForAccessibility() == 0) {
                    view4.setImportantForAccessibility(1);
                }
                j jVar = recyclerView.mAccessibilityDelegate;
                if (jVar != null) {
                    t tVar = jVar.f294b;
                    if (tVar != null) {
                        tVar.getClass();
                        View.AccessibilityDelegate l = goi.l(view4);
                        amk amkVar = l != null ? l instanceof dln ? ((dln) l).f14374a : new amk(l) : null;
                        if (amkVar != null && amkVar != tVar) {
                            tVar.f322b.put(view4, amkVar);
                        }
                    }
                    goi.ab(view4, tVar);
                }
            }
            if (recyclerView.mState.n) {
                pVar.f311d = i;
            }
            z3 = true;
            View view52 = pVar.n;
            layoutParams = view52.getLayoutParams();
            if (layoutParams == null) {
            }
            yxVar.f20371b = pVar;
            yxVar.f20370a = !z && z3;
            return pVar;
        }
        pVar.f311d = i;
        z3 = false;
        View view522 = pVar.n;
        layoutParams = view522.getLayoutParams();
        if (layoutParams == null) {
        }
        yxVar.f20371b = pVar;
        yxVar.f20370a = !z && z3;
        return pVar;
    }

    public final void s(int i) {
        int i2 = RecyclerView.HORIZONTAL;
        ArrayList arrayList = this.f279g;
        p pVar = (p) arrayList.get(i);
        if (RecyclerView.sVerboseLoggingEnabled) {
            Objects.toString(pVar);
        }
        p(pVar, true);
        arrayList.remove(i);
    }

    public final int t(int i) {
        RecyclerView recyclerView = this.f273a;
        if (i >= 0 && i < recyclerView.mState.p()) {
            return !recyclerView.mState.n ? i : recyclerView.mAdapterHelper.m(i, 0);
        }
        StringBuilder z = tn.z(i, "invalid position ", ". State item count is ");
        z.append(recyclerView.mState.p());
        z.append(recyclerView.exceptionLabel());
        throw new IndexOutOfBoundsException(z.toString());
    }

    public final void u(View view) {
        p childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        boolean ah = childViewHolderInt.ah();
        RecyclerView recyclerView = this.f273a;
        if (ah) {
            recyclerView.removeDetachedView(view, false);
        }
        if (childViewHolderInt.af()) {
            childViewHolderInt.q.m(childViewHolderInt);
        } else if (childViewHolderInt.ad()) {
            childViewHolderInt.f313f &= -33;
        }
        k(childViewHolderInt);
        if (recyclerView.mItemAnimator == null || childViewHolderInt.aj()) {
            return;
        }
        recyclerView.mItemAnimator.h(childViewHolderInt);
    }

    public final dvv v() {
        if (this.h == null) {
            dvv dvvVar = new dvv();
            dvvVar.f14905a = new SparseArray();
            dvvVar.f14906b = 0;
            dvvVar.f14907c = Collections.newSetFromMap(new IdentityHashMap());
            this.h = dvvVar;
            q();
        }
        return this.h;
    }

    public final void w(m mVar, boolean z) {
        dvv dvvVar = this.h;
        if (dvvVar != null) {
            SparseArray sparseArray = dvvVar.f14905a;
            Set set = dvvVar.f14907c;
            set.remove(mVar);
            if (set.size() != 0 || z) {
                return;
            }
            for (int i = 0; i < sparseArray.size(); i++) {
                ArrayList arrayList = ((atv) sparseArray.get(sparseArray.keyAt(i))).f10832b;
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    egh.y(((p) arrayList.get(i2)).n);
                }
            }
        }
    }
}
