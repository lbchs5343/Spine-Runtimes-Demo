package g;

import j$.lang.Iterable;
import j$.util.Collection;
import j$.util.Comparator;
import j$.util.List;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class vr extends pj implements avy {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20189a;

    public /* synthetic */ vr(int i) {
        this.f20189a = i;
    }

    public static gks b(gsh gshVar) {
        gshVar.getClass();
        if (gshVar instanceof gks) {
            return g(((gks) gshVar).aa());
        }
        if (gshVar instanceof cly) {
            return g(((cly) gshVar).f13104a);
        }
        return null;
    }

    public static void c(gxv gxvVar) {
        hed hedVar = (hed) gxvVar.f18983g;
        try {
            Iterable.b.forEach((ArrayList) gxvVar.f18978b, new abs(2));
            eln elnVar = (eln) gxvVar.f18977a;
            if (elnVar != null) {
                ((eln) gxvVar.h).f11698d.x().remove(elnVar);
                elnVar.h.w(csv.REMOVE);
            }
            gks gksVar = (gks) gxvVar.f18982f;
            if (gksVar != null) {
                for (vm vmVar : gksVar.f18326a.u().f15633f) {
                    eek eekVar = vmVar.f20177c.ae;
                    if (eekVar != null) {
                        eekVar.w(csv.REMOVE);
                    }
                    Iterator it = vmVar.f20178d.iterator();
                    while (it.hasNext()) {
                        eek eekVar2 = ((gks) it.next()).ae;
                        if (eekVar2 != null) {
                            eekVar2.w(csv.REMOVE);
                        }
                    }
                    hedVar.at.remove(vmVar);
                }
            }
            fpd.g(hedVar);
        } catch (Exception e2) {
            e = e2;
            hedVar.bt("Failed to clean up code after switch over string restore", e);
        } catch (StackOverflowError e3) {
            e = e3;
            hedVar.bt("Failed to clean up code after switch over string restore", e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00f7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x005f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean d(gxv gxvVar) {
        Integer num;
        eek eekVar;
        gks y;
        eek aa;
        Integer num2;
        int i;
        hed hedVar = (hed) gxvVar.f18983g;
        eln elnVar = (eln) gxvVar.h;
        List x = elnVar.f11698d.x();
        int indexOf = x.indexOf(elnVar);
        amj amjVar = (indexOf == -1 || (i = indexOf + 1) >= x.size()) ? null : (amj) x.get(i);
        if (amjVar instanceof eln) {
            eln elnVar2 = (eln) amjVar;
            fza fzaVar = elnVar2.h;
            hay hayVar = hay.SWITCH;
            eek s = ffb.s(fzaVar);
            if (s == null || s.ah != hayVar) {
                s = null;
            }
            if (s != null) {
                gsh j = s.j(0);
                j.getClass();
                if (j instanceof gks) {
                    gks gksVar = (gks) s.j(0);
                    ArrayList arrayList = (ArrayList) gxvVar.f18981e;
                    Iterator it = arrayList.iterator();
                    int i2 = 0;
                    while (it.hasNext()) {
                        arn arnVar = (arn) it.next();
                        amj amjVar2 = arnVar.f10723c;
                        if (amjVar2 != null) {
                            ArrayList arrayList2 = new ArrayList();
                            buj.bb(hedVar, new fdl(1, new efe(2, arrayList2)), amjVar2);
                            Collection.b.removeIf(arrayList2, new brj(22));
                            if (arrayList2.size() == 1) {
                                aa = (eek) arrayList2.get(0);
                            }
                            aa = null;
                        } else {
                            fza fzaVar2 = arnVar.f10724d;
                            if (fzaVar2 != null) {
                                gsh j2 = s.j(0);
                                j2.getClass();
                                if ((j2 instanceof gks) && (eekVar = ((gks) j2).f18326a.f20177c.ae) != null && eekVar.ah == hay.PHI && (y = ((abi) eekVar).y(fzaVar2)) != null) {
                                    aa = y.aa();
                                }
                            }
                            aa = null;
                        }
                        if (aa != null && aa.aj.size() == 1) {
                            Object f2 = ack.f(hedVar.am.f12631ab, aa.j(0));
                            if ((f2 instanceof ekh) && gksVar.y(aa.ai)) {
                                num2 = Integer.valueOf((int) ((ekh) f2).f15702a);
                                if (num2 == null) {
                                    arnVar.f10721a = num2.intValue();
                                    i2++;
                                }
                            }
                        }
                        num2 = null;
                        if (num2 == null) {
                        }
                    }
                    if (i2 == 0) {
                        return true;
                    }
                    if (i2 == arrayList.size()) {
                        List.b.sort(arrayList, Comparator.a.comparingInt(new dbm(15)));
                        HashMap hashMap = new HashMap(arrayList.size());
                        Iterator it2 = arrayList.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                ArrayList arrayList3 = new ArrayList();
                                Iterator it3 = elnVar2.i.iterator();
                                while (it3.hasNext()) {
                                    adk adkVar = (adk) it3.next();
                                    java.util.List list = adkVar.f10047a;
                                    amj amjVar3 = adkVar.f10048b;
                                    adk adkVar2 = null;
                                    for (Object obj : list) {
                                        if (obj instanceof Integer) {
                                            num = (Integer) obj;
                                        } else {
                                            if (obj instanceof hcd) {
                                                ghr ghrVar = (ghr) ((hcd) obj).l.k(ao.x);
                                                if (ghrVar != null && ghrVar.f18175b == dnd.ENCODED_INT) {
                                                    num = (Integer) ghrVar.f18176f;
                                                }
                                            }
                                            num = null;
                                        }
                                        if (num != null) {
                                            arn arnVar2 = (arn) hashMap.remove(num);
                                            if (arnVar2 != null) {
                                                ArrayList arrayList4 = arnVar2.f10722b;
                                                if (adkVar2 == null) {
                                                    adkVar2 = new adk(new ArrayList(arrayList4), amjVar3);
                                                } else {
                                                    adkVar2.f10047a.addAll(arrayList4);
                                                }
                                            }
                                        } else if (obj == eln.f15770g) {
                                            Iterator it4 = hashMap.entrySet().iterator();
                                            while (it4.hasNext()) {
                                                arn arnVar3 = (arn) ((Map.Entry) it4.next()).getValue();
                                                if (adkVar2 == null) {
                                                    adkVar2 = new adk(new ArrayList(arnVar3.f10722b), amjVar3);
                                                } else {
                                                    adkVar2.f10047a.addAll(arnVar3.f10722b);
                                                }
                                                it4.remove();
                                            }
                                            if (adkVar2 == null) {
                                                adkVar2 = new adk(new ArrayList(), amjVar3);
                                            }
                                            adkVar2.f10047a.add(eln.f15770g);
                                        }
                                    }
                                    arrayList3.add(adkVar2);
                                }
                                gxvVar.f18977a = elnVar2;
                                gxvVar.f18982f = gksVar;
                                gxvVar.i = arrayList3;
                                return true;
                            }
                            arn arnVar4 = (arn) it2.next();
                            if (((arn) hashMap.put(Integer.valueOf(arnVar4.f10721a), arnVar4)) != null) {
                                break;
                            }
                            buj.bb(hedVar, new fdl(1, new agx(21, gxvVar)), arnVar4.f10723c);
                        }
                    }
                }
            }
        }
        return false;
    }

    public static IdentityHashMap e(hed hedVar, vm vmVar) {
        IdentityHashMap identityHashMap = new IdentityHashMap(vmVar.f20178d.size() - 1);
        Iterator it = vmVar.f20178d.iterator();
        while (it.hasNext()) {
            eek eekVar = ((gks) it.next()).ae;
            if (eekVar != null && eekVar.ah == hay.INVOKE) {
                hdc hdcVar = (hdc) eekVar;
                if (hdcVar.ad.h.equals("java.lang.String.equals(Ljava/lang/Object;)Z")) {
                    Object f2 = ack.f(hedVar.am.f12631ab, hdcVar.j(1));
                    if (f2 instanceof String) {
                        identityHashMap.put(eekVar, (String) f2);
                    }
                }
            }
        }
        return identityHashMap;
    }

    public static gks g(eek eekVar) {
        gsh aa;
        if (eekVar == null || eekVar.ah != hay.INVOKE) {
            return null;
        }
        hdc hdcVar = (hdc) eekVar;
        if (hdcVar.ad.h.equals("java.lang.String.hashCode()I") && (aa = hdcVar.aa()) != null && (aa instanceof gks)) {
            return (gks) aa;
        }
        return null;
    }

    @Override // g.avy
    public boolean _bq(hed hedVar, cfm cfmVar) {
        gks b2;
        if (cfmVar instanceof eln) {
            eln elnVar = (eln) cfmVar;
            try {
                fza fzaVar = elnVar.h;
                ArrayList arrayList = elnVar.i;
                hay hayVar = hay.SWITCH;
                eek s = ffb.s(fzaVar);
                if (s == null || s.ah != hayVar) {
                    s = null;
                }
                if (s != null && (b2 = b(s.j(0))) != null) {
                    int size = arrayList.size();
                    int i = Collection.b.stream(arrayList).anyMatch(new brj(21)) ? size - 1 : size;
                    vm vmVar = b2.f18326a;
                    if (vmVar.f20178d.size() - 1 >= i) {
                        IdentityHashMap e2 = e(hedVar, vmVar);
                        if (e2.size() >= i) {
                            gxv gxvVar = new gxv(hedVar, elnVar);
                            gxvVar.f18979c = e2;
                            gxvVar.f18981e = new ArrayList(size);
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                if (!i(gxvVar, (adk) it.next())) {
                                    hedVar.bu("Failed to restore switch over string. Please report as a decompilation issue");
                                    return false;
                                }
                            }
                            if (!d(gxvVar)) {
                                hedVar.bu("Failed to restore switch over string. Please report as a decompilation issue");
                                return false;
                            }
                            cfm cfmVar2 = elnVar.f11698d;
                            eln elnVar2 = new eln(cfmVar2, elnVar.h);
                            Iterator it2 = ((ArrayList) gxvVar.i).iterator();
                            while (it2.hasNext()) {
                                adk adkVar = (adk) it2.next();
                                elnVar2.i.add(new adk(Collections.unmodifiableList(adkVar.f10047a), adkVar.f10048b));
                            }
                            if (!cfmVar2.f(elnVar, elnVar2)) {
                                hedVar.bu("Failed to restore switch over string. Please report as a decompilation issue");
                                return false;
                            }
                            c(gxvVar);
                            s.f(s.j(0), b2.b());
                            return true;
                        }
                    }
                }
            } catch (Exception e3) {
                e = e3;
                hedVar.bt("Failed to restore switch over string. Please report as a decompilation issue", e);
                return false;
            } catch (StackOverflowError e4) {
                e = e4;
                hedVar.bt("Failed to restore switch over string. Please report as a decompilation issue", e);
                return false;
            }
        }
        return false;
    }

    @Override // g.pj
    public String f() {
        switch (this.f20189a) {
            case 1:
                return "SwitchBreakVisitor";
            default:
                return super.f();
        }
    }

    public boolean i(gxv gxvVar, adk adkVar) {
        java.util.List list = adkVar.f10047a;
        boolean z = list.size() == 1 && list.get(0) == eln.f15770g;
        amj amjVar = adkVar.f10048b;
        if (z) {
            new ArrayList();
            return true;
        }
        buj.bb((hed) gxvVar.f18983g, new fdl(3, new ry(this, new AtomicBoolean(false), gxvVar)), amjVar);
        return !r0.get();
    }

    @Override // g.pj
    public final void j(hed hedVar) {
        switch (this.f20189a) {
            case 0:
                if (ddx.b(hedVar, fuu.SWITCH)) {
                    buj.ax(hedVar, this);
                    return;
                }
                return;
            default:
                if (ddx.b(hedVar, fuu.SWITCH)) {
                    int i = 4;
                    buj.bb(hedVar, new fdl(i, new cqk(1)), hedVar.ao);
                    buj.bb(hedVar, new fdl(i, new cqk(2)), hedVar.ao);
                    csv csvVar = csv.REQUEST_IF_REGION_OPTIMIZE;
                    if (hedVar.l.g(csvVar)) {
                        try {
                            eak.af(hedVar);
                            hedVar.v(csvVar);
                            return;
                        } catch (Throwable th) {
                            hedVar.v(csv.REQUEST_IF_REGION_OPTIMIZE);
                            throw th;
                        }
                    }
                    return;
                }
                return;
        }
    }
}
