package com.bytedance.sdk.component.widget.recycler;

import com.bytedance.sdk.component.widget.recycler.dq;
import java.util.List;

/* loaded from: classes.dex */
class mn {
    final dq dq;

    public interface dq {
        dq.d dq(int i, int i2, int i3, Object obj);

        void dq(dq.d dVar);
    }

    public mn(dq dqVar) {
        this.dq = dqVar;
    }

    private int d(List<dq.d> list) {
        boolean z = false;
        for (int size = list.size() - 1; size >= 0; size--) {
            if (list.get(size).dq != 8) {
                z = true;
            } else if (z) {
                return size;
            }
        }
        return -1;
    }

    private void dq(List<dq.d> list, int i, int i2) {
        dq.d dVar = list.get(i);
        dq.d dVar2 = list.get(i2);
        int i3 = dVar2.dq;
        if (i3 == 1) {
            ox(list, i, dVar, i2, dVar2);
        } else if (i3 == 2) {
            dq(list, i, dVar, i2, dVar2);
        } else {
            if (i3 != 4) {
                return;
            }
            d(list, i, dVar, i2, dVar2);
        }
    }

    private void ox(List<dq.d> list, int i, dq.d dVar, int i2, dq.d dVar2) {
        int i3 = dVar.p;
        int i4 = dVar2.f2265d;
        int i5 = i3 < i4 ? -1 : 0;
        int i6 = dVar.f2265d;
        if (i6 < i4) {
            i5++;
        }
        if (i4 <= i6) {
            dVar.f2265d = i6 + dVar2.p;
        }
        int i7 = dVar2.f2265d;
        if (i7 <= i3) {
            dVar.p = i3 + dVar2.p;
        }
        dVar2.f2265d = i7 + i5;
        list.set(i, dVar2);
        list.set(i2, dVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void d(List<dq.d> list, int i, dq.d dVar, int i2, dq.d dVar2) {
        dq.d dq2;
        int i3;
        int i4;
        int i5 = dVar.p;
        int i6 = dVar2.f2265d;
        dq.d dVar3 = null;
        if (i5 < i6) {
            dVar2.f2265d = i6 - 1;
        } else {
            int i7 = dVar2.p;
            if (i5 < i6 + i7) {
                dVar2.p = i7 - 1;
                dq2 = this.dq.dq(4, dVar.f2265d, 1, dVar2.ox);
                i3 = dVar.f2265d;
                i4 = dVar2.f2265d;
                if (i3 > i4) {
                    dVar2.f2265d = i4 + 1;
                } else {
                    int i8 = dVar2.p;
                    if (i3 < i4 + i8) {
                        int i9 = (i4 + i8) - i3;
                        dVar3 = this.dq.dq(4, i3 + 1, i9, dVar2.ox);
                        dVar2.p -= i9;
                    }
                }
                list.set(i2, dVar);
                if (dVar2.p <= 0) {
                    list.set(i, dVar2);
                } else {
                    list.remove(i);
                    this.dq.dq(dVar2);
                }
                if (dq2 != null) {
                    list.add(i, dq2);
                }
                if (dVar3 == null) {
                    list.add(i, dVar3);
                    return;
                }
                return;
            }
        }
        dq2 = null;
        i3 = dVar.f2265d;
        i4 = dVar2.f2265d;
        if (i3 > i4) {
        }
        list.set(i2, dVar);
        if (dVar2.p <= 0) {
        }
        if (dq2 != null) {
        }
        if (dVar3 == null) {
        }
    }

    public void dq(List<dq.d> list) {
        while (true) {
            int d2 = d(list);
            if (d2 == -1) {
                return;
            } else {
                dq(list, d2, d2 + 1);
            }
        }
    }

    public void dq(List<dq.d> list, int i, dq.d dVar, int i2, dq.d dVar2) {
        boolean z;
        int i3 = dVar.f2265d;
        int i4 = dVar.p;
        boolean z2 = false;
        if (i3 < i4) {
            if (dVar2.f2265d == i3 && dVar2.p == i4 - i3) {
                z = false;
                z2 = true;
            } else {
                z = false;
            }
        } else if (dVar2.f2265d == i4 + 1 && dVar2.p == i3 - i4) {
            z = true;
            z2 = true;
        } else {
            z = true;
        }
        int i5 = dVar2.f2265d;
        if (i4 < i5) {
            dVar2.f2265d = i5 - 1;
        } else {
            int i6 = dVar2.p;
            if (i4 < i5 + i6) {
                dVar2.p = i6 - 1;
                dVar.dq = 2;
                dVar.p = 1;
                if (dVar2.p == 0) {
                    list.remove(i2);
                    this.dq.dq(dVar2);
                    return;
                }
                return;
            }
        }
        int i7 = dVar.f2265d;
        int i8 = dVar2.f2265d;
        dq.d dVar3 = null;
        if (i7 <= i8) {
            dVar2.f2265d = i8 + 1;
        } else {
            int i9 = dVar2.p;
            if (i7 < i8 + i9) {
                dVar3 = this.dq.dq(2, i7 + 1, (i8 + i9) - i7, null);
                dVar2.p = dVar.f2265d - dVar2.f2265d;
            }
        }
        if (z2) {
            list.set(i, dVar2);
            list.remove(i2);
            this.dq.dq(dVar);
            return;
        }
        if (z) {
            if (dVar3 != null) {
                int i10 = dVar.f2265d;
                if (i10 > dVar3.f2265d) {
                    dVar.f2265d = i10 - dVar3.p;
                }
                int i11 = dVar.p;
                if (i11 > dVar3.f2265d) {
                    dVar.p = i11 - dVar3.p;
                }
            }
            int i12 = dVar.f2265d;
            if (i12 > dVar2.f2265d) {
                dVar.f2265d = i12 - dVar2.p;
            }
            int i13 = dVar.p;
            if (i13 > dVar2.f2265d) {
                dVar.p = i13 - dVar2.p;
            }
        } else {
            if (dVar3 != null) {
                int i14 = dVar.f2265d;
                if (i14 >= dVar3.f2265d) {
                    dVar.f2265d = i14 - dVar3.p;
                }
                int i15 = dVar.p;
                if (i15 >= dVar3.f2265d) {
                    dVar.p = i15 - dVar3.p;
                }
            }
            int i16 = dVar.f2265d;
            if (i16 >= dVar2.f2265d) {
                dVar.f2265d = i16 - dVar2.p;
            }
            int i17 = dVar.p;
            if (i17 >= dVar2.f2265d) {
                dVar.p = i17 - dVar2.p;
            }
        }
        list.set(i, dVar2);
        if (dVar.f2265d != dVar.p) {
            list.set(i2, dVar);
        } else {
            list.remove(i2);
        }
        if (dVar3 != null) {
            list.add(i, dVar3);
        }
    }
}
