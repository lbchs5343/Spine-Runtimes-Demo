package g;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* loaded from: classes.dex */
public final class dhp extends bgf {
    /* JADX WARN: Multi-variable type inference failed */
    public static boolean a(amj amjVar) {
        if (amjVar instanceof cih) {
            cih cihVar = (cih) amjVar;
            if (cihVar.c().isEmpty()) {
                return true;
            }
            return ((lh) cihVar).l.g(csv.RETURN);
        }
        if (!(amjVar instanceof cfm)) {
            throw new gck("Unknown container type: " + amjVar.getClass());
        }
        Iterator it = ((cfm) amjVar).x().iterator();
        while (it.hasNext()) {
            if (!a((amj) it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // g.bgf, g.byr
    public final boolean _cs(hed hedVar, cfm cfmVar) {
        super._cs(hedVar, cfmVar);
        return !(cfmVar instanceof eln);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // g.bgf
    public final void ad(hed hedVar, cih cihVar, cfm cfmVar) {
        amj amjVar;
        ArrayDeque arrayDeque = (ArrayDeque) this.z;
        if (cihVar.getClass() != fza.class) {
            return;
        }
        fza fzaVar = (fza) cihVar;
        if (fzaVar.l.g(csv.RETURN)) {
            ArrayList arrayList = fzaVar.ac;
            if (arrayList.size() == 1) {
                if (hedVar.ac.size() != 0) {
                    if (hedVar.bi(fzaVar) != null) {
                        return;
                    }
                    Iterator it = arrayDeque.iterator();
                    while (it.hasNext()) {
                        if (((cfm) it.next()).getClass() == cab.class) {
                            return;
                        }
                    }
                }
                Iterator it2 = arrayDeque.iterator();
                fza fzaVar2 = fzaVar;
                while (it2.hasNext()) {
                    cfm cfmVar2 = (cfm) it2.next();
                    if (!(cfmVar2 instanceof foe)) {
                        List x = cfmVar2.x();
                        if (x.isEmpty()) {
                            continue;
                        } else {
                            ListIterator listIterator = x.listIterator(x.size());
                            while (listIterator.hasPrevious() && (amjVar = (amj) listIterator.previous()) != fzaVar2) {
                                if (!a(amjVar)) {
                                    return;
                                }
                            }
                        }
                    }
                    fzaVar2 = cfmVar2;
                }
                arrayList.remove(0);
                fzaVar.v(csv.RETURN);
            }
        }
    }
}
