package com.bytedance.sdk.component.widget.recycler;

import com.bytedance.sdk.component.widget.recycler.RecyclerView;
import com.bytedance.sdk.component.widget.recycler.dq.d.p;
import com.bytedance.sdk.component.widget.recycler.mn;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
class dq implements mn.dq {

    /* renamed from: d, reason: collision with root package name */
    final ArrayList<d> f2264d;
    final ArrayList<d> dq;
    private int ia;
    final mn iw;
    private p.dq<d> mn;
    final InterfaceC0132dq ox;
    Runnable p;
    final boolean s;

    public static class d {

        /* renamed from: d, reason: collision with root package name */
        int f2265d;
        int dq;
        Object ox;
        int p;

        public d(int i, int i2, int i3, Object obj) {
            this.dq = i;
            this.f2265d = i2;
            this.p = i3;
            this.ox = obj;
        }

        public String dq() {
            int i = this.dq;
            return i != 1 ? i != 2 ? i != 4 ? i != 8 ? "??" : "mv" : "up" : "rm" : "add";
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            int i = this.dq;
            if (i != dVar.dq) {
                return false;
            }
            if (i == 8 && Math.abs(this.p - this.f2265d) == 1 && this.p == dVar.f2265d && this.f2265d == dVar.p) {
                return true;
            }
            if (this.p != dVar.p || this.f2265d != dVar.f2265d) {
                return false;
            }
            Object obj2 = this.ox;
            if (obj2 != null) {
                if (!obj2.equals(dVar.ox)) {
                    return false;
                }
            } else if (dVar.ox != null) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (((this.dq * 31) + this.f2265d) * 31) + this.p;
        }

        public String toString() {
            return Integer.toHexString(System.identityHashCode(this)) + "[" + dq() + ",s:" + this.f2265d + "c:" + this.p + ",p:" + this.ox + "]";
        }
    }

    /* renamed from: com.bytedance.sdk.component.widget.recycler.dq$dq, reason: collision with other inner class name */
    public interface InterfaceC0132dq {
        void d(int i, int i2);

        RecyclerView.k dq(int i);

        void dq(int i, int i2);

        void dq(int i, int i2, Object obj);

        void ox(int i, int i2);

        void p(int i, int i2);
    }

    public dq(InterfaceC0132dq interfaceC0132dq) {
        this(interfaceC0132dq, false);
    }

    public dq(InterfaceC0132dq interfaceC0132dq, boolean z) {
        this.mn = new p.d(30);
        this.dq = new ArrayList<>();
        this.f2264d = new ArrayList<>();
        this.ia = 0;
        this.ox = interfaceC0132dq;
        this.s = z;
        this.iw = new mn(this);
    }

    private int d(int i, int i2) {
        int i3;
        int i4;
        for (int size = this.f2264d.size() - 1; size >= 0; size--) {
            d dVar = this.f2264d.get(size);
            int i5 = dVar.dq;
            if (i5 == 8) {
                int i6 = dVar.f2265d;
                int i7 = dVar.p;
                if (i6 < i7) {
                    i4 = i6;
                    i3 = i7;
                } else {
                    i3 = i6;
                    i4 = i7;
                }
                if (i < i4 || i > i3) {
                    if (i < i6) {
                        if (i2 == 1) {
                            dVar.f2265d = i6 + 1;
                            dVar.p = i7 + 1;
                        } else if (i2 == 2) {
                            dVar.f2265d = i6 - 1;
                            dVar.p = i7 - 1;
                        }
                    }
                } else if (i4 == i6) {
                    if (i2 == 1) {
                        dVar.p = i7 + 1;
                    } else if (i2 == 2) {
                        dVar.p = i7 - 1;
                    }
                    i++;
                } else {
                    if (i2 == 1) {
                        dVar.f2265d = i6 + 1;
                    } else if (i2 == 2) {
                        dVar.f2265d = i6 - 1;
                    }
                    i--;
                }
            } else {
                int i8 = dVar.f2265d;
                if (i8 <= i) {
                    if (i5 == 1) {
                        i -= dVar.p;
                    } else if (i5 == 2) {
                        i += dVar.p;
                    }
                } else if (i2 == 1) {
                    dVar.f2265d = i8 + 1;
                } else if (i2 == 2) {
                    dVar.f2265d = i8 - 1;
                }
            }
        }
        for (int size2 = this.f2264d.size() - 1; size2 >= 0; size2--) {
            d dVar2 = this.f2264d.get(size2);
            if (dVar2.dq == 8) {
                int i9 = dVar2.p;
                if (i9 == dVar2.f2265d || i9 < 0) {
                    this.f2264d.remove(size2);
                    dq(dVar2);
                }
            } else if (dVar2.p <= 0) {
                this.f2264d.remove(size2);
                dq(dVar2);
            }
        }
        return i;
    }

