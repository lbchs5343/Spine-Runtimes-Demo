package g;

import j$.lang.Iterable;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final class eii extends lh {

    /* renamed from: a, reason: collision with root package name */
    public final ath f15587a;

    /* renamed from: b, reason: collision with root package name */
    public final List f15588b;

    /* renamed from: c, reason: collision with root package name */
    public final evf f15589c;

    public eii(ath athVar, List list) {
        this.f15587a = athVar;
        this.f15588b = list;
        this.f15589c = null;
    }

    public eii(eii eiiVar) {
        this.f15587a = eiiVar.f15587a;
        this.f15589c = eiiVar.f15589c;
        if (eiiVar.f15587a == ath.COMPARE) {
            this.f15588b = Collections.EMPTY_LIST;
        } else {
            this.f15588b = new ArrayList(eiiVar.f15588b);
        }
    }

    public eii(evf evfVar) {
        this.f15587a = ath.COMPARE;
        this.f15589c = evfVar;
        this.f15588b = Collections.EMPTY_LIST;
    }

    public static eii d(eii eiiVar) {
        ath athVar = eiiVar.f15587a;
        List list = eiiVar.f15588b;
        int i = gwp.f18892a[athVar.ordinal()];
        if (i == 1) {
            evf evfVar = eiiVar.f15589c;
            ((bgw) evfVar.f16224f).z();
            return new eii(evfVar);
        }
        if (i == 2) {
            return new eii(ath.TERNARY, Arrays.asList(eiiVar.y(), e((eii) list.get(1)), e((eii) list.get(2))));
        }
        if (i == 3) {
            return eiiVar.y();
        }
        if (i != 4 && i != 5) {
            throw new gck("Unknown mode for invert: " + athVar);
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(d((eii) it.next()));
        }
        ath athVar2 = ath.AND;
        if (athVar == athVar2) {
            athVar2 = ath.OR;
        }
        return new eii(athVar2, arrayList);
    }

    public static eii e(eii eiiVar) {
        ath athVar = eiiVar.f15587a;
        ath athVar2 = ath.NOT;
        if (athVar == athVar2) {
            return eiiVar.y();
        }
        evf evfVar = eiiVar.f15589c;
        if (evfVar == null) {
            return new eii(athVar2, Collections.singletonList(eiiVar));
        }
        ((bgw) evfVar.f16224f).z();
        return new eii(evfVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x00f9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x00fa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static eii f(eii eiiVar) {
        eii eiiVar2;
        int size;
        bvj bvjVar;
        bvj bvjVar2;
        eii eiiVar3;
        int i = 0;
        if (eiiVar.h()) {
            eiiVar2 = eiiVar;
            evf evfVar = eiiVar2.f15589c;
            bgw bgwVar = (bgw) evfVar.f16224f;
            bgw bgwVar2 = (bgw) evfVar.f16224f;
            gsh j = bgwVar.j(0);
            j.getClass();
            if (j instanceof cly) {
                gsh m = evfVar.m();
                m.getClass();
                if (m instanceof ekh) {
                    long j2 = ((ekh) evfVar.m()).f15702a;
                    if (j2 == 0 || j2 == 1) {
                        eek eekVar = ((cly) bgwVar2.j(0)).f13104a;
                        int i2 = gwp.f18893b[eekVar.ah.ordinal()];
                        if (i2 == 1 || i2 == 2) {
                            if (j2 == 0) {
                                ges gesVar = bgwVar2.y;
                                gsh j3 = eekVar.j(0);
                                gsh j4 = eekVar.j(1);
                                bgwVar2.y = gesVar;
                                bgwVar2.e(0, j3);
                                bgwVar2.e(1, j4);
                            }
                        } else if (i2 == 3) {
                            cwx j5 = evfVar.m().j();
                            cff cffVar = cwx.at;
                            if (j5 == cffVar && ((bvjVar = ((ame) eekVar).f10465d) == (bvjVar2 = bvj.OR) || bvjVar == bvj.AND)) {
                                ges gesVar2 = bgwVar2.y;
                                ges gesVar3 = ges.NE;
                                boolean z = (gesVar2 == gesVar3 && j2 == 0) || (gesVar2 == ges.EQ && j2 == 1);
                                if (!z) {
                                    gesVar3 = ges.EQ;
                                }
                                eiiVar3 = new eii((!(z && bvjVar == bvjVar2) && (z || bvjVar != bvj.AND)) ? ath.AND : ath.OR, Arrays.asList(new eii(new evf(new bgw(gesVar3, eekVar.j(0), new ekh(0L, cffVar)))), new eii(new evf(new bgw(gesVar3, eekVar.j(1), new ekh(0L, cffVar))))));
                                if (eiiVar3 == null) {
                                    return eiiVar3;
                                }
                                if (bgwVar2.y == ges.EQ && evfVar.m().ar()) {
                                    ath athVar = ath.NOT;
                                    bgwVar2.z();
                                    eiiVar2 = new eii(athVar, Collections.singletonList(new eii(evfVar)));
                                } else {
                                    bgwVar2.ab();
                                }
                            }
                        }
                    }
                }
            }
            eiiVar3 = null;
            if (eiiVar3 == null) {
            }
        } else {
            eiiVar2 = eiiVar;
        }
        List list = eiiVar2.f15588b;
        ArrayList arrayList = null;
        for (int i3 = 0; i3 < list.size(); i3++) {
            eii eiiVar4 = (eii) list.get(i3);
            eii f2 = f(eiiVar4);
            if (f2 != eiiVar4) {
                if (arrayList == null) {
                    arrayList = new ArrayList(list);
                }
                arrayList.set(i3, f2);
            }
        }
        if (arrayList != null) {
            eiiVar2 = new eii(eiiVar2.f15587a, arrayList);
        }
        ath athVar2 = eiiVar2.f15587a;
        ath athVar3 = ath.NOT;
        if (athVar2 == athVar3 && eiiVar2.y().f15587a == athVar3) {
            eiiVar2 = d(eiiVar2.y());
        }
        if (eiiVar2.f15587a == ath.TERNARY && eiiVar2.y().f15587a == athVar3) {
            eiiVar2 = d(eiiVar2);
        }
        ath athVar4 = eiiVar2.f15587a;
        List<eii> list2 = eiiVar2.f15588b;
        if ((athVar4 != ath.OR && athVar4 != ath.AND) || (size = list2.size()) <= 1) {
            return eiiVar2;
        }
        for (eii eiiVar5 : list2) {
            if (eiiVar5.f15587a == ath.NOT || (eiiVar5.h() && ((bgw) eiiVar5.f15589c.f16224f).y == ges.NE)) {
                i++;
            }
        }
        return i > size / 2 ? e(d(eiiVar2)) : eiiVar2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof eii)) {
            return false;
        }
        eii eiiVar = (eii) obj;
        return this.f15587a == eiiVar.f15587a && Objects.equals(this.f15588b, eiiVar.f15588b) && Objects.equals(this.f15589c, eiiVar.f15589c);
    }

    public final void g(Consumer consumer) {
        if (this.f15587a == ath.COMPARE) {
            ((bgw) this.f15589c.f16224f)._be(consumer);
        } else {
            Iterable.b.forEach(this.f15588b, new agx(12, consumer));
        }
    }

    public final boolean h() {
        return this.f15587a == ath.COMPARE;
    }

    public final int hashCode() {
        int hashCode = (this.f15588b.hashCode() + ((this.f15587a.hashCode() + (super.hashCode() * 31)) * 31)) * 31;
        evf evfVar = this.f15589c;
        return hashCode + (evfVar != null ? evfVar.hashCode() : 0);
    }

    public final ArrayList i() {
        ArrayList arrayList = new ArrayList();
        if (this.f15587a == ath.COMPARE) {
            ((bgw) this.f15589c.f16224f).h(arrayList);
            return arrayList;
        }
        Iterator it = this.f15588b.iterator();
        while (it.hasNext()) {
            arrayList.addAll(((eii) it.next()).i());
        }
        return arrayList;
    }

    public final eek j() {
        return this.f15587a == ath.COMPARE ? (bgw) this.f15589c.f16224f : ((eii) this.f15588b.get(0)).j();
    }

    public final String toString() {
        int[] iArr = gwp.f18892a;
        ath athVar = this.f15587a;
        int i = iArr[athVar.ordinal()];
        if (i == 1) {
            return this.f15589c.toString();
        }
        List list = this.f15588b;
        if (i == 2) {
            return y() + " ? " + ((eii) list.get(1)) + " : " + ((eii) list.get(2));
        }
        if (i == 3) {
            return "!(" + y() + ')';
        }
        if (i != 4 && i != 5) {
            return "??";
        }
        String str = athVar == ath.OR ? " || " : " && ";
        StringBuilder sb = new StringBuilder("(");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            sb.append((eii) it.next());
            if (it.hasNext()) {
                sb.append(str);
            }
        }
        sb.append(')');
        return sb.toString();
    }

    public final boolean x(gsh gshVar, gsh gshVar2) {
        if (this.f15587a == ath.COMPARE) {
            return ((bgw) this.f15589c.f16224f).f(gshVar, gshVar2);
        }
        Iterator it = this.f15588b.iterator();
        while (it.hasNext()) {
            if (((eii) it.next()).x(gshVar, gshVar2)) {
                return true;
            }
        }
        return false;
    }

    public final eii y() {
        return (eii) this.f15588b.get(0);
    }
}
