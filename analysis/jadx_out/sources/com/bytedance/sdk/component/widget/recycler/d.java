package com.bytedance.sdk.component.widget.recycler;

import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.component.widget.recycler.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
class d {
    final InterfaceC0131d dq;

    /* renamed from: d, reason: collision with root package name */
    final dq f2262d = new dq();
    final List<View> ox = new ArrayList();

    /* renamed from: com.bytedance.sdk.component.widget.recycler.d$d, reason: collision with other inner class name */
    public interface InterfaceC0131d {
        View d(int i);

        RecyclerView.k d(View view);

        void d();

        int dq();

        int dq(View view);

        void dq(int i);

        void dq(View view, int i);

        void dq(View view, int i, ViewGroup.LayoutParams layoutParams);

        void ox(int i);

        void ox(View view);

        void p(View view);
    }

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        dq f2263d;
        long dq = 0;

        private void d() {
            if (this.f2263d == null) {
                this.f2263d = new dq();
            }
        }

        public void d(int i) {
            if (i < 64) {
                this.dq &= ~(1 << i);
                return;
            }
            dq dqVar = this.f2263d;
            if (dqVar != null) {
                dqVar.d(i - 64);
            }
        }

        public void dq() {
            this.dq = 0L;
            dq dqVar = this.f2263d;
            if (dqVar != null) {
                dqVar.dq();
            }
        }

        public void dq(int i) {
            if (i < 64) {
                this.dq |= 1 << i;
            } else {
                d();
                this.f2263d.dq(i - 64);
            }
        }

        public void insert(int i, boolean z) {
            if (i >= 64) {
                d();
                this.f2263d.insert(i - 64, z);
                return;
            }
            long j = this.dq;
            boolean z2 = (Long.MIN_VALUE & j) != 0;
            long j2 = (1 << i) - 1;
            this.dq = ((j & (~j2)) << 1) | (j & j2);
            if (z) {
                dq(i);
            } else {
                d(i);
            }
            if (z2 || this.f2263d != null) {
                d();
                this.f2263d.insert(0, z2);
            }
        }

        public boolean ox(int i) {
            if (i < 64) {
                return (this.dq & (1 << i)) != 0;
            }
            d();
            return this.f2263d.ox(i - 64);
        }

        public boolean p(int i) {
            if (i >= 64) {
                d();
                return this.f2263d.p(i - 64);
            }
            long j = 1 << i;
            long j2 = this.dq;
            boolean z = (j2 & j) != 0;
            long j3 = j2 & (~j);
            this.dq = j3;
            long j4 = j - 1;
            this.dq = (j3 & j4) | Long.rotateRight((~j4) & j3, 1);
            dq dqVar = this.f2263d;
            if (dqVar != null) {
                if (dqVar.ox(0)) {
                    dq(63);
                }
                this.f2263d.p(0);
            }
            return z;
        }

        public int s(int i) {
            dq dqVar = this.f2263d;
            if (dqVar == null) {
                return i >= 64 ? Long.bitCount(this.dq) : Long.bitCount(this.dq & ((1 << i) - 1));
            }
            if (i < 64) {
                return Long.bitCount(this.dq & ((1 << i) - 1));
            }
            return Long.bitCount(this.dq) + dqVar.s(i - 64);
        }

        public String toString() {
            if (this.f2263d == null) {
                return Long.toBinaryString(this.dq);
            }
            return this.f2263d.toString() + "xx" + Long.toBinaryString(this.dq);
        }
    }

    public d(InterfaceC0131d interfaceC0131d) {
        this.dq = interfaceC0131d;
    }

    private boolean ia(View view) {
        if (!this.ox.remove(view)) {
            return false;
        }
        this.dq.p(view);
        return true;
    }

    private int iw(int i) {
        if (i < 0) {
            return -1;
        }
        int dq2 = this.dq.dq();
        int i2 = i;
        while (i2 < dq2) {
            int s = i - (i2 - this.f2262d.s(i2));
            if (s == 0) {
                while (this.f2262d.ox(i2)) {
                    i2++;
                }
                return i2;
            }
            i2 += s;
        }
        return -1;
    }

    private void mn(View view) {
        this.ox.add(view);
        this.dq.ox(view);
    }

    public int d() {
        return this.dq.dq() - this.ox.size();
    }

    public int d(View view) {
        int dq2 = this.dq.dq(view);
        if (dq2 == -1 || this.f2262d.ox(dq2)) {
            return -1;
        }
        return dq2 - this.f2262d.s(dq2);
    }

    public View d(int i) {
        return this.dq.d(iw(i));
    }

    public void dq() {
        this.f2262d.dq();
        for (int size = this.ox.size() - 1; size >= 0; size--) {
            this.dq.p(this.ox.get(size));
            this.ox.remove(size);
        }
        this.dq.d();
    }

    public void dq(int i) {
        int iw = iw(i);
        View d2 = this.dq.d(iw);
        if (d2 != null) {
            if (this.f2262d.p(iw)) {
                ia(d2);
            }
            this.dq.dq(iw);
        }
    }

    public void dq(View view) {
        int dq2 = this.dq.dq(view);
        if (dq2 >= 0) {
            if (this.f2262d.p(dq2)) {
                ia(view);
            }
            this.dq.dq(dq2);
        }
    }

    public void dq(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int dq2 = i < 0 ? this.dq.dq() : iw(i);
        this.f2262d.insert(dq2, z);
        if (z) {
            mn(view);
        }
        this.dq.dq(view, dq2, layoutParams);
    }

    public void dq(View view, int i, boolean z) {
        int dq2 = i < 0 ? this.dq.dq() : iw(i);
        this.f2262d.insert(dq2, z);
        if (z) {
            mn(view);
        }
        this.dq.dq(view, dq2);
    }

    public void dq(View view, boolean z) {
        dq(view, -1, z);
    }

    public boolean iw(View view) {
        int dq2 = this.dq.dq(view);
        if (dq2 == -1) {
            ia(view);
            return true;
        }
        if (!this.f2262d.ox(dq2)) {
            return false;
        }
        this.f2262d.p(dq2);
        ia(view);
        this.dq.dq(dq2);
        return true;
    }

    public int ox() {
        return this.dq.dq();
    }

    public View ox(int i) {
        int size = this.ox.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = this.ox.get(i2);
            RecyclerView.k d2 = this.dq.d(view);
            if (d2.ia() == i && !d2.cd() && !d2.i()) {
                return view;
            }
        }
        return null;
    }

    public boolean ox(View view) {
        return this.ox.contains(view);
    }

    public View p(int i) {
        return this.dq.d(i);
    }

    public void p(View view) {
        int dq2 = this.dq.dq(view);
        if (dq2 < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide ".concat(String.valueOf(view)));
        }
        this.f2262d.dq(dq2);
        mn(view);
    }

    public void s(int i) {
        int iw = iw(i);
        this.f2262d.p(iw);
        this.dq.ox(iw);
    }

    public void s(View view) {
        int dq2 = this.dq.dq(view);
        if (dq2 < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide ".concat(String.valueOf(view)));
        }
        if (!this.f2262d.ox(dq2)) {
            throw new RuntimeException("trying to unhide a view that was not hidden".concat(String.valueOf(view)));
        }
        this.f2262d.d(dq2);
        ia(view);
    }

    public String toString() {
        return this.f2262d.toString() + ", hidden list:" + this.ox.size();
    }
}
