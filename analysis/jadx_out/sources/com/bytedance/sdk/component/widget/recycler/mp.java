package com.bytedance.sdk.component.widget.recycler;

import android.view.View;

/* loaded from: classes.dex */
class mp {

    /* renamed from: d, reason: collision with root package name */
    dq f2277d = new dq();
    final d dq;

    public interface d {
        int d();

        int d(View view);

        int dq();

        int dq(View view);

        View dq(int i);
    }

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        int f2278d;
        int dq = 0;
        int ox;
        int p;
        int s;

        public boolean d() {
            int i = this.dq;
            if ((i & 7) != 0 && (i & dq(this.p, this.f2278d)) == 0) {
                return false;
            }
            int i2 = this.dq;
            if ((i2 & 112) != 0 && (i2 & (dq(this.p, this.ox) << 4)) == 0) {
                return false;
            }
            int i3 = this.dq;
            if ((i3 & 1792) != 0 && (i3 & (dq(this.s, this.f2278d) << 8)) == 0) {
                return false;
            }
            int i4 = this.dq;
            return (i4 & 28672) == 0 || (i4 & (dq(this.s, this.ox) << 12)) != 0;
        }

        public int dq(int i, int i2) {
            if (i > i2) {
                return 1;
            }
            return i == i2 ? 2 : 4;
        }

        public void dq() {
            this.dq = 0;
        }

        public void dq(int i) {
            this.dq = i | this.dq;
        }

        public void dq(int i, int i2, int i3, int i4) {
            this.f2278d = i;
            this.ox = i2;
            this.p = i3;
            this.s = i4;
        }
    }

    public mp(d dVar) {
        this.dq = dVar;
    }

    public View dq(int i, int i2, int i3, int i4) {
        int dq2 = this.dq.dq();
        int d2 = this.dq.d();
        int i5 = i2 > i ? 1 : -1;
        View view = null;
        while (i != i2) {
            View dq3 = this.dq.dq(i);
            this.f2277d.dq(dq2, d2, this.dq.dq(dq3), this.dq.d(dq3));
            if (i3 != 0) {
                this.f2277d.dq();
                this.f2277d.dq(i3);
                if (this.f2277d.d()) {
                    return dq3;
                }
            }
            if (i4 != 0) {
                this.f2277d.dq();
                this.f2277d.dq(i4);
                if (this.f2277d.d()) {
                    view = dq3;
                }
            }
            i += i5;
        }
        return view;
    }
}
