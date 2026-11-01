package g;

import j$.lang.Iterable;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class dop extends bnf {
    @Override // g.bnf
    public final void b() {
        aqf aqfVar;
        AtomicReference atomicReference = this.f11867c;
        if (((fkb) atomicReference.get()).e() == null) {
            throw new gck("Expected to find block info within ".concat(dop.class.getSimpleName()));
        }
        cgy cgyVar = ((fkb) atomicReference.get()).j;
        fkb fkbVar = (fkb) atomicReference.get();
        AtomicReference atomicReference2 = cgyVar.f12863f;
        AtomicReference atomicReference3 = cgyVar.f12861d;
        if (atomicReference3.get() == fkbVar) {
            atomicReference2 = atomicReference3;
        } else if (atomicReference2.get() != fkbVar) {
            atomicReference2 = null;
        }
        if (atomicReference2 == null) {
            throw new gck("Orphaned traverser state");
        }
        fkb fkbVar2 = (fkb) atomicReference.get();
        gvg e2 = fkbVar2.e();
        List i = e2.i();
        ListIterator listIterator = i.listIterator(i.size());
        int i2 = 0;
        while (listIterator.hasPrevious()) {
            if (fmi.f17032a[((eek) listIterator.previous()).ah.ordinal()] != 1) {
                break;
            } else {
                i2++;
            }
        }
        e2.f18813e += i2;
        e2.f18810b += i2;
        cgy cgyVar2 = fkbVar2.j;
        cxc k = fkbVar2.k();
        HashSet hashSet = (HashSet) k.f13671a;
        gvg e3 = fkbVar2.e();
        if (k.f13674d) {
            List i3 = e3.i();
            ListIterator listIterator2 = i3.listIterator(i3.size());
            int i4 = 0;
            loop1: while (listIterator2.hasPrevious()) {
                eek eekVar = (eek) listIterator2.previous();
                hay hayVar = eekVar.ah;
                List<gsh> list = eekVar.aj;
                int i5 = cai.f12549a[hayVar.ordinal()];
                if (i5 != 1 && i5 != 2) {
                    if (!hashSet.isEmpty()) {
                        gks gksVar = eekVar.ai;
                        if (gksVar == null) {
                            gksVar = null;
                        }
                        if (gksVar != null) {
                            Iterator it = hashSet.iterator();
                            while (it.hasNext()) {
                                if (((gks) it.next()).equals(gksVar)) {
                                    i4++;
                                    LinkedList linkedList = new LinkedList();
                                    for (gsh gshVar : list) {
                                        if (gshVar instanceof gks) {
                                            linkedList.add((gks) gshVar);
                                        }
                                    }
                                    Iterable.b.forEach(linkedList, new agx(7, k));
                                }
                            }
                            break loop1;
                        }
                        break;
                    }
                    break;
                }
                if (list.size() != 0) {
                    gsh j = eekVar.j(0);
                    if (j instanceof gks) {
                        hashSet.add((gks) j);
                    }
                }
                i4++;
            }
            int i6 = e3.f18813e + i4;
            e3.f18813e = i6;
            fza fzaVar = (fza) e3.f18811c;
            aqfVar = i6 >= fzaVar.ac.size() ? new aqf(cgyVar2, k, fzaVar, 2) : new aqf(cgyVar2, k, e3, 0);
        } else {
            aqfVar = new aqf(cgyVar2, k, e3, 0);
        }
        atomicReference2.set(aqfVar);
    }
}
