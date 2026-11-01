package g;

import j$.lang.Iterable;
import j$.util.Collection;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public final /* synthetic */ class ry implements Predicate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19938a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f19939b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f19940c;

    public /* synthetic */ ry(hed hedVar, fza fzaVar) {
        this.f19938a = 2;
        this.f19940c = hedVar;
        this.f19939b = fzaVar;
    }

    public /* synthetic */ ry(vr vrVar, AtomicBoolean atomicBoolean, gxv gxvVar) {
        this.f19938a = 3;
        this.f19939b = atomicBoolean;
        this.f19940c = gxvVar;
    }

    public /* synthetic */ ry(Object obj, int i, Object obj2) {
        this.f19938a = i;
        this.f19939b = obj;
        this.f19940c = obj2;
    }

    public final /* synthetic */ Predicate and(Predicate predicate) {
        int i = this.f19938a;
        return j$.util.function.m.$default$and(this, predicate);
    }

    public final /* synthetic */ Predicate negate() {
        switch (this.f19938a) {
        }
        return j$.util.function.m.$default$negate(this);
    }

    public final /* synthetic */ Predicate or(Predicate predicate) {
        int i = this.f19938a;
        return j$.util.function.m.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        boolean z;
        int i = this.f19938a;
        fza fzaVar = null;
        r2 = null;
        arn arnVar = null;
        Object obj2 = this.f19940c;
        Object obj3 = this.f19939b;
        switch (i) {
            case 0:
                aea aeaVar = (aea) obj3;
                hed hedVar = (hed) obj2;
                aea aeaVar2 = (aea) obj;
                if (aeaVar2 == aeaVar) {
                    return false;
                }
                ArrayList arrayList = aeaVar2.f10082e;
                aeaVar.getClass();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    aeaVar.k(hedVar, (ve) it.next());
                }
                aeaVar2.f10084g = true;
                Iterable.b.forEach(aeaVar2.f10080c, new esk(14));
                return true;
            case 1:
                b.b.b bVar = (b.b.b) obj3;
                String str = (String) obj;
                int i2 = b.b.b.f353d;
                for (String str2 : ((LinkedHashMap) obj2).keySet()) {
                    if (str != null && str.startsWith(str2)) {
                        bVar.j.add(str2);
                        return false;
                    }
                }
                return true;
            case 2:
                hed hedVar2 = (hed) obj2;
                fza fzaVar2 = (fza) obj3;
                fza fzaVar3 = (fza) obj;
                List list = fzaVar3.f17685e;
                if (list.size() <= 1 || !Collection.b.stream(list).allMatch(new brj(16))) {
                    return false;
                }
                ArrayList arrayList2 = new ArrayList(list);
                ArrayList bg = ffb.bg(hedVar2, fzaVar3, false);
                eek eekVar = (eek) acw.am(fzaVar2.ac);
                if (eekVar != null && eekVar.ah == hay.JAVA_RET) {
                    gsh j = eekVar.j(0);
                    j.getClass();
                    if (j instanceof gks) {
                        int i3 = ((gks) j).f18327e;
                        eek bq = ffb.bq(fzaVar3);
                        if (bq != null && bq.ah == hay.MOVE && bq.ai.f18327e == i3) {
                            fzaVar3.ac.remove(0);
                        }
                    }
                }
                Iterable.b.forEach(arrayList2, new esk(23));
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    fza fzaVar4 = (fza) it2.next();
                    if (fzaVar == null) {
                        fzaVar = fzaVar4;
                    } else {
                        fza r = ffb.r(fzaVar4.f17684d, fzaVar3);
                        giq.l(fzaVar4, fzaVar3);
                        giq.l(fzaVar4, r);
                        ArrayList arrayList3 = new ArrayList(bg.size());
                        HashMap hashMap = new HashMap();
                        Iterator it3 = bg.iterator();
                        while (it3.hasNext()) {
                            fza fzaVar5 = (fza) it3.next();
                            fza i4 = giq.i(hedVar2, fzaVar5.y);
                            giq.c(fzaVar5, i4);
                            arrayList3.add(i4);
                            hashMap.put(fzaVar5, i4);
                        }
                        Iterator it4 = bg.iterator();
                        while (it4.hasNext()) {
                            fza fzaVar6 = (fza) it4.next();
                            fza fzaVar7 = (fza) hashMap.get(fzaVar6);
                            if (fzaVar7 == null) {
                                throw new gck("Copy blocks tree failed. Missing block for connection: " + fzaVar6);
                            }
                            for (Object obj4 : fzaVar6.f17684d) {
                                fza fzaVar8 = (fza) hashMap.get(obj4);
                                if (fzaVar8 == null) {
                                    throw new gck("Copy blocks tree failed. Missing block for connection: " + obj4);
                                }
                                giq.o(fzaVar7, fzaVar8);
                            }
                        }
                        fza fzaVar9 = (fza) arrayList3.get(bg.indexOf(fzaVar3));
                        fza fzaVar10 = (fza) arrayList3.get(bg.indexOf(fzaVar2));
                        giq.o(fzaVar4, fzaVar9);
                        giq.o(fzaVar10, r);
                    }
                }
                if (fzaVar != null) {
                    fza r2 = ffb.r(fzaVar.f17684d, fzaVar3);
                    giq.l(fzaVar, r2);
                    giq.o(fzaVar2, r2);
                }
                return true;
            default:
                AtomicBoolean atomicBoolean = (AtomicBoolean) obj3;
                gxv gxvVar = (gxv) obj2;
                ArrayList arrayList4 = (ArrayList) gxvVar.f18978b;
                cfm cfmVar = (cfm) obj;
                if (atomicBoolean.get()) {
                    return false;
                }
                if (cfmVar instanceof goe) {
                    goe goeVar = (goe) cfmVar;
                    eii eiiVar = goeVar.aa;
                    Objects.requireNonNull(eiiVar);
                    if (eiiVar.f15587a == ath.NOT) {
                        eiiVar = (eii) eiiVar.f15588b.get(0);
                        z = true;
                    } else {
                        z = false;
                    }
                    evf evfVar = eiiVar.f15589c;
                    if (evfVar != null) {
                        bgw bgwVar = (bgw) evfVar.f16224f;
                        gsh j2 = bgwVar.j(0);
                        j2.getClass();
                        String str3 = j2 instanceof cly ? (String) ((IdentityHashMap) gxvVar.f18979c).get(((cly) j2).f13104a) : null;
                        if (str3 != null) {
                            if (bgwVar.y == ges.NE && bgwVar.j(1).ap()) {
                                z = true;
                            }
                            if (bgwVar.y == ges.EQ && bgwVar.j(1).ar()) {
                                z = true;
                            }
                            arrayList4.add(bgwVar);
                            arrayList4.addAll(goeVar.f15618ab);
                            arnVar = new arn();
                            arnVar.f10722b.add(str3);
                            amj amjVar = z ? goeVar.f18486g : goeVar.h;
                            if (amjVar == null) {
                                arnVar.f10724d = (fza) evh.o(goeVar.f15618ab);
                            } else {
                                arnVar.f10723c = amjVar;
                            }
                        }
                    }
                    if (arnVar == null) {
                        atomicBoolean.set(true);
                        return false;
                    }
                    ((ArrayList) gxvVar.f18981e).add(arnVar);
                }
                return true;
        }
    }
}