    private void d(d dVar) {
        mn(dVar);
    }

    private void iw(d dVar) {
        mn(dVar);
    }

    private void mn(d dVar) {
        this.f2264d.add(dVar);
        int i = dVar.dq;
        if (i == 1) {
            this.ox.ox(dVar.f2265d, dVar.p);
            return;
        }
        if (i == 2) {
            this.ox.d(dVar.f2265d, dVar.p);
        } else if (i == 4) {
            this.ox.dq(dVar.f2265d, dVar.p, dVar.ox);
        } else {
            if (i != 8) {
                throw new IllegalArgumentException("Unknown update op type for ".concat(String.valueOf(dVar)));
            }
            this.ox.p(dVar.f2265d, dVar.p);
        }
    }

    private void ox(d dVar) {
        boolean z;
        char c2;
        int i = dVar.f2265d;
        int i2 = dVar.p + i;
        char c3 = 65535;
        int i3 = i;
        int i4 = 0;
        while (i3 < i2) {
            if (this.ox.dq(i3) != null || p(i3)) {
                if (c3 == 0) {
                    s(dq(2, i, i4, null));
                    z = true;
                } else {
                    z = false;
                }
                c2 = 1;
            } else {
                if (c3 == 1) {
                    mn(dq(2, i, i4, null));
                    z = true;
                } else {
                    z = false;
                }
                c2 = 0;
            }
            if (z) {
                i3 -= i4;
                i2 -= i4;
                i4 = 1;
            } else {
                i4++;
            }
            i3++;
            c3 = c2;
        }
        if (i4 != dVar.p) {
            dq(dVar);
            dVar = dq(2, i, i4, null);
        }
        if (c3 == 0) {
            s(dVar);
        } else {
            mn(dVar);
        }
    }

    private void p(d dVar) {
        int i = dVar.f2265d;
        int i2 = dVar.p + i;
        int i3 = i;
        char c2 = 65535;
        int i4 = 0;
        while (i < i2) {
            if (this.ox.dq(i) != null || p(i)) {
                if (c2 == 0) {
                    s(dq(4, i3, i4, dVar.ox));
                    i3 = i;
                    i4 = 0;
                }
                c2 = 1;
            } else {
                if (c2 == 1) {
                    mn(dq(4, i3, i4, dVar.ox));
                    i3 = i;
                    i4 = 0;
                }
                c2 = 0;
            }
            i4++;
            i++;
        }
        if (i4 != dVar.p) {
            Object obj = dVar.ox;
            dq(dVar);
            dVar = dq(4, i3, i4, obj);
        }
        if (c2 == 0) {
            s(dVar);
        } else {
            mn(dVar);
        }
    }

