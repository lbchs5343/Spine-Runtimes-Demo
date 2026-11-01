package g;

import java.util.Iterator;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public final class diu {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f14250a = dsr.k(diu.class);

    public static boolean b(fza fzaVar, amj amjVar) {
        if (!gs.z(amjVar)) {
            if (amjVar instanceof fza) {
                if (ffb.cf((fza) amjVar) == fzaVar) {
                    return true;
                }
            } else {
                if (amjVar instanceof cfm) {
                    Iterator it = ((cfm) amjVar).x().iterator();
                    while (it.hasNext()) {
                        if (!b(fzaVar, (amj) it.next())) {
                        }
                    }
                    return true;
                }
                f14250a.o("Unexpected container type in switch");
            }
        }
        return false;
    }

    public static boolean c(LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2) {
        fza fzaVar = null;
        for (fza fzaVar2 : linkedHashMap.keySet()) {
            if (fzaVar != null && !fzaVar2.equals(fzaVar)) {
                return true;
            }
            fzaVar = (fza) linkedHashMap2.get(fzaVar2);
        }
        return fzaVar != null;
    }
}
