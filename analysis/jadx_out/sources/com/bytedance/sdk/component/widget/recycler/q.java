package com.bytedance.sdk.component.widget.recycler;

import com.bytedance.sdk.component.widget.recycler.RecyclerView;
import com.bytedance.sdk.component.widget.recycler.dq.d.p;

/* loaded from: classes.dex */
class q {
    final com.bytedance.sdk.component.widget.recycler.dq.d.dq<RecyclerView.k, dq> dq = new com.bytedance.sdk.component.widget.recycler.dq.d.dq<>();

    /* renamed from: d, reason: collision with root package name */
    final com.bytedance.sdk.component.widget.recycler.dq.d.ox<RecyclerView.k> f2293d = new com.bytedance.sdk.component.widget.recycler.dq.d.ox<>();

    public interface d {
        void d(RecyclerView.k kVar, RecyclerView.iw.d dVar, RecyclerView.iw.d dVar2);

        void dq(RecyclerView.k kVar);

        void dq(RecyclerView.k kVar, RecyclerView.iw.d dVar, RecyclerView.iw.d dVar2);

        void ox(RecyclerView.k kVar, RecyclerView.iw.d dVar, RecyclerView.iw.d dVar2);
    }

    public static class dq {
        static p.dq<dq> p = new p.d(20);

        /* renamed from: d, reason: collision with root package name */
        RecyclerView.iw.d f2294d;
        int dq;
        RecyclerView.iw.d ox;

        private dq() {
        }

        public static void d() {
            while (p.dq() != null) {
            }
        }

        public static dq dq() {
            dq dq = p.dq();
            return dq == null ? new dq() : dq;
        }

        public static void dq(dq dqVar) {
            dqVar.dq = 0;
            dqVar.f2294d = null;
            dqVar.ox = null;
            p.dq(dqVar);
        }
    }

    private RecyclerView.iw.d dq(RecyclerView.k kVar, int i) {
        dq d2;
        RecyclerView.iw.d dVar;
        int dq2 = this.dq.dq(kVar);
        if (dq2 >= 0 && (d2 = this.dq.d(dq2)) != null) {
            int i2 = d2.dq;
            if ((i2 & i) != 0) {
                int i3 = (~i) & i2;
                d2.dq = i3;
                if (i == 4) {
                    dVar = d2.f2294d;
                } else {
                    if (i != 8) {
                        throw new IllegalArgumentException("Must provide flag PRE or POST");
                    }
                    dVar = d2.ox;
                }
                if ((i3 & 12) == 0) {
                    this.dq.ox(dq2);
                    dq.dq(d2);
                }
                return dVar;
            }
        }
        return null;
    }

    public RecyclerView.iw.d d(RecyclerView.k kVar) {
        return dq(kVar, 4);
    }

    public void d() {
        dq.d();
    }

    public void d(RecyclerView.k kVar, RecyclerView.iw.d dVar) {
        dq dqVar = this.dq.get(kVar);
        if (dqVar == null) {
            dqVar = dq.dq();
            this.dq.put(kVar, dqVar);
        }
        dqVar.dq |= 2;
        dqVar.f2294d = dVar;
    }

    public RecyclerView.k dq(long j) {
        return this.f2293d.dq(j);
    }

    public void dq() {
        this.dq.clear();
        this.f2293d.ox();
    }

    public void dq(long j, RecyclerView.k kVar) {
        this.f2293d.d(j, kVar);
    }

    public void dq(RecyclerView.k kVar, RecyclerView.iw.d dVar) {
        dq dqVar = this.dq.get(kVar);
        if (dqVar == null) {
            dqVar = dq.dq();
            this.dq.put(kVar, dqVar);
        }
        dqVar.f2294d = dVar;
        dqVar.dq |= 4;
    }

    public void dq(d dVar) {
        for (int size = this.dq.size() - 1; size >= 0; size--) {
            RecyclerView.k dq2 = this.dq.dq(size);
            dq ox = this.dq.ox(size);
            int i = ox.dq;
            if ((i & 3) == 3) {
                dVar.dq(dq2);
            } else if ((i & 1) != 0) {
                RecyclerView.iw.d dVar2 = ox.f2294d;
                if (dVar2 == null) {
                    dVar.dq(dq2);
                } else {
                    dVar.dq(dq2, dVar2, ox.ox);
                }
            } else if ((i & 14) == 14) {
                dVar.d(dq2, ox.f2294d, ox.ox);
            } else if ((i & 12) == 12) {
                dVar.ox(dq2, ox.f2294d, ox.ox);
            } else if ((i & 4) != 0) {
                dVar.dq(dq2, ox.f2294d, null);
            } else if ((i & 8) != 0) {
                dVar.d(dq2, ox.f2294d, ox.ox);
            }
            dq.dq(ox);
        }
    }

    public boolean dq(RecyclerView.k kVar) {
        dq dqVar = this.dq.get(kVar);
        return (dqVar == null || (dqVar.dq & 1) == 0) ? false : true;
    }

    public void ia(RecyclerView.k kVar) {
        iw(kVar);
    }

    public void iw(RecyclerView.k kVar) {
        dq dqVar = this.dq.get(kVar);
        if (dqVar != null) {
            dqVar.dq &= -2;
        }
    }

    public void mn(RecyclerView.k kVar) {
        int d2 = this.f2293d.d() - 1;
        while (true) {
            if (d2 < 0) {
                break;
            }
            if (kVar == this.f2293d.ox(d2)) {
                this.f2293d.dq(d2);
                break;
            }
            d2--;
        }
        dq remove = this.dq.remove(kVar);
        if (remove != null) {
            dq.dq(remove);
        }
    }

    public RecyclerView.iw.d ox(RecyclerView.k kVar) {
        return dq(kVar, 8);
    }

    public void ox(RecyclerView.k kVar, RecyclerView.iw.d dVar) {
        dq dqVar = this.dq.get(kVar);
        if (dqVar == null) {
            dqVar = dq.dq();
            this.dq.put(kVar, dqVar);
        }
        dqVar.ox = dVar;
        dqVar.dq |= 8;
    }

    public boolean p(RecyclerView.k kVar) {
        dq dqVar = this.dq.get(kVar);
        return (dqVar == null || (dqVar.dq & 4) == 0) ? false : true;
    }

    public void s(RecyclerView.k kVar) {
        dq dqVar = this.dq.get(kVar);
        if (dqVar == null) {
            dqVar = dq.dq();
            this.dq.put(kVar, dqVar);
        }
        dqVar.dq |= 1;
    }
}
