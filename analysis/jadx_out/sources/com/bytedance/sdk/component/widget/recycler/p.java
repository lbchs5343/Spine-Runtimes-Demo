package com.bytedance.sdk.component.widget.recycler;

import com.bytedance.sdk.component.widget.recycler.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
final class p implements Runnable {
    static final ThreadLocal<p> dq = new ThreadLocal<>();
    static Comparator<d> s = new Comparator<d>() { // from class: com.bytedance.sdk.component.widget.recycler.p.1
        @Override // java.util.Comparator
        /* renamed from: dq, reason: merged with bridge method [inline-methods] */
        public int compare(d dVar, d dVar2) {
            RecyclerView recyclerView = dVar.p;
            if ((recyclerView == null) != (dVar2.p == null)) {
                return recyclerView == null ? 1 : -1;
            }
            boolean z = dVar.dq;
            if (z != dVar2.dq) {
                return z ? -1 : 1;
            }
            int i = dVar2.f2291d - dVar.f2291d;
            if (i != 0) {
                return i;
            }
            int i2 = dVar.ox - dVar2.ox;
            if (i2 != 0) {
                return i2;
            }
            return 0;
        }
    };

    /* renamed from: d, reason: collision with root package name */
    ArrayList<RecyclerView> f2290d = new ArrayList<>();
    private ArrayList<d> iw = new ArrayList<>();
    long ox;
    long p;

    public static class d {

        /* renamed from: d, reason: collision with root package name */
        public int f2291d;
        public boolean dq;
        public int ox;
        public RecyclerView p;
        public int s;

        public void dq() {
            this.dq = false;
            this.f2291d = 0;
            this.ox = 0;
            this.p = null;
            this.s = 0;
        }
    }

    public static class dq implements RecyclerView.kk.dq {

        /* renamed from: d, reason: collision with root package name */
        int f2292d;
        int dq;
        int[] ox;
        int p;

        @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.kk.dq
        public void d(int i, int i2) {
            if (i < 0) {
                throw new IllegalArgumentException("Layout positions must be non-negative");
            }
            if (i2 < 0) {
                throw new IllegalArgumentException("Pixel distance must be non-negative");
            }
            int i3 = this.p;
            int i4 = i3 * 2;
            int[] iArr = this.ox;
            if (iArr == null) {
                int[] iArr2 = new int[4];
                this.ox = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i4 >= iArr.length) {
                int[] iArr3 = new int[i3 * 4];
                this.ox = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            }
            int[] iArr4 = this.ox;
            iArr4[i4] = i;
            iArr4[i4 + 1] = i2;
            this.p++;
        }

        public void dq() {
            int[] iArr = this.ox;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.p = 0;
        }

        public void dq(int i, int i2) {
            this.dq = i;
            this.f2292d = i2;
        }

        public void dq(RecyclerView recyclerView, boolean z) {
            this.p = 0;
            int[] iArr = this.ox;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            RecyclerView.kk kkVar = recyclerView.q;
            if (recyclerView.mp == null || kkVar == null || !kkVar.f()) {
                return;
            }
            if (z) {
                if (!recyclerView.iw.p()) {
                    kkVar.dq(recyclerView.mp.dq(), this);
                }
            } else if (!recyclerView.i()) {
                kkVar.dq(this.dq, this.f2292d, recyclerView.bl, this);
            }
            int i = this.p;
            if (i > kkVar.f2257f) {
                kkVar.f2257f = i;
                kkVar.fw = z;
                recyclerView.s.d();
            }
        }

        public boolean dq(int i) {
            if (this.ox != null) {
                int i2 = this.p * 2;
                for (int i3 = 0; i3 < i2; i3 += 2) {
                    if (this.ox[i3] == i) {
                        return true;
                    }
                }
            }
            return false;
        }
    }

    private void d(long j) {
        for (int i = 0; i < this.iw.size(); i++) {
            d dVar = this.iw.get(i);
            if (dVar.p == null) {
                return;
            }
            dq(dVar, j);
            dVar.dq();
        }
    }

