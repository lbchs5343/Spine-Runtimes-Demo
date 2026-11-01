package g;

import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class fto extends grb {
    public static boolean a(gsh gshVar) {
        gshVar.getClass();
        if (!(gshVar instanceof cly)) {
            return false;
        }
        eek eekVar = ((cly) gshVar).f13104a;
        hay hayVar = eekVar.ah;
        if (hayVar == hay.ARITH) {
            int i = rv.f19931b[((ame) eekVar).f10465d.ordinal()];
            return (i == 1 || i == 2 || i == 3 || i == 4 || i == 5) ? false : true;
        }
        switch (rv.f19932c[hayVar.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return false;
            default:
                return true;
        }
    }

    public final void b(eos eosVar, dfa dfaVar, eii eiiVar) {
        boolean z = false;
        if (!eiiVar.h()) {
            if (!eiiVar.l.g(csv.DONT_WRAP) && eiiVar.f15587a != ath.NOT) {
                z = true;
            }
        }
        if (z) {
            eosVar.a('(');
        }
        c(eosVar, dfaVar, eiiVar);
        if (z) {
            eosVar.a(')');
        }
    }

    public final void c(eos eosVar, dfa dfaVar, eii eiiVar) {
        ArrayDeque arrayDeque = dfaVar.f14080a;
        arrayDeque.add(eiiVar);
        int[] iArr = rv.f19930a;
        ath athVar = eiiVar.f15587a;
        List list = eiiVar.f15588b;
        int i = iArr[athVar.ordinal()];
        if (i == 1) {
            evf evfVar = eiiVar.f15589c;
            bgw bgwVar = (bgw) evfVar.f16224f;
            ges gesVar = bgwVar.y;
            gsh j = bgwVar.j(0);
            gsh m = evfVar.m();
            cwx j2 = j.j();
            cff cffVar = cwx.at;
            if (j2.equals(cffVar)) {
                m.getClass();
                if ((m instanceof ekh) && m.j().equals(cffVar)) {
                    if (((ekh) m).f15702a == 0) {
                        gesVar = gesVar.c();
                    }
                    if (gesVar == ges.EQ) {
                        if (arrayDeque.size() == 1) {
                            aa(eosVar, j, false);
                        } else {
                            boolean a2 = a(j);
                            if (a2) {
                                eosVar.a('(');
                            }
                            aa(eosVar, j, false);
                            if (a2) {
                                eosVar.a(')');
                            }
                        }
                    } else if (gesVar == ges.NE) {
                        eosVar.a('!');
                        boolean a3 = a(j);
                        if (a3) {
                            eosVar.a('(');
                        }
                        aa(eosVar, j, false);
                        if (a3) {
                            eosVar.a(')');
                        }
                    } else {
                        this.m.bs("Unsupported boolean condition " + gesVar.b());
                    }
                }
            }
            aa(eosVar, j, a(j));
            eosVar.a(' ').d(gesVar.b()).a(' ');
            aa(eosVar, m, a(m));
        } else if (i == 2) {
            c(eosVar, dfaVar, eiiVar.y());
            eosVar.d(" ? ");
            c(eosVar, dfaVar, (eii) list.get(1));
            eosVar.d(" : ");
            c(eosVar, dfaVar, (eii) list.get(2));
        } else if (i == 3) {
            eosVar.a('!');
            b(eosVar, dfaVar, (eii) list.get(0));
        } else {
            if (i != 4 && i != 5) {
                throw new gck("Unknown condition mode: " + athVar);
            }
            String str = athVar == ath.AND ? " && " : " || ";
            Iterator it = list.iterator();
            while (it.hasNext()) {
                b(eosVar, dfaVar, (eii) it.next());
                if (it.hasNext()) {
                    eosVar.d(str);
                }
            }
        }
    }
}
