package g;

import j$.lang.Iterable;
import j$.util.Collection;
import j$.util.Map;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class aza extends pj {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f11099a = dsr.k(aza.class);

    public static boolean b(gjz gjzVar, ArrayList arrayList) {
        cfm cfmVar = gjzVar.f18287a;
        cih cihVar = gjzVar.f18288b;
        HashSet hashSet = new HashSet(arrayList);
        boolean z = false;
        for (amj amjVar : cfmVar.x()) {
            if (!z && amjVar == cihVar) {
                z = true;
            }
            if (z) {
                Collection.b.removeIf(hashSet, new egl(7, amjVar));
                if (hashSet.isEmpty()) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // g.pj
    public final void j(hed hedVar) {
        if (hedVar.ar || hedVar.at.isEmpty()) {
            return;
        }
        buj.bb(hedVar, new enz(5), hedVar.ao);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (vm vmVar : hedVar.at) {
            if (!vmVar.u().f15629b) {
                ((List) Map.b.computeIfAbsent(linkedHashMap, vmVar.u(), new gpn(20))).add(vmVar);
            }
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            ejb ejbVar = (ejb) entry.getKey();
            List list = (List) entry.getValue();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ejb u = ((vm) it.next()).u();
                ejbVar.getClass();
                if (u.f15631d) {
                    ejbVar.f15631d = true;
                }
                if (u.f15629b) {
                    ejbVar.f15629b = true;
                }
                if (u.f15628a) {
                    ejbVar.f15628a = true;
                }
            }
            if (list.size() > 1) {
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    ((vm) it2.next()).n(ejbVar);
                }
            }
            ejbVar.f15633f = list;
        }
        ArrayList arrayList = new ArrayList(linkedHashMap.keySet());
        if (arrayList.isEmpty()) {
            return;
        }
        Iterator it3 = arrayList.iterator();
        int i = 0;
        while (it3.hasNext()) {
            ejb ejbVar2 = (ejb) it3.next();
            cwx cwxVar = ejbVar2.f15632e;
            if (cwxVar == null) {
                ejbVar2.f15632e = cwx.ad;
                i++;
            } else {
                Iterable.b.forEach(ejbVar2.f15633f, new esv(hedVar, 9, cwxVar));
            }
        }
        if (i != 0) {
            hedVar.bs("Unknown variable types count: " + i);
        }
        cmf cmfVar = new cmf();
        buj.bb(hedVar, cmfVar, hedVar.ao);
        LinkedHashMap linkedHashMap2 = cmfVar.f13109b;
        if (linkedHashMap2.isEmpty()) {
            return;
        }
        LinkedHashMap linkedHashMap3 = new LinkedHashMap(arrayList.size());
        Iterator it4 = arrayList.iterator();
        while (it4.hasNext()) {
            ejb ejbVar3 = (ejb) it4.next();
            ArrayList arrayList2 = new ArrayList();
            Iterator it5 = ejbVar3.f15633f.iterator();
            while (it5.hasNext()) {
                bjo bjoVar = (bjo) linkedHashMap2.get((vm) it5.next());
                if (bjoVar != null) {
                    arrayList2.add(bjoVar);
                }
            }
            linkedHashMap3.put(ejbVar3, evh.f(arrayList2));
        }
        for (Map.Entry entry2 : linkedHashMap3.entrySet()) {
            ejb ejbVar4 = (ejb) entry2.getKey();
            List<bjo> list2 = (List) entry2.getValue();
            if (!ejbVar4.f15631d) {
                ArrayList arrayList3 = new ArrayList(3);
                ArrayList arrayList4 = new ArrayList(3);
                for (bjo bjoVar2 : list2) {
                    arrayList3.addAll(bjoVar2.f11709b);
                    arrayList4.addAll(bjoVar2.f11710c);
                }
                if (!arrayList3.isEmpty() || !arrayList4.isEmpty()) {
                    if (!arrayList3.isEmpty()) {
                        Iterator it6 = list2.iterator();
                        while (true) {
                            if (!it6.hasNext()) {
                                break;
                            }
                            bjo bjoVar3 = (bjo) it6.next();
                            Iterator it7 = bjoVar3.f11709b.iterator();
                            while (it7.hasNext()) {
                                gjz gjzVar = (gjz) it7.next();
                                cfm cfmVar = gjzVar.f18287a;
                                if (cfmVar instanceof cab) {
                                    Iterator it8 = arrayList3.iterator();
                                    while (it8.hasNext()) {
                                        if (!gs.ag(cfmVar, ((gjz) it8.next()).f18287a)) {
                                            break;
                                        }
                                    }
                                }
                                if (!((lh) cfmVar).l.g(csv.ELSE_IF_CHAIN) && b(gjzVar, arrayList3) && b(gjzVar, arrayList4)) {
                                    vm vmVar2 = bjoVar3.f11708a;
                                    gks gksVar = vmVar2.f20177c;
                                    eek eekVar = gksVar.ae;
                                    if (eekVar != null) {
                                        if (!eekVar.l.g(csv.WRAPPED) && eekVar.ah != hay.PHI && gksVar.equals(eekVar.ai)) {
                                            eekVar.w(csv.DECLARE_VAR);
                                            vmVar2.u().f15631d = true;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    eys eysVar = hedVar.ao;
                    if (ejbVar4.f15631d) {
                        f11099a.p(ejbVar4, "Try to declare already declared variable: {}");
                    } else {
                        cug cugVar = (cug) eysVar.l.k(acq.l);
                        if (cugVar == null) {
                            cugVar = new cug();
                            eysVar.m(cugVar);
                        }
                        cugVar.f13526a.add(ejbVar4);
                        ejbVar4.f15631d = true;
                    }
                }
            }
        }
    }
}
