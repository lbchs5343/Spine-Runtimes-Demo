package g;

import j$.util.Comparator;
import j$.util.List;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class ccy extends pj {
    static {
        dsr.k(ccy.class);
    }

    public static aea a(hed hedVar, eek[] eekVarArr, int i, ve veVar) {
        eek eekVar = eekVarArr[i];
        if (eekVar != null) {
            eng engVar = (eng) eekVar.l.k(acq.bh);
            if (engVar != null) {
                aea aeaVar = engVar.f15859a;
                if (aeaVar.k(hedVar, veVar)) {
                    return null;
                }
                return aeaVar;
            }
        } else {
            eekVar = new eek(hay.NOP, 0);
            eekVar.ag = i;
            eekVar.w(csv.SYNTHETIC);
            eekVarArr[i] = eekVar;
        }
        aea aeaVar2 = new aea(i);
        aeaVar2.k(hedVar, veVar);
        if (hedVar.ap.isEmpty()) {
            hedVar.ap = new ArrayList(2);
        }
        hedVar.ap.add(aeaVar2);
        eekVar.m(new eng(aeaVar2));
        return aeaVar2;
    }

    @Override // g.pj
    public final void j(hed hedVar) {
        if (hedVar.ar) {
            return;
        }
        eek[] eekVarArr = hedVar.an;
        List<eoo> e2 = hedVar.f19333ab.e();
        if (e2.isEmpty()) {
            return;
        }
        for (eoo eooVar : e2) {
            avx f2 = eooVar.f();
            int[] iArr = f2.f10948a;
            String[] strArr = f2.f10949b;
            int length = iArr.length;
            ArrayList arrayList = new ArrayList(length);
            for (int i = 0; i < length; i++) {
                acr.bj(a(hedVar, eekVarArr, iArr[i], ve.g(hedVar.am.f12631ab, strArr[i])), arrayList);
            }
            int i2 = f2.f10950c;
            eek eekVar = null;
            if (i2 >= 0) {
                acr.bj(a(hedVar, eekVarArr, i2, null), arrayList);
            }
            if (!arrayList.isEmpty()) {
                List.b.sort(arrayList, Comparator.a.comparingInt(new dbm(2)));
                coe coeVar = new coe(arrayList);
                int e3 = eooVar.e();
                int d2 = eooVar.d();
                boolean z = false;
                while (e3 <= d2) {
                    eek eekVar2 = eekVarArr[e3];
                    if (eekVar2 != null) {
                        coe coeVar2 = (coe) eekVar2.l.k(acq.al);
                        if (coeVar2 != null) {
                            java.util.List bi = acr.bi(coeVar2.f13218a, coeVar.f13218a);
                            List.b.sort(bi, Comparator.a.comparingInt(new dbm(2)));
                            eekVar2.m(new coe(bi));
                        } else {
                            eekVar2.m(coeVar);
                        }
                        if (!z) {
                            eekVar2.w(csv.TRY_ENTER);
                            z = true;
                        }
                        eekVar = eekVar2;
                    }
                    e3 = eak.ba(eekVarArr, e3);
                    if (e3 == -1) {
                        break;
                    }
                }
                if (z) {
                    eekVar.w(csv.TRY_LEAVE);
                } else {
                    int e4 = eooVar.e();
                    eek eekVar3 = new eek(hay.NOP, 0);
                    eekVar3.ag = e4;
                    eekVar3.w(csv.SYNTHETIC);
                    eekVarArr[e4] = eekVar3;
                    eekVar3.w(csv.TRY_ENTER);
                    eekVar3.w(csv.TRY_LEAVE);
                    eekVar3.m(coeVar);
                }
            }
        }
    }
}
