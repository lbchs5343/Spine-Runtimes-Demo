package g;

import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class fcu extends pj {
    static {
        dsr.k(fcu.class);
    }

    @Override // g.pj
    public final void j(hed hedVar) {
        if (hedVar.ar || hedVar.ao == null || hedVar.ak.isEmpty()) {
            return;
        }
        if (hedVar.l.j(acq.af)) {
            return;
        }
        HashSet hashSet = new HashSet();
        buj.bb(hedVar, new fdl(0, hashSet), hedVar.ao);
        if (hedVar.ak.size() != hashSet.size()) {
            for (fza fzaVar : hedVar.ak) {
                if (!hashSet.contains(fzaVar) && !fzaVar.ac.isEmpty()) {
                    if (!fzaVar.l.g(csv.ADDED_TO_REGION)) {
                        if (!fzaVar.l.g(csv.DONT_GENERATE)) {
                            if (!fzaVar.l.g(csv.REMOVE)) {
                                grs grsVar = new grs();
                                grsVar.aa();
                                grsVar.m();
                                grb grbVar = new grb(ejh.f(hedVar), true);
                                Iterator it = fzaVar.ac.iterator();
                                while (it.hasNext()) {
                                    try {
                                        grbVar.ab((eek) it.next(), grsVar, null);
                                    } catch (bae unused) {
                                    }
                                }
                                grsVar.m();
                                hedVar.bs("Code restructure failed: missing block: " + fzaVar + ", code lost:" + grsVar.x.toString().replace("*/", "*\\/"));
                            }
                        }
                    }
                }
            }
        }
        buj.bb(hedVar, new enz(2), hedVar.ao);
    }
}
