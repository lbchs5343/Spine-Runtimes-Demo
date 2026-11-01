package g;

import j$.lang.Iterable;
import j$.util.Collection;
import j$.util.stream.Collectors;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final /* synthetic */ class agx implements Consumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10199a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f10200b;

    public /* synthetic */ agx(int i, Object obj) {
        this.f10199a = i;
        this.f10200b = obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0238 A[SYNTHETIC] */
    @Override // java.util.function.Consumer
    /* renamed from: accept */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void n(Object obj) {
        int c2;
        cci ae;
        glh glhVar;
        cwx cwxVar;
        fog fiqVar;
        fog fiqVar2;
        ebp r;
        int i = this.f10199a;
        int i2 = 4;
        cci cciVar = null;
        Object obj2 = this.f10200b;
        switch (i) {
            case 0:
                ((buz) obj2).k((cci) obj);
                break;
            case 1:
                ((Map) obj).remove((fky) obj2);
                break;
            case 2:
                eue eueVar = (eue) obj2;
                ((Map) obj).put(eueVar.d(), eueVar);
                break;
            case 3:
                Iterable.b.forEach((List) obj2, new agx(i2, (Map) obj));
                break;
            case 4:
                eue eueVar2 = (eue) obj;
                ((Map) obj2).put(eueVar2.d(), eueVar2);
                break;
            case 5:
                ((fon) obj2).c((fza) obj);
                break;
            case 6:
                ((aea) obj2).f10080c.add((fza) obj);
                break;
            case 7:
                ((HashSet) ((cxc) obj2).f13671a).add((gks) obj);
                break;
            case 8:
                ((bcc) obj2).k((cci) obj);
                break;
            case 9:
                ((hdc) obj2)._an((gsh) obj);
                break;
            case 10:
                String str = (String) obj2;
                epk epkVar = (gsh) obj;
                if (epkVar instanceof ehh) {
                    ((ehh) epkVar).c(str);
                    break;
                }
                break;
            case 11:
                gez gezVar = (gez) obj2;
                gezVar.getClass();
                gezVar.f18010g = ((Boolean) obj).booleanValue();
                break;
            case 12:
                ((eii) obj).g((Consumer) obj2);
                break;
            case 13:
                ((Set) obj2).add((fza) obj);
                break;
            case 14:
                ejb ejbVar = (ejb) obj2;
                vm vmVar = (vm) obj;
                if (vmVar.f20176b != null) {
                    ejb u = vmVar.u();
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
                vmVar.n(ejbVar);
                break;
            case 15:
                LinkedHashSet linkedHashSet = (LinkedHashSet) obj2;
                vm vmVar2 = ((gks) ((gsh) obj)).f18326a;
                if (linkedHashSet.add(vmVar2)) {
                    eak.ae(vmVar2.x(), linkedHashSet);
                    break;
                }
                break;
            case 16:
                ((Consumer) obj).n((gay) obj2);
                break;
            case 17:
                fqt fqtVar = (fqt) obj;
                ((HashMap) obj2).put(fqtVar, fqtVar);
                break;
            case 18:
                pj pjVar = (pj) obj;
                ((IdentityHashMap) ((dzh) obj2).f15122g).put(pjVar, pjVar.f());
                break;
            case 19:
                gkk gkkVar = (gkk) obj2;
                cci cciVar2 = (cci) obj;
                try {
                    gkk.c(cciVar2);
                } catch (Exception | StackOverflowError e2) {
                    cciVar2.getClass();
                    dcj.d(cciVar2, "Anonymous visitor error", e2);
                }
                Iterable.b.forEach(cciVar2.i, new agx(19, gkkVar));
                break;
            case 20:
                dwg dwgVar = (dwg) obj2;
                Map.Entry entry = (Map.Entry) obj;
                dwgVar.getClass();
                ve veVar = (ve) entry.getKey();
                List<cci> list = (List) entry.getValue();
                dba dbaVar = asq.f10757a;
                int i3 = -1;
                for (cci cciVar3 : list) {
                    if (cciVar == null || ((c2 = asq.c(cciVar3.x)) != -1 && (i3 == -1 || c2 < i3))) {
                        i3 = asq.c(cciVar3.x);
                        cciVar = cciVar3;
                    }
                }
                dwgVar.f14935g.put(veVar, cciVar);
                dwgVar.n.put(cciVar.bn(), cciVar);
                String str2 = cciVar.x;
                String str3 = (String) Collection.b.stream(list).map(new gpn(27)).sorted().collect(Collectors.joining("\n  "));
                dwg.f14929a.q("Found duplicated class: {}, count: {}, sources:\n  {}\n Keep class with source: {}, others will be removed.", veVar, Integer.valueOf(list.size()), str3, str2);
                cciVar.bu("Classes with same name are omitted, all sources:\n  " + str3 + '\n');
                break;
            case 21:
                ((ArrayList) ((gxv) obj2).f18978b).add((cih) obj);
                break;
            case 22:
                ((dwk) obj2).au((eek) obj);
                break;
            case 23:
                guv guvVar = (guv) obj2;
                guvVar.getClass();
                ((aea) obj).j = guvVar;
                break;
            case 24:
                mo moVar = (mo) obj2;
                vm vmVar3 = (vm) obj;
                ffr ffrVar = vmVar3.h;
                ((LinkedHashSet) ffrVar.f16719c).clear();
                gks gksVar = vmVar3.f20177c;
                vm vmVar4 = gksVar.f18326a;
                cwx m = vmVar4 != null ? vmVar4.m() : gksVar.l.g(csv.IMMUTABLE_TYPE) ? gksVar.h : null;
                if (m == null) {
                    eek eekVar = gksVar.ae;
                    if (eekVar != null && eekVar.ai != null) {
                        switch (ahs.f10235a[eekVar.ah.ordinal()]) {
                            case 1:
                                mo.c(ffrVar, new fiq(au.ASSIGN, (cwx) ((adz) eekVar).f10070a, 0));
                                break;
                            case 2:
                                eew eewVar = (eew) eekVar;
                                boolean z = eewVar.y == dkz.CONSTRUCTOR;
                                ayu ayuVar = eewVar.f15409a;
                                mo.c(ffrVar, new fiq(au.ASSIGN, (z && (ae = moVar.f19660a.ae(ayuVar.f11076d)) != null && ae.l.g(csv.DONT_GENERATE) && (glhVar = (glh) ae.l.k(acq.r)) != null && glhVar.f18342a == dhx.CONSTRUCTOR) ? glhVar.f18344f : ayuVar.f11076d.f20149d, 0));
                                break;
                            case 3:
                                mo.c(ffrVar, new fiq(au.ASSIGN, ((ekh) eekVar.j(0)).h, 0));
                                break;
                            case 4:
                                eng engVar = (eng) eekVar.l.k(acq.bh);
                                if (engVar != null) {
                                    Iterator it = engVar.f15859a.f10082e.iterator();
                                    while (it.hasNext()) {
                                        mo.c(ffrVar, new fiq(au.ASSIGN, ((ve) it.next()).f20149d, 0));
                                    }
                                    break;
                                } else {
                                    mo.c(ffrVar, new fiq(au.ASSIGN, eekVar.ai.h, 0));
                                    break;
                                }
                            case 5:
                                hdc hdcVar = (hdc) eekVar;
                                cwx cwxVar2 = hdcVar.ad.f11079g;
                                ebp r2 = moVar.f19660a.f14930b.r(hdcVar);
                                if (r2 == null || (cwxVar = r2.g()) == null || !cwxVar.bk()) {
                                    cwxVar = null;
                                }
                                if (cwxVar != null) {
                                    if (cwxVar.bn()) {
                                        eqp eqpVar = hdcVar.f19257ab;
                                        if (hdcVar.aj.size() != 0 && eqpVar != eqp.STATIC && eqpVar != eqp.SUPER) {
                                            fiqVar = new gti(moVar.f19660a, hdcVar, cwxVar);
                                            mo.c(ffrVar, fiqVar);
                                            break;
                                        }
                                    } else {
                                        cwxVar2 = cwxVar;
                                    }
                                }
                                fiqVar = new fiq(au.ASSIGN, cwxVar2, 0);
                                mo.c(ffrVar, fiqVar);
                                break;
                            case 6:
                                adz adzVar = (adz) eekVar;
                                cwx cwxVar3 = adzVar.ai.h;
                                mo.c(ffrVar, cwxVar3.bn() ? new apz(moVar.f19660a, adzVar, cwxVar3) : new fiq(au.ASSIGN, cwxVar3, 0));
                                break;
                            case 7:
                                if (!eekVar.l.g(csv.SOFT_CAST)) {
                                    mo.c(ffrVar, new bue(moVar.f19660a, (adz) eekVar));
                                    break;
                                }
                                break;
                            default:
                                mo.c(ffrVar, new fiq(au.ASSIGN, eekVar.ai.h, 0));
                                break;
                        }
                    } else {
                        mo.c(ffrVar, new fiq(au.ASSIGN, gksVar.h, 0));
                    }
                } else {
                    mo.c(ffrVar, new fiq(au.ASSIGN, m, 0));
                }
                Iterator it2 = vmVar3.f20178d.iterator();
                while (it2.hasNext()) {
                    gks gksVar2 = (gks) it2.next();
                    eek eekVar2 = gksVar2.ae;
                    if (eekVar2 != null) {
                        if (eekVar2 instanceof gif) {
                            gif gifVar = (gif) eekVar2;
                            gsh aa = gifVar.aa();
                            if (aa != null && (r = moVar.f19660a.f14930b.r(gifVar)) != null) {
                                if (aa != gksVar2) {
                                    cwx cwxVar4 = (cwx) r.f().get(gifVar.aq(gksVar2) - gifVar.z());
                                    if (cwxVar4.bn()) {
                                        fiqVar2 = new flg(moVar.f19660a, gifVar, gksVar2, cwxVar4);
                                        if (fiqVar2 != null) {
                                            mo.c(ffrVar, fiqVar2);
                                        }
                                    }
                                } else if (r instanceof hed) {
                                    fiqVar2 = new fiq(au.USE, fnq.h((hed) r).f20149d, 0);
                                    if (fiqVar2 != null) {
                                    }
                                }
                            }
                            fiqVar2 = null;
                            if (fiqVar2 != null) {
                            }
                        }
                        if (eekVar2.ah != hay.CHECK_CAST || !eekVar2.l.g(csv.SOFT_CAST)) {
                            fiqVar2 = new fiq(au.USE, gksVar2.h, 0);
                            mo.c(ffrVar, fiqVar2);
                        }
                    }
                    fiqVar2 = null;
                    mo.c(ffrVar, fiqVar2);
                }
                break;
            case 25:
                ((gcu) obj2).i((gks) obj);
                break;
            default:
                ((StringBuilder) obj2).append((String) obj);
                break;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.f10199a;
        return j$.util.function.j.$default$andThen(this, consumer);
    }
}
