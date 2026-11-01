package g;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

/* loaded from: classes.dex */
public final class erg extends pj {

    /* renamed from: a, reason: collision with root package name */
    public dwg f16024a;

    static {
        dsr.k(erg.class);
    }

    public static boolean b(ArrayList arrayList, List list) {
        int size = arrayList.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            if (!((cwx) arrayList.get(i)).h()) {
                arrayList.set(i, (cwx) list.get(i));
                z = true;
            }
        }
        return z;
    }

    public static void c(gif gifVar, int i, ArrayList arrayList, ArrayList arrayList2) {
        int size = gifVar.aj.size();
        for (int i2 = i; i2 < size; i2++) {
            gsh j = gifVar.j(i2);
            int i3 = i2 - i;
            cwx cwxVar = (cwx) arrayList.get(i3);
            cwx cwxVar2 = (cwx) arrayList2.get(i3);
            if (cwxVar2 != null) {
                if (cwxVar2.equals(cwxVar)) {
                    j.getClass();
                    if (j instanceof cly) {
                        eek eekVar = ((cly) j).f13104a;
                        if (eekVar.ah == hay.CHECK_CAST) {
                            eekVar.w(csv.EXPLICIT_CAST);
                        }
                    }
                } else {
                    j.getClass();
                    if (j instanceof ekh) {
                        cwxVar.getClass();
                        if ((cwxVar instanceof cff) && (cwxVar2 instanceof cff)) {
                            j.f(cwxVar2);
                            j.w(csv.EXPLICIT_PRIMITIVE_TYPE);
                        }
                    }
                    hay hayVar = hay.CHECK_CAST;
                    dba dbaVar = ack.f9977a;
                    if (j instanceof cly) {
                        eek eekVar2 = ((cly) j).f13104a;
                        if (eekVar2.ah == hayVar) {
                            ((adz) eekVar2).f10070a = cwxVar2;
                        }
                    }
                    adz adzVar = new adz(hay.CAST, cwxVar2, 1);
                    adzVar._an(j);
                    adzVar.w(csv.EXPLICIT_CAST);
                    cly aj = gsh.aj(adzVar);
                    aj.h = cwxVar2;
                    gifVar.e(i2, aj);
                }
            }
        }
    }

    public static ArrayList d(gif gifVar, int i) {
        cwx cwxVar;
        int size = gifVar.aj.size();
        ArrayList arrayList = new ArrayList(size);
        while (i < size) {
            gsh j = gifVar.j(i);
            if (j instanceof ekh) {
                ekh ekhVar = (ekh) j;
                cwx cwxVar2 = ekhVar.h;
                if (ekhVar.f15702a == 0 && (cwxVar2.m() || (cwxVar2 instanceof aoe))) {
                    cwxVar = cwx.ag;
                } else {
                    cwxVar2.getClass();
                    if (cwxVar2 instanceof cff) {
                        if (!j.l.g(csv.EXPLICIT_PRIMITIVE_TYPE)) {
                            cwxVar = cwx.an;
                        }
                    }
                    cwxVar = j.h;
                }
            } else if (j instanceof gks) {
                cwxVar = j.j();
            } else {
                if (!(j instanceof cly)) {
                    throw new gck("Unknown var type for: " + j);
                }
                eek eekVar = ((cly) j).f13104a;
                int i2 = dfm.f14094a[eekVar.ah.ordinal()];
                if (i2 == 1 || i2 == 2) {
                    cwxVar = (cwx) ((adz) eekVar).f10070a;
                } else {
                    gks gksVar = eekVar.ai;
                    cwxVar = gksVar != null ? gksVar.j() : j.h;
                }
            }
            arrayList.add(cwxVar);
            i++;
        }
        return arrayList;
    }

    public final ArrayList e(ArrayList arrayList, ArrayList arrayList2, Function function) {
        ArrayList arrayList3 = new ArrayList(arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ebp ebpVar = (ebp) it.next();
            List f2 = ebpVar.f();
            int size = f2.size();
            if (size == arrayList2.size()) {
                cwm cwmVar = this.f16024a.u.f12545e;
                int i = 0;
                while (true) {
                    if (i >= size) {
                        arrayList3.add(ebpVar);
                        break;
                    }
                    if (!((Boolean) function.apply(cwmVar.h((cwx) arrayList2.get(i), (cwx) f2.get(i)))).booleanValue()) {
                        break;
                    }
                    i++;
                }
            }
        }
        return arrayList3;
    }

    public final ebp g(ebp ebpVar, Map map) {
        cwx ac;
        List f2 = ebpVar.f();
        int size = f2.size();
        ArrayList arrayList = new ArrayList(size);
        boolean z = false;
        for (int i = 0; i < size; i++) {
            cwx cwxVar = (cwx) f2.get(i);
            if (cwxVar == null) {
                throw new gck("Null arg type in " + ebpVar + " at: " + i + " in: " + f2);
            }
            if (cwxVar.bn()) {
                cwx ac2 = this.f16024a.o.ac(cwxVar, map);
                if (ac2 == null || ac2.equals(cwxVar)) {
                    ac2 = (cwx) ebpVar.j().f11075c.get(i);
                }
                arrayList.add(ac2);
                z = true;
            } else {
                arrayList.add(cwxVar);
            }
        }
        cwx g2 = ebpVar.g();
        if (g2.bn() && ((ac = this.f16024a.o.ac(g2, map)) == null || ac.bn())) {
            g2 = ebpVar.j().f11079g;
            z = true;
        }
        if (!z) {
            return ebpVar;
        }
        dgf dgfVar = new dgf(ebpVar);
        dgfVar.k = arrayList;
        dgfVar.o = g2;
        return dgfVar;
    }

    @Override // g.pj
    public final void h(dwg dwgVar) {
        this.f16024a = dwgVar;
    }

    public final boolean i(ebp ebpVar, ArrayList arrayList, ArrayList arrayList2) {
        if (!arrayList.isEmpty()) {
            ArrayList e2 = e(arrayList, arrayList2, new gpn(14));
            if (e2.size() == 1) {
                return ((ebp) e2.get(0)).equals(ebpVar);
            }
            ArrayList e3 = e(arrayList, arrayList2, new gpn(15));
            if (e3.size() == 1) {
                return ((ebp) e3.get(0)).equals(ebpVar);
            }
        }
        return false;
    }

    @Override // g.pj
    public final void j(hed hedVar) {
        if (hedVar.ar) {
            return;
        }
        for (fza fzaVar : hedVar.ak) {
            if (!fzaVar.l.g(csv.DONT_GENERATE)) {
                Iterator it = fzaVar.ac.iterator();
                while (it.hasNext()) {
                    eek eekVar = (eek) it.next();
                    if (!eekVar.l.g(csv.DONT_GENERATE)) {
                        eekVar._be(new esv(this, 8, hedVar));
                    }
                }
            }
        }
    }
}
