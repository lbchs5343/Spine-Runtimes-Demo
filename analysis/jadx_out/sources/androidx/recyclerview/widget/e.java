package androidx.recyclerview.widget;

import android.os.Trace;
import g.aqn;
import g.aqz;
import g.cpg;
import g.lj;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f267a = new ThreadLocal();

    /* renamed from: b, reason: collision with root package name */
    public static final aqn f268b = new aqn(4);

    /* renamed from: c, reason: collision with root package name */
    public long f269c;

    /* renamed from: f, reason: collision with root package name */
    public long f272f;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f271e = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f270d = new ArrayList();

    public static p g(RecyclerView recyclerView, int i, long j) {
        int f2 = recyclerView.mChildHelper.f();
        for (int i2 = 0; i2 < f2; i2++) {
            p childViewHolderInt = RecyclerView.getChildViewHolderInt(recyclerView.mChildHelper.o(i2));
            if (childViewHolderInt.f314g == i && !childViewHolderInt.ac()) {
                return null;
            }
        }
        f fVar = recyclerView.mRecycler;
        if (j == Long.MAX_VALUE) {
            try {
                if (cpg.c()) {
                    Trace.beginSection("RV Prefetch forced - needed next frame");
                }
            } catch (Throwable th) {
                recyclerView.onExitLayoutOrScroll(false);
                Trace.endSection();
                throw th;
            }
        }
        recyclerView.onEnterLayoutOrScroll();
        p r = fVar.r(i, j);
        if (r != null) {
            if (!r.aa() || r.ac()) {
                fVar.p(r, false);
            } else {
                fVar.u(r.n);
            }
        }
        recyclerView.onExitLayoutOrScroll(false);
        Trace.endSection();
        return r;
    }

    public final void h(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.isAttachedToWindow()) {
            if (RecyclerView.sDebugAssertionsEnabled && !this.f271e.contains(recyclerView)) {
                throw new IllegalStateException("attempting to post unregistered view!");
            }
            if (this.f272f == 0) {
                this.f272f = recyclerView.getNanoTime();
                recyclerView.post(this);
            }
        }
        r rVar = recyclerView.mPrefetchRegistry;
        rVar.f316b = i;
        rVar.f317c = i2;
    }

    public final void i(long j) {
        lj ljVar;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        lj ljVar2;
        ArrayList arrayList = this.f271e;
        int size = arrayList.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            RecyclerView recyclerView3 = (RecyclerView) arrayList.get(i2);
            if (recyclerView3.getWindowVisibility() == 0) {
                recyclerView3.mPrefetchRegistry.f(recyclerView3, false);
                i += recyclerView3.mPrefetchRegistry.f315a;
            }
        }
        ArrayList arrayList2 = this.f270d;
        arrayList2.ensureCapacity(i);
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            RecyclerView recyclerView4 = (RecyclerView) arrayList.get(i4);
            if (recyclerView4.getWindowVisibility() == 0) {
                r rVar = recyclerView4.mPrefetchRegistry;
                int abs = Math.abs(rVar.f317c) + Math.abs(rVar.f316b);
                for (int i5 = 0; i5 < rVar.f315a * 2; i5 += 2) {
                    if (i3 >= arrayList2.size()) {
                        ljVar2 = new lj();
                        arrayList2.add(ljVar2);
                    } else {
                        ljVar2 = (lj) arrayList2.get(i3);
                    }
                    int[] iArr = rVar.f318d;
                    int i6 = iArr[i5 + 1];
                    ljVar2.f19591c = i6 <= abs;
                    ljVar2.f19592d = abs;
                    ljVar2.f19593e = i6;
                    ljVar2.f19589a = recyclerView4;
                    ljVar2.f19590b = iArr[i5];
                    i3++;
                }
            }
        }
        Collections.sort(arrayList2, f268b);
        for (int i7 = 0; i7 < arrayList2.size() && (recyclerView = (ljVar = (lj) arrayList2.get(i7)).f19589a) != null; i7++) {
            p g2 = g(recyclerView, ljVar.f19590b, ljVar.f19591c ? Long.MAX_VALUE : j);
            if (g2 != null && g2.p != null && g2.aa() && !g2.ac() && (recyclerView2 = (RecyclerView) g2.p.get()) != null) {
                if (recyclerView2.mDataSetHasChangedAfterLayout && recyclerView2.mChildHelper.f() != 0) {
                    recyclerView2.removeAndRecycleViews();
                }
                r rVar2 = recyclerView2.mPrefetchRegistry;
                rVar2.f(recyclerView2, true);
                if (rVar2.f315a != 0) {
                    try {
                        Trace.beginSection(j == Long.MAX_VALUE ? "RV Nested Prefetch" : "RV Nested Prefetch forced - needed next frame");
                        aqz aqzVar = recyclerView2.mState;
                        m mVar = recyclerView2.mAdapter;
                        aqzVar.f10684d = 1;
                        aqzVar.f10686f = mVar.getItemCount();
                        aqzVar.n = false;
                        aqzVar.f10681a = false;
                        aqzVar.j = false;
                        for (int i8 = 0; i8 < rVar2.f315a * 2; i8 += 2) {
                            g(recyclerView2, rVar2.f318d[i8], j);
                        }
                        Trace.endSection();
                        ljVar.f19591c = false;
                        ljVar.f19592d = 0;
                        ljVar.f19593e = 0;
                        ljVar.f19589a = null;
                        ljVar.f19590b = 0;
                    } catch (Throwable th) {
                        Trace.endSection();
                        throw th;
                    }
                }
            }
            ljVar.f19591c = false;
            ljVar.f19592d = 0;
            ljVar.f19593e = 0;
            ljVar.f19589a = null;
            ljVar.f19590b = 0;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList arrayList = this.f271e;
        try {
            Trace.beginSection("RV Prefetch");
            if (!arrayList.isEmpty()) {
                int size = arrayList.size();
                long j = 0;
                for (int i = 0; i < size; i++) {
                    RecyclerView recyclerView = (RecyclerView) arrayList.get(i);
                    if (recyclerView.getWindowVisibility() == 0) {
                        j = Math.max(recyclerView.getDrawingTime(), j);
                    }
                }
                if (j != 0) {
                    i(TimeUnit.MILLISECONDS.toNanos(j) + this.f269c);
                }
            }
        } finally {
            this.f272f = 0L;
            Trace.endSection();
        }
    }
}
