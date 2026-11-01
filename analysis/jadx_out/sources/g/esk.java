package g;

import j$.lang.Iterable;
import j$.util.Collection;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final /* synthetic */ class esk implements Consumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16088a;

    public /* synthetic */ esk(int i) {
        this.f16088a = i;
    }

    public /* synthetic */ esk(dzh dzhVar) {
        this.f16088a = 21;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void n(Object obj) {
        gks gksVar;
        vm vmVar;
        switch (this.f16088a) {
            case 0:
                Collection.b.removeIf(((Map) obj).entrySet(), new bev(r2));
                return;
            case 1:
                ((fza) obj).ad();
                return;
            case 2:
                Collection.b.removeIf(((guv) obj).f18788b, new bev(4));
                return;
            case 3:
                fza fzaVar = (fza) obj;
                fzaVar.u(acq.at);
                fzaVar.v(csv.LOOP_START);
                fzaVar.v(csv.LOOP_END);
                fzaVar.f17687g = null;
                fzaVar.f17683ab = null;
                fzaVar.i = null;
                fzaVar.f17686f.clear();
                return;
            case 4:
                fza fzaVar2 = (fza) obj;
                Iterable.b.forEach(fzaVar2.f17684d, new dmt(fzaVar2, r3));
                return;
            case 5:
                giq.g((fza) obj);
                return;
            case 6:
                fza fzaVar3 = (fza) obj;
                eek s = ffb.s(fzaVar3);
                if (s instanceof dog) {
                    ((dog) s).ac(fzaVar3);
                    return;
                }
                return;
            case 7:
                acq acqVar = acq.h;
                hed hedVar = (hed) obj;
                boolean z = hedVar.ar;
                cci cciVar = hedVar.am;
                if (z) {
                    return;
                }
                if (!hedVar.l.g(csv.DONT_GENERATE) && hedVar.ax.bb()) {
                    dwg dwgVar = cciVar.f12631ab;
                    if (dwgVar.i.as) {
                        List list = hedVar.ak;
                        ArrayList arrayList = new ArrayList();
                        Iterable.b.forEach(list, new efe(r3, arrayList));
                        if (arrayList.size() == 1) {
                            eek eekVar = (eek) arrayList.get(0);
                            if (eekVar.ah == hay.RETURN) {
                                gsh j = eekVar.j(0);
                                j.getClass();
                                if (j instanceof cly) {
                                    eekVar = ((cly) j).f13104a;
                                }
                            }
                            if (eekVar.ah == hay.INVOKE) {
                                hdc hdcVar = (hdc) eekVar;
                                if (hdcVar.f19257ab != eqp.SUPER) {
                                    ayu ayuVar = hdcVar.ad;
                                    ayu ayuVar2 = hedVar.al;
                                    hed x = dwgVar.x(ayuVar);
                                    if (x != null) {
                                        ayu ayuVar3 = x.al;
                                        gqc gqcVar = x.ax;
                                        if (!gqcVar.be() && ayuVar.f11075c.size() == ayuVar2.f11075c.size() && cciVar.equals(x.am)) {
                                            Iterator it = eekVar.aj.iterator();
                                            while (it.hasNext()) {
                                                if (!eak.ay((gsh) it.next())) {
                                                }
                                            }
                                            if (!gqcVar.an()) {
                                                dwgVar.i.getClass();
                                                fem.c(x, 1);
                                            }
                                            String str = ayuVar2.f11073a;
                                            if (!Objects.equals(ayuVar3.f11073a, str)) {
                                                fpr fprVar = (fpr) x.l.k(acqVar);
                                                if (fprVar != null) {
                                                    Iterator it2 = fprVar.f17210f.iterator();
                                                    while (it2.hasNext()) {
                                                        ((hed) it2.next()).al.f11073a = str;
                                                    }
                                                } else {
                                                    ayuVar3.f11073a = str;
                                                }
                                                awl awlVar = (awl) x.l.k(acq.ad);
                                                if (awlVar == null) {
                                                    awlVar = new awl();
                                                    awlVar.f10974a = "";
                                                    x.m(awlVar);
                                                }
                                                awlVar.b("merged with bridge method [inline-methods]");
                                            }
                                            x.m(new ghf(hedVar));
                                            x.q(hedVar, acqVar);
                                            x.bw("Method merged with bridge method: " + ayuVar2.f11077e);
                                            hedVar.w(csv.DONT_GENERATE);
                                            return;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    if (hedVar.bk()) {
                        if (!hedVar.l.g(csv.METHOD_CANDIDATE_FOR_INLINE)) {
                            if (!hedVar.l.g(csv.ANONYMOUS_CONSTRUCTOR)) {
                                return;
                            }
                        }
                        eek t = ffb.t(hedVar);
                        if (t != null) {
                            List<gks> az = hedVar.az();
                            boolean z2 = false;
                            for (gks gksVar2 : az) {
                                cwx j2 = gksVar2.j();
                                if (j2.m()) {
                                    cci w = dwgVar.w(j2);
                                    if (w == null) {
                                        ve h = ve.h(dwgVar, j2);
                                        if (h.f20148c != null && cciVar.ak.m().startsWith(h.f20148c.f20147b)) {
                                            gksVar2.w(csv.REMOVE);
                                            z2 = true;
                                        }
                                    } else {
                                        if (!w.l.g(csv.DONT_GENERATE) && !eak.p(w)) {
                                        }
                                        gksVar2.w(csv.REMOVE);
                                        z2 = true;
                                    }
                                }
                            }
                            if (z2 && t.ah == hay.CONSTRUCTOR) {
                                eew eewVar = (eew) t;
                                if (eewVar.y != dkz.THIS || az.isEmpty()) {
                                    return;
                                }
                                if (((gks) az.get(0)).j().equals(cciVar.ai.ak.f20149d)) {
                                    cse.b(hedVar, 0);
                                }
                                int size = az.size();
                                while (r3 < size) {
                                    vm vmVar2 = ((gks) az.get(r3)).f18326a;
                                    if (vmVar2 != null && vmVar2.f20178d.size() == 0) {
                                        cse.b(hedVar, r3);
                                    }
                                    r3++;
                                }
                                hed x2 = dwgVar.x(eewVar.f15409a);
                                if (x2 != null) {
                                    hedVar.m(new ghf(x2));
                                    hedVar.w(csv.DONT_GENERATE);
                                    int i = cje.f12969a;
                                    List unmodifiableList = Collections.unmodifiableList(x2.au);
                                    List unmodifiableList2 = Collections.unmodifiableList(hedVar.au);
                                    if (unmodifiableList.isEmpty()) {
                                        unmodifiableList = unmodifiableList2;
                                    } else if (!unmodifiableList2.isEmpty()) {
                                        TreeSet treeSet = new TreeSet(unmodifiableList);
                                        treeSet.addAll(unmodifiableList2);
                                        unmodifiableList = new ArrayList(treeSet);
                                    }
                                    unmodifiableList.remove(hedVar);
                                    x2.bh(unmodifiableList);
                                    hedVar.bh(Collections.EMPTY_LIST);
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            case 8:
                hed hedVar2 = (hed) obj;
                if (hedVar2.az().isEmpty()) {
                    gqc gqcVar2 = hedVar2.ax;
                    boolean z3 = hedVar2.bk() && gqcVar2.an();
                    r2 = (hedVar2.al.m() && gqcVar2.be()) ? 1 : 0;
                    if ((z3 || r2 != 0) && ffb.ad(hedVar2.ak)) {
                        if (r2 != 0) {
                            hedVar2.w(csv.DONT_GENERATE);
                            return;
                        }
                        if (hedVar2.bd()) {
                            cci cciVar2 = hedVar2.am;
                            cciVar2.av();
                            for (hed hedVar3 : cciVar2.aj) {
                                if (hedVar3 != hedVar2 && hedVar3.bk() && !hedVar3.bd()) {
                                    return;
                                }
                            }
                            if (hedVar2.l.j(ao.q)) {
                                return;
                            }
                            hedVar2.w(csv.DONT_GENERATE);
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            case 9:
                ((cci) obj).ax();
                return;
            case 10:
                ((hed) obj).be();
                return;
            case 11:
                ((cci) obj).bh();
                return;
            case 12:
                ((hcd) obj).p();
                return;
            case 13:
                cqv.f13349b.v((eyc) obj, "Loading dex: {}");
                return;
            case 14:
                ((fza) obj).w(csv.REMOVE);
                return;
            case 15:
                ((hed) obj).w(csv.DISABLE_BLOCKS_LOCK);
                return;
            case 16:
                ((hed) obj).v(csv.DONT_GENERATE);
                return;
            case 17:
                ((fza) obj).w(csv.ADDED_TO_REGION);
                return;
            case 18:
                gsh gshVar = (gsh) obj;
                gshVar.getClass();
                if (!(gshVar instanceof gks) || (vmVar = (gksVar = (gks) gshVar).f18326a) == null) {
                    return;
                }
                vmVar.v(gksVar);
                gksVar.f18326a = null;
                return;
            case 19:
                fza fzaVar4 = (fza) obj;
                fzaVar4.getClass();
                try {
                    List list2 = fzaVar4.f17684d;
                    List f2 = evh.f(list2);
                    fzaVar4.f17684d = f2;
                    List list3 = fzaVar4.z;
                    if (list2 != list3) {
                        f2 = evh.f(list3);
                    }
                    fzaVar4.z = f2;
                    fzaVar4.f17685e = evh.f(fzaVar4.f17685e);
                    fzaVar4.f17686f = evh.f(fzaVar4.f17686f);
                    if (fzaVar4.i != null) {
                        return;
                    }
                    throw new gck("Dominance frontier not set for block: " + fzaVar4);
                } catch (Exception e2) {
                    throw new gck("Failed to lock block: " + fzaVar4, e2);
                }
            case 20:
                gsh gshVar2 = (gsh) obj;
                gshVar2.w(csv.DONT_INLINE);
                if (gshVar2 instanceof gks) {
                    ((gks) gshVar2).f18326a.u().f15628a = true;
                    return;
                }
                return;
            case 21:
                ((fgh) obj).getClass();
                throw null;
            case 22:
                eek eekVar2 = (eek) obj;
                switch (fws.f17534a[eekVar2.ah.ordinal()]) {
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                        return;
                    default:
                        for (gsh gshVar3 : eekVar2.aj) {
                            gshVar3.getClass();
                            if ((gshVar3 instanceof ekh) && gshVar3.j() != cwx.an) {
                                gshVar3.w(csv.EXPLICIT_PRIMITIVE_TYPE);
                            }
                        }
                        return;
                }
            case 23:
                acw.am(((fza) obj).ac);
                return;
            case 24:
                eak.al((gks) obj);
                return;
            case 25:
                bls.b((cmy) obj, false);
                return;
            case 26:
                bls.b((cmy) obj, true);
                return;
            case 27:
                bls.e((cmy) obj, false);
                return;
            case 28:
                bls.e((cmy) obj, true);
                return;
            default:
                cmy cmyVar = (cmy) obj;
                int i2 = 251 - cmyVar.f13153c;
                int d2 = bls.d(cmyVar, cmyVar.f13152b.ai());
                fwv fwvVar = fwv.SAME_FRAME;
                dl dlVar = new dl(d2);
                dlVar.f14345c = 0;
                dl dlVar2 = cmyVar.f13154d;
                dlVar.f14343a = (dlVar2 != null ? dlVar2.f14343a : 0) - i2;
                cmyVar.f13151a = dlVar;
                return;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.f16088a;
        return j$.util.function.j.$default$andThen(this, consumer);
    }
}