    private boolean p(int i) {
        int size = this.f2264d.size();
        for (int i2 = 0; i2 < size; i2++) {
            d dVar = this.f2264d.get(i2);
            int i3 = dVar.dq;
            if (i3 == 8) {
                if (dq(dVar.p, i2 + 1) == i) {
                    return true;
                }
            } else if (i3 == 1) {
                int i4 = dVar.f2265d;
                int i5 = dVar.p + i4;
                while (i4 < i5) {
                    if (dq(i4, i2 + 1) == i) {
                        return true;
                    }
                    i4++;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    private void s(d dVar) {
        int i;
        int i2 = dVar.dq;
        if (i2 == 1 || i2 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int d2 = d(dVar.f2265d, i2);
        int i3 = dVar.f2265d;
        int i4 = dVar.dq;
        if (i4 == 2) {
            i = 0;
        } else {
            if (i4 != 4) {
                throw new IllegalArgumentException("op should be remove or update.".concat(String.valueOf(dVar)));
            }
            i = 1;
        }
        int i5 = 1;
        for (int i6 = 1; i6 < dVar.p; i6++) {
            int d3 = d((i * i6) + dVar.f2265d, dVar.dq);
            int i7 = dVar.dq;
            if (i7 == 2 ? d3 != d2 : !(i7 == 4 && d3 == d2 + 1)) {
                d dq = dq(i7, d2, i5, dVar.ox);
                dq(dq, i3);
                dq(dq);
                if (dVar.dq == 4) {
                    i3 += i5;
                }
                d2 = d3;
                i5 = 1;
            } else {
                i5++;
            }
        }
        Object obj = dVar.ox;
        dq(dVar);
        if (i5 > 0) {
            d dq2 = dq(dVar.dq, d2, i5, obj);
            dq(dq2, i3);
            dq(dq2);
        }
    }

    public int d(int i) {
        return dq(i, 0);
    }

    public void d() {
        this.iw.dq(this.dq);
        int size = this.dq.size();
        for (int i = 0; i < size; i++) {
            d dVar = this.dq.get(i);
            int i2 = dVar.dq;
            if (i2 == 1) {
                iw(dVar);
            } else if (i2 == 2) {
                ox(dVar);
            } else if (i2 == 4) {
                p(dVar);
            } else if (i2 == 8) {
                d(dVar);
            }
            Runnable runnable = this.p;
            if (runnable != null) {
                runnable.run();
            }
        }
        this.dq.clear();
    }

    public int dq(int i, int i2) {
        int size = this.f2264d.size();
        while (i2 < size) {
            d dVar = this.f2264d.get(i2);
            int i3 = dVar.dq;
            if (i3 == 8) {
                int i4 = dVar.f2265d;
                if (i4 == i) {
                    i = dVar.p;
                } else {
                    if (i4 < i) {
                        i--;
                    }
                    if (dVar.p <= i) {
                        i++;
                    }
                }
            } else {
                int i5 = dVar.f2265d;
                if (i5 > i) {
                    continue;
                } else if (i3 == 2) {
                    int i6 = dVar.p;
                    if (i < i5 + i6) {
                        return -1;
                    }
                    i -= i6;
                } else if (i3 == 1) {
                    i += dVar.p;
                }
            }
            i2++;
        }
        return i;
    }

    @Override // com.bytedance.sdk.component.widget.recycler.mn.dq
    public d dq(int i, int i2, int i3, Object obj) {
        d dq = this.mn.dq();
        if (dq == null) {
            return new d(i, i2, i3, obj);
        }
        dq.dq = i;
        dq.f2265d = i2;
        dq.p = i3;
        dq.ox = obj;
        return dq;
    }

    public void dq() {
        dq(this.dq);
        dq(this.f2264d);
        this.ia = 0;
    }

    @Override // com.bytedance.sdk.component.widget.recycler.mn.dq
    public void dq(d dVar) {
        if (this.s) {
            return;
        }
        dVar.ox = null;
        this.mn.dq(dVar);
    }

    public void dq(d dVar, int i) {
        int i2 = dVar.dq;
        if (i2 == 2) {
            this.ox.dq(i, dVar.p);
        } else {
            if (i2 != 4) {
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            }
            this.ox.dq(i, dVar.p, dVar.ox);
        }
    }

    public void dq(List<d> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            dq(list.get(i));
        }
        list.clear();
    }

    public boolean dq(int i) {
        return (i & this.ia) != 0;
    }

    public boolean dq(int i, int i2, Object obj) {
        if (i2 <= 0) {
            return false;
        }
        this.dq.add(dq(4, i, i2, obj));
        this.ia |= 4;
        return this.dq.size() == 1;
    }

    public boolean iw() {
        return (this.f2264d.isEmpty() || this.dq.isEmpty()) ? false : true;
    }

    public int ox(int i) {
        int size = this.dq.size();
        for (int i2 = 0; i2 < size; i2++) {
            d dVar = this.dq.get(i2);
            int i3 = dVar.dq;
            if (i3 != 1) {
                if (i3 == 2) {
                    int i4 = dVar.f2265d;
                    if (i4 <= i) {
                        int i5 = dVar.p;
                        if (i4 + i5 > i) {
                            return -1;
                        }
                        i -= i5;
                    } else {
                        continue;
                    }
                } else if (i3 == 8) {
                    int i6 = dVar.f2265d;
                    if (i6 == i) {
                        i = dVar.p;
                    } else {
                        if (i6 < i) {
                            i--;
                        }
                        if (dVar.p <= i) {
                            i++;
                        }
                    }
                }
            } else if (dVar.f2265d <= i) {
                i += dVar.p;
            }
        }
        return i;
    }

    public void ox() {
        int size = this.f2264d.size();
        for (int i = 0; i < size; i++) {
            this.f2264d.get(i);
        }
        dq(this.f2264d);
        this.ia = 0;
    }

    public boolean p() {
        return this.dq.size() > 0;
    }

    public void s() {
        ox();
        int size = this.dq.size();
        for (int i = 0; i < size; i++) {
            d dVar = this.dq.get(i);
            int i2 = dVar.dq;
            if (i2 == 1) {
                this.ox.ox(dVar.f2265d, dVar.p);
            } else if (i2 == 2) {
                this.ox.dq(dVar.f2265d, dVar.p);
            } else if (i2 == 4) {
                this.ox.dq(dVar.f2265d, dVar.p, dVar.ox);
            } else if (i2 == 8) {
                this.ox.p(dVar.f2265d, dVar.p);
            }
            Runnable runnable = this.p;
            if (runnable != null) {
                runnable.run();
            }
        }
        dq(this.dq);
        this.ia = 0;
    }
}
