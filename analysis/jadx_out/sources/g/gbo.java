package g;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

/* loaded from: classes.dex */
public abstract class gbo extends baf {
    public static boolean a(cfm cfmVar, guv guvVar, fza fzaVar) {
        ArrayList arrayList;
        List<aea> list = guvVar.i;
        if (cfmVar != null) {
            if (cfmVar instanceof cab) {
                return a(((cab) cfmVar).y, guvVar, fzaVar);
            }
            if (cfmVar instanceof foe) {
                return a(((bjk) cfmVar).f11698d, guvVar, fzaVar);
            }
            eys eysVar = new eys(cfmVar);
            List x = cfmVar.x();
            Iterator it = x.iterator();
            while (true) {
                boolean hasNext = it.hasNext();
                arrayList = eysVar.f16387g;
                if (!hasNext) {
                    break;
                }
                amj amjVar = (amj) it.next();
                if (gs.w(fzaVar, amjVar)) {
                    Iterator it2 = list.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            arrayList.add(amjVar);
                            break;
                        }
                        fza fzaVar2 = ((aea) it2.next()).i;
                        if (fzaVar2 != null) {
                            if (!fzaVar2.l.g(csv.REMOVE) && gs.w(fzaVar2, amjVar)) {
                                break;
                            }
                        }
                    }
                }
            }
            if (!arrayList.isEmpty()) {
                bmn bmnVar = new bmn(cfmVar, eysVar);
                eysVar.f11698d = bmnVar;
                bmnVar.f11834g = guvVar;
                bmnVar.j = new LinkedHashMap(list.size());
                for (aea aeaVar : list) {
                    eys eysVar2 = aeaVar.f10081d;
                    if (eysVar2 != null) {
                        if (aeaVar.f10079b) {
                            bmnVar.h = eysVar2;
                        } else {
                            bmnVar.j.put(aeaVar, eysVar2);
                        }
                    }
                }
                if (cfmVar.f((amj) arrayList.get(0), bmnVar)) {
                    x.removeAll(arrayList);
                    Iterator it3 = arrayList.iterator();
                    while (it3.hasNext()) {
                        amj amjVar2 = (amj) it3.next();
                        if (amjVar2 instanceof bjk) {
                            ((bjk) amjVar2).f11698d = eysVar;
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }
}