    private RecyclerView.k dq(RecyclerView recyclerView, int i, long j) {
        if (dq(recyclerView, i)) {
            return null;
        }
        RecyclerView.f fVar = recyclerView.s;
        try {
            recyclerView.ig();
            RecyclerView.k dq2 = fVar.dq(i, false, j);
            if (dq2 != null) {
                if (!dq2.r() || dq2.cd()) {
                    fVar.dq(dq2, false);
                } else {
                    fVar.dq(dq2.p);
                }
            }
            recyclerView.d(false);
            return dq2;
        } catch (Throwable th) {
            recyclerView.d(false);
            throw th;
        }
    }

    private void dq() {
        d dVar;
        int size = this.f2290d.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            RecyclerView recyclerView = this.f2290d.get(i2);
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.ji.dq(recyclerView, false);
                i += recyclerView.ji.p;
            }
        }
        this.iw.ensureCapacity(i);
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            RecyclerView recyclerView2 = this.f2290d.get(i4);
            if (recyclerView2.getWindowVisibility() == 0) {
                dq dqVar = recyclerView2.ji;
                int abs = Math.abs(dqVar.f2292d) + Math.abs(dqVar.dq);
                for (int i5 = 0; i5 < dqVar.p * 2; i5 += 2) {
                    if (i3 >= this.iw.size()) {
                        dVar = new d();
                        this.iw.add(dVar);
                    } else {
                        dVar = this.iw.get(i3);
                    }
                    int[] iArr = dqVar.ox;
                    int i6 = iArr[i5 + 1];
                    dVar.dq = i6 <= abs;
                    dVar.f2291d = abs;
                    dVar.ox = i6;
                    dVar.p = recyclerView2;
                    dVar.s = iArr[i5];
                    i3++;
                }
            }
        }
        Collections.sort(this.iw, s);
    }

    private void dq(RecyclerView recyclerView, long j) {
        if (recyclerView != null) {
            if (recyclerView.k && recyclerView.mn.ox() != 0) {
                recyclerView.ox();
            }
            dq dqVar = recyclerView.ji;
            dqVar.dq(recyclerView, true);
            if (dqVar.p != 0) {
                try {
                    com.bytedance.sdk.component.widget.recycler.dq.dq.dq.dq("RV Nested Prefetch");
                    recyclerView.bl.dq(recyclerView.mp);
                    for (int i = 0; i < dqVar.p * 2; i += 2) {
                        dq(recyclerView, dqVar.ox[i], j);
                    }
                } finally {
                    com.bytedance.sdk.component.widget.recycler.dq.dq.dq.dq();
                }
            }
        }
    }

    private void dq(d dVar, long j) {
        RecyclerView.k dq2 = dq(dVar.p, dVar.s, dVar.dq ? Long.MAX_VALUE : j);
        if (dq2 == null || dq2.s == null || !dq2.r() || dq2.cd()) {
            return;
        }
        dq(dq2.s.get(), j);
    }

    public static boolean dq(RecyclerView recyclerView, int i) {
        int ox = recyclerView.mn.ox();
        for (int i2 = 0; i2 < ox; i2++) {
            RecyclerView.k s2 = RecyclerView.s(recyclerView.mn.p(i2));
            if (s2.iw == i && !s2.cd()) {
                return true;
            }
        }
        return false;
    }

    public void d(RecyclerView recyclerView) {
        this.f2290d.remove(recyclerView);
    }

    public void dq(long j) {
        dq();
        d(j);
    }

    public void dq(RecyclerView recyclerView) {
        this.f2290d.add(recyclerView);
    }

    public void dq(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.isAttachedToWindow() && this.ox == 0) {
            this.ox = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        recyclerView.ji.dq(i, i2);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            com.bytedance.sdk.component.widget.recycler.dq.dq.dq.dq("RV Prefetch");
            if (!this.f2290d.isEmpty()) {
                int size = this.f2290d.size();
                long j = 0;
                for (int i = 0; i < size; i++) {
                    RecyclerView recyclerView = this.f2290d.get(i);
                    if (recyclerView.getWindowVisibility() == 0) {
                        j = Math.max(recyclerView.getDrawingTime(), j);
                    }
                }
                if (j != 0) {
                    dq(TimeUnit.MILLISECONDS.toNanos(j) + this.p);
                }
            }
        } finally {
            this.ox = 0L;
            com.bytedance.sdk.component.widget.recycler.dq.dq.dq.dq();
        }
    }
}
