package androidx.recyclerview.widget;

import g.dqc;
import g.eie;
import g.rx;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public final a f280a;

    /* renamed from: c, reason: collision with root package name */
    public final dqc f282c = new dqc(30);

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f284e = new ArrayList();

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f285f = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    public int f283d = 0;

    /* renamed from: b, reason: collision with root package name */
    public final eie f281b = new eie(14, this);

    public h(a aVar) {
        this.f280a = aVar;
    }

    public final rx g(int i, int i2, int i3, Object obj) {
        rx rxVar = (rx) this.f282c.b();
        if (rxVar != null) {
            rxVar.f19935b = i;
            rxVar.f19936c = i2;
            rxVar.f19934a = i3;
            rxVar.f19937d = obj;
            return rxVar;
        }
        rx rxVar2 = new rx();
        rxVar2.f19935b = i;
        rxVar2.f19936c = i2;
        rxVar2.f19934a = i3;
        rxVar2.f19937d = obj;
        return rxVar2;
    }

    public final void h(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            rx rxVar = (rx) arrayList.get(i);
            rxVar.f19937d = null;
            this.f282c.c(rxVar);
        }
        arrayList.clear();
    }

    public final void i(rx rxVar) {
        int i;
        dqc dqcVar;
        int i2 = rxVar.f19935b;
        if (i2 == 1 || i2 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int j = j(rxVar.f19936c, i2);
        int i3 = rxVar.f19936c;
        int i4 = rxVar.f19935b;
        if (i4 == 2) {
            i = 0;
        } else {
            if (i4 != 4) {
                throw new IllegalArgumentException("op should be remove or update." + rxVar);
            }
            i = 1;
        }
        int i5 = 1;
        int i6 = 1;
        while (true) {
            int i7 = rxVar.f19934a;
            dqcVar = this.f282c;
            if (i5 >= i7) {
                break;
            }
            int j2 = j((i * i5) + rxVar.f19936c, rxVar.f19935b);
            int i8 = rxVar.f19935b;
            if (i8 == 2 ? j2 != j : !(i8 == 4 && j2 == j + 1)) {
                rx g2 = g(i8, j, i6, rxVar.f19937d);
                k(g2, i3);
                g2.f19937d = null;
                dqcVar.c(g2);
                if (rxVar.f19935b == 4) {
                    i3 += i6;
                }
                j = j2;
                i6 = 1;
            } else {
                i6++;
            }
            i5++;
        }
        Object obj = rxVar.f19937d;
        rxVar.f19937d = null;
        dqcVar.c(rxVar);
        if (i6 > 0) {
            rx g3 = g(rxVar.f19935b, j, i6, obj);
            k(g3, i3);
            g3.f19937d = null;
            dqcVar.c(g3);
        }
    }

    public final int j(int i, int i2) {
        int i3;
        int i4;
        ArrayList arrayList = this.f285f;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            rx rxVar = (rx) arrayList.get(size);
            int i5 = rxVar.f19935b;
            if (i5 == 8) {
                int i6 = rxVar.f19936c;
                int i7 = rxVar.f19934a;
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
                            rxVar.f19936c = i6 + 1;
                            rxVar.f19934a = i7 + 1;
                        } else if (i2 == 2) {
                            rxVar.f19936c = i6 - 1;
                            rxVar.f19934a = i7 - 1;
                        }
                    }
                } else if (i4 == i6) {
                    if (i2 == 1) {
                        rxVar.f19934a = i7 + 1;
                    } else if (i2 == 2) {
                        rxVar.f19934a = i7 - 1;
                    }
                    i++;
                } else {
                    if (i2 == 1) {
                        rxVar.f19936c = i6 + 1;
                    } else if (i2 == 2) {
                        rxVar.f19936c = i6 - 1;
                    }
                    i--;
                }
            } else {
                int i8 = rxVar.f19936c;
                if (i8 <= i) {
                    if (i5 == 1) {
                        i -= rxVar.f19934a;
                    } else if (i5 == 2) {
                        i += rxVar.f19934a;
                    }
                } else if (i2 == 1) {
                    rxVar.f19936c = i8 + 1;
                } else if (i2 == 2) {
                    rxVar.f19936c = i8 - 1;
                }
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            rx rxVar2 = (rx) arrayList.get(size2);
            int i9 = rxVar2.f19935b;
            dqc dqcVar = this.f282c;
            if (i9 == 8) {
                int i10 = rxVar2.f19934a;
                if (i10 == rxVar2.f19936c || i10 < 0) {
                    arrayList.remove(size2);
                    rxVar2.f19937d = null;
                    dqcVar.c(rxVar2);
                }
            } else if (rxVar2.f19934a <= 0) {
                arrayList.remove(size2);
                rxVar2.f19937d = null;
                dqcVar.c(rxVar2);
            }
        }
        return i;
    }

    public final void k(rx rxVar, int i) {
        a aVar = this.f280a;
        aVar.d(rxVar);
        RecyclerView recyclerView = aVar.f259a;
        int i2 = rxVar.f19935b;
        if (i2 != 2) {
            if (i2 != 4) {
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            }
            recyclerView.viewRangeUpdate(i, rxVar.f19934a, rxVar.f19937d);
            recyclerView.mItemsChanged = true;
            return;
        }
        int i3 = rxVar.f19934a;
        recyclerView.offsetPositionRecordsForRemove(i, i3, true);
        recyclerView.mItemsAddedOrRemoved = true;
        recyclerView.mState.m += i3;
    }

    public final boolean l(int i) {
        ArrayList arrayList = this.f285f;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            rx rxVar = (rx) arrayList.get(i2);
            int i3 = rxVar.f19935b;
            if (i3 != 8) {
                if (i3 == 1) {
                    int i4 = rxVar.f19936c;
                    int i5 = rxVar.f19934a + i4;
                    while (i4 < i5) {
                        if (m(i4, i2 + 1) == i) {
                            return true;
                        }
                        i4++;
                    }
                } else {
                    continue;
                }
            } else {
                if (m(rxVar.f19934a, i2 + 1) == i) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int m(int i, int i2) {
        ArrayList arrayList = this.f285f;
        int size = arrayList.size();
        while (i2 < size) {
            rx rxVar = (rx) arrayList.get(i2);
            int i3 = rxVar.f19935b;
            if (i3 == 8) {
                int i4 = rxVar.f19936c;
                if (i4 == i) {
                    i = rxVar.f19934a;
                } else {
                    if (i4 < i) {
                        i--;
                    }
                    if (rxVar.f19934a <= i) {
                        i++;
                    }
                }
            } else {
                int i5 = rxVar.f19936c;
                if (i5 > i) {
                    continue;
                } else if (i3 == 2) {
                    int i6 = rxVar.f19934a;
                    if (i < i5 + i6) {
                        return -1;
                    }
                    i -= i6;
                } else if (i3 == 1) {
                    i += rxVar.f19934a;
                }
            }
            i2++;
        }
        return i;
    }

    public final void n(rx rxVar) {
        this.f285f.add(rxVar);
        int i = rxVar.f19935b;
        a aVar = this.f280a;
        if (i == 1) {
            int i2 = rxVar.f19936c;
            int i3 = rxVar.f19934a;
            RecyclerView recyclerView = aVar.f259a;
            recyclerView.offsetPositionRecordsForInsert(i2, i3);
            recyclerView.mItemsAddedOrRemoved = true;
            return;
        }
        if (i == 2) {
            int i4 = rxVar.f19936c;
            int i5 = rxVar.f19934a;
            RecyclerView recyclerView2 = aVar.f259a;
            recyclerView2.offsetPositionRecordsForRemove(i4, i5, false);
            recyclerView2.mItemsAddedOrRemoved = true;
            return;
        }
        if (i == 4) {
            int i6 = rxVar.f19936c;
            int i7 = rxVar.f19934a;
            Object obj = rxVar.f19937d;
            RecyclerView recyclerView3 = aVar.f259a;
            recyclerView3.viewRangeUpdate(i6, i7, obj);
            recyclerView3.mItemsChanged = true;
            return;
        }
        if (i != 8) {
            throw new IllegalArgumentException("Unknown update op type for " + rxVar);
        }
        int i8 = rxVar.f19936c;
        int i9 = rxVar.f19934a;
        RecyclerView recyclerView4 = aVar.f259a;
        recyclerView4.offsetPositionRecordsForMove(i8, i9);
        recyclerView4.mItemsAddedOrRemoved = true;
    }

    public final void o() {
        ArrayList arrayList = this.f285f;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            this.f280a.d((rx) arrayList.get(i));
        }
        h(arrayList);
        this.f283d = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:119:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x00a1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0007 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x02a4  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x02a8  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0297  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x02a0  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0122 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0113 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void p() {
        ArrayList arrayList;
        int i;
        char c2;
        int i2;
        int i3;
        Object obj;
        Object obj2;
        boolean z;
        char c3;
        rx g2;
        int i4;
        int i5;
        rx g3;
        boolean z2;
        boolean z3;
        rx g4;
        eie eieVar = this.f281b;
        eieVar.getClass();
        while (true) {
            arrayList = this.f284e;
            int size = arrayList.size() - 1;
            boolean z4 = false;
            while (true) {
                i = 8;
                c2 = 65535;
                if (size < 0) {
                    size = -1;
                    break;
                }
                if (((rx) arrayList.get(size)).f19935b != 8) {
                    z4 = true;
                } else if (z4) {
                    break;
                }
                size--;
            }
            i2 = 2;
            i3 = 4;
            obj = null;
            if (size == -1) {
                break;
            }
            int i6 = size + 1;
            h hVar = (h) eieVar.f15585g;
            rx rxVar = (rx) arrayList.get(size);
            rx rxVar2 = (rx) arrayList.get(i6);
            int i7 = rxVar2.f19935b;
            if (i7 == 1) {
                int i8 = rxVar.f19934a;
                int i9 = rxVar2.f19936c;
                int i10 = i8 < i9 ? -1 : 0;
                int i11 = rxVar.f19936c;
                if (i11 < i9) {
                    i10++;
                }
                if (i9 <= i11) {
                    rxVar.f19936c = i11 + rxVar2.f19934a;
                }
                int i12 = rxVar2.f19936c;
                if (i12 <= i8) {
                    rxVar.f19934a = i8 + rxVar2.f19934a;
                }
                rxVar2.f19936c = i12 + i10;
                arrayList.set(size, rxVar2);
                arrayList.set(i6, rxVar);
            } else if (i7 == 2) {
                int i13 = rxVar.f19936c;
                int i14 = rxVar.f19934a;
                if (i13 < i14) {
                    z2 = rxVar2.f19936c == i13 && rxVar2.f19934a == i14 - i13;
                    z3 = false;
                } else {
                    z2 = rxVar2.f19936c == i14 + 1 && rxVar2.f19934a == i13 - i14;
                    z3 = true;
                }
                int i15 = rxVar2.f19936c;
                if (i14 < i15) {
                    rxVar2.f19936c = i15 - 1;
                } else {
                    int i16 = rxVar2.f19934a;
                    if (i14 < i15 + i16) {
                        rxVar2.f19934a = i16 - 1;
                        rxVar.f19935b = 2;
                        rxVar.f19934a = 1;
                        if (rxVar2.f19934a == 0) {
                            arrayList.remove(i6);
                            rxVar2.f19937d = null;
                            hVar.f282c.c(rxVar2);
                        }
                    }
                }
                int i17 = rxVar.f19936c;
                int i18 = rxVar2.f19936c;
                if (i17 <= i18) {
                    rxVar2.f19936c = i18 + 1;
                } else {
                    int i19 = i18 + rxVar2.f19934a;
                    if (i17 < i19) {
                        g4 = hVar.g(2, i17 + 1, i19 - i17, null);
                        rxVar2.f19934a = rxVar.f19936c - rxVar2.f19936c;
                        if (z2) {
                            if (z3) {
                                if (g4 != null) {
                                    int i20 = rxVar.f19936c;
                                    if (i20 > g4.f19936c) {
                                        rxVar.f19936c = i20 - g4.f19934a;
                                    }
                                    int i21 = rxVar.f19934a;
                                    if (i21 > g4.f19936c) {
                                        rxVar.f19934a = i21 - g4.f19934a;
                                    }
                                }
                                int i22 = rxVar.f19936c;
                                if (i22 > rxVar2.f19936c) {
                                    rxVar.f19936c = i22 - rxVar2.f19934a;
                                }
                                int i23 = rxVar.f19934a;
                                if (i23 > rxVar2.f19936c) {
                                    rxVar.f19934a = i23 - rxVar2.f19934a;
                                }
                            } else {
                                if (g4 != null) {
                                    int i24 = rxVar.f19936c;
                                    if (i24 >= g4.f19936c) {
                                        rxVar.f19936c = i24 - g4.f19934a;
                                    }
                                    int i25 = rxVar.f19934a;
                                    if (i25 >= g4.f19936c) {
                                        rxVar.f19934a = i25 - g4.f19934a;
                                    }
                                }
                                int i26 = rxVar.f19936c;
                                if (i26 >= rxVar2.f19936c) {
                                    rxVar.f19936c = i26 - rxVar2.f19934a;
                                }
                                int i27 = rxVar.f19934a;
                                if (i27 >= rxVar2.f19936c) {
                                    rxVar.f19934a = i27 - rxVar2.f19934a;
                                }
                            }
                            arrayList.set(size, rxVar2);
                            if (rxVar.f19936c != rxVar.f19934a) {
                                arrayList.set(i6, rxVar);
                            } else {
                                arrayList.remove(i6);
                            }
                            if (g4 != null) {
                                arrayList.add(size, g4);
                            }
                        } else {
                            arrayList.set(size, rxVar2);
                            arrayList.remove(i6);
                            rxVar.f19937d = null;
                            hVar.f282c.c(rxVar);
                        }
                    }
                }
                g4 = null;
                if (z2) {
                }
            } else if (i7 == 4) {
                int i28 = rxVar.f19934a;
                int i29 = rxVar2.f19936c;
                if (i28 < i29) {
                    rxVar2.f19936c = i29 - 1;
                } else {
                    int i30 = rxVar2.f19934a;
                    if (i28 < i29 + i30) {
                        rxVar2.f19934a = i30 - 1;
                        g2 = hVar.g(4, rxVar.f19936c, 1, rxVar2.f19937d);
                        i4 = rxVar.f19936c;
                        i5 = rxVar2.f19936c;
                        if (i4 > i5) {
                            rxVar2.f19936c = i5 + 1;
                        } else {
                            int i31 = i5 + rxVar2.f19934a;
                            if (i4 < i31) {
                                int i32 = i31 - i4;
                                g3 = hVar.g(4, i4 + 1, i32, rxVar2.f19937d);
                                rxVar2.f19934a -= i32;
                                arrayList.set(i6, rxVar);
                                if (rxVar2.f19934a > 0) {
                                    arrayList.set(size, rxVar2);
                                } else {
                                    arrayList.remove(size);
                                    rxVar2.f19937d = null;
                                    hVar.f282c.c(rxVar2);
                                }
                                if (g2 != null) {
                                    arrayList.add(size, g2);
                                }
                                if (g3 != null) {
                                    arrayList.add(size, g3);
                                }
                            }
                        }
                        g3 = null;
                        arrayList.set(i6, rxVar);
                        if (rxVar2.f19934a > 0) {
                        }
                        if (g2 != null) {
                        }
                        if (g3 != null) {
                        }
                    }
                }
                g2 = null;
                i4 = rxVar.f19936c;
                i5 = rxVar2.f19936c;
                if (i4 > i5) {
                }
                g3 = null;
                arrayList.set(i6, rxVar);
                if (rxVar2.f19934a > 0) {
                }
                if (g2 != null) {
                }
                if (g3 != null) {
                }
            }
        }
        int size2 = arrayList.size();
        int i33 = 0;
        while (i33 < size2) {
            rx rxVar3 = (rx) arrayList.get(i33);
            int i34 = rxVar3.f19935b;
            if (i34 != 1) {
                dqc dqcVar = this.f282c;
                a aVar = this.f280a;
                if (i34 == i2) {
                    int i35 = rxVar3.f19936c;
                    int i36 = rxVar3.f19934a + i35;
                    int i37 = i35;
                    int i38 = 0;
                    char c4 = 65535;
                    while (i37 < i36) {
                        RecyclerView recyclerView = aVar.f259a;
                        p findViewHolderForPosition = recyclerView.findViewHolderForPosition(i37, true);
                        if (findViewHolderForPosition != null) {
                            if (recyclerView.mChildHelper.f307e.contains(findViewHolderForPosition.n)) {
                                int i39 = RecyclerView.HORIZONTAL;
                            }
                            if (findViewHolderForPosition == null || l(i37)) {
                                if (c4 != 0) {
                                    i(g(2, i35, i38, null));
                                    z = true;
                                } else {
                                    z = false;
                                }
                                c3 = 1;
                            } else {
                                if (c4 == 1) {
                                    n(g(2, i35, i38, null));
                                    z = true;
                                } else {
                                    z = false;
                                }
                                c3 = 0;
                            }
                            if (z) {
                                i38++;
                            } else {
                                i37 -= i38;
                                i36 -= i38;
                                i38 = 1;
                            }
                            i37++;
                            c4 = c3;
                        }
                        findViewHolderForPosition = null;
                        if (findViewHolderForPosition == null) {
                        }
                        if (c4 != 0) {
                        }
                        c3 = 1;
                        if (z) {
                        }
                        i37++;
                        c4 = c3;
                    }
                    if (i38 != rxVar3.f19934a) {
                        obj2 = null;
                        rxVar3.f19937d = null;
                        dqcVar.c(rxVar3);
                        i2 = 2;
                        rxVar3 = g(2, i35, i38, null);
                    } else {
                        i2 = 2;
                        obj2 = null;
                    }
                    if (c4 == 0) {
                        i(rxVar3);
                    } else {
                        n(rxVar3);
                    }
                } else if (i34 != i3) {
                    if (i34 == i) {
                        n(rxVar3);
                    }
                    obj2 = obj;
                } else {
                    int i40 = rxVar3.f19936c;
                    int i41 = rxVar3.f19934a + i40;
                    int i42 = i40;
                    int i43 = 0;
                    while (i40 < i41) {
                        RecyclerView recyclerView2 = aVar.f259a;
                        p findViewHolderForPosition2 = recyclerView2.findViewHolderForPosition(i40, true);
                        if (findViewHolderForPosition2 != null) {
                            if (recyclerView2.mChildHelper.f307e.contains(findViewHolderForPosition2.n)) {
                                int i44 = RecyclerView.HORIZONTAL;
                            }
                            if (findViewHolderForPosition2 == null || l(i40)) {
                                if (c2 == 0) {
                                    i(g(4, i42, i43, rxVar3.f19937d));
                                    i42 = i40;
                                    i43 = 0;
                                }
                                c2 = 1;
                            } else {
                                if (c2 == 1) {
                                    n(g(4, i42, i43, rxVar3.f19937d));
                                    i42 = i40;
                                    i43 = 0;
                                }
                                c2 = 0;
                            }
                            i43++;
                            i40++;
                        }
                        findViewHolderForPosition2 = null;
                        if (findViewHolderForPosition2 == null) {
                        }
                        if (c2 == 0) {
                        }
                        c2 = 1;
                        i43++;
                        i40++;
                    }
                    if (i43 != rxVar3.f19934a) {
                        Object obj3 = rxVar3.f19937d;
                        rxVar3.f19937d = null;
                        dqcVar.c(rxVar3);
                        rxVar3 = g(4, i42, i43, obj3);
                    }
                    if (c2 == 0) {
                        i(rxVar3);
                    } else {
                        n(rxVar3);
                    }
                    i2 = 2;
                    obj2 = null;
                }
            } else {
                obj2 = obj;
                n(rxVar3);
            }
            i33++;
            obj = obj2;
            i = 8;
            c2 = 65535;
            i3 = 4;
        }
        arrayList.clear();
    }

    public final void q() {
        o();
        ArrayList arrayList = this.f284e;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            rx rxVar = (rx) arrayList.get(i);
            int i2 = rxVar.f19935b;
            a aVar = this.f280a;
            if (i2 == 1) {
                aVar.d(rxVar);
                int i3 = rxVar.f19936c;
                int i4 = rxVar.f19934a;
                RecyclerView recyclerView = aVar.f259a;
                recyclerView.offsetPositionRecordsForInsert(i3, i4);
                recyclerView.mItemsAddedOrRemoved = true;
            } else if (i2 == 2) {
                aVar.d(rxVar);
                int i5 = rxVar.f19936c;
                int i6 = rxVar.f19934a;
                RecyclerView recyclerView2 = aVar.f259a;
                recyclerView2.offsetPositionRecordsForRemove(i5, i6, true);
                recyclerView2.mItemsAddedOrRemoved = true;
                recyclerView2.mState.m += i6;
            } else if (i2 == 4) {
                aVar.d(rxVar);
                int i7 = rxVar.f19936c;
                int i8 = rxVar.f19934a;
                Object obj = rxVar.f19937d;
                RecyclerView recyclerView3 = aVar.f259a;
                recyclerView3.viewRangeUpdate(i7, i8, obj);
                recyclerView3.mItemsChanged = true;
            } else if (i2 == 8) {
                aVar.d(rxVar);
                int i9 = rxVar.f19936c;
                int i10 = rxVar.f19934a;
                RecyclerView recyclerView4 = aVar.f259a;
                recyclerView4.offsetPositionRecordsForMove(i9, i10);
                recyclerView4.mItemsAddedOrRemoved = true;
            }
        }
        h(arrayList);
        this.f283d = 0;
    }

    public final boolean r() {
        return this.f284e.size() > 0;
    }
}
