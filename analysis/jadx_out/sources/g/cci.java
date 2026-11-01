package g;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import j$.lang.Iterable;
import j$.util.Collection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.function.Function;

/* loaded from: classes.dex */
public final class cci extends ebh implements Comparable {

    /* renamed from: c, reason: collision with root package name */
    public static final dba f12630c = dsr.k(cci.class);
    public List aa;

    /* renamed from: ab, reason: collision with root package name */
    public final dwg f12631ab;
    public final cgt ac;
    public volatile gwz ad;
    public cno ae;
    public cwx af;
    public List ag;
    public Map ah;
    public cci ai;
    public List aj;
    public final ve ak;

    /* renamed from: d, reason: collision with root package name */
    public gqc f12632d;

    /* renamed from: e, reason: collision with root package name */
    public List f12633e;

    /* renamed from: f, reason: collision with root package name */
    public List f12634f;

    /* renamed from: g, reason: collision with root package name */
    public final hbb f12635g;
    public List h;
    public List i;
    public List j;
    public String x;
    public List y;
    public List z;

    public cci(dwg dwgVar, cgt cgtVar) {
        List list = Collections.EMPTY_LIST;
        this.y = list;
        this.i = list;
        this.f12633e = list;
        this.ai = this;
        this.ad = gwz.NOT_LOADED;
        this.aa = list;
        this.f12634f = list;
        this.z = list;
        this.h = list;
        this.ah = Collections.EMPTY_MAP;
        this.f12631ab = dwgVar;
        ve h = ve.h(dwgVar, cwx.bf(cgtVar.getType()));
        this.ak = h;
        hbb h2 = hbb.h(dwgVar, h.r());
        h2.f19156d.add(this);
        this.f12635g = h2;
        cgt e2 = cgtVar.e();
        this.ac = e2;
        aq(e2);
        w(csv.CLASS_UNLOADED);
    }

    public cci(dwg dwgVar, ve veVar, int i) {
        List list = Collections.EMPTY_LIST;
        this.y = list;
        this.i = list;
        this.f12633e = list;
        this.ai = this;
        this.ad = gwz.NOT_LOADED;
        this.aa = list;
        this.f12634f = list;
        this.z = list;
        this.h = list;
        this.ah = Collections.EMPTY_MAP;
        this.f12631ab = dwgVar;
        this.ac = null;
        this.ak = veVar;
        this.j = new ArrayList();
        this.aj = new ArrayList();
        this.ag = new ArrayList();
        this.f12632d = new gqc(i, frh.CLASS, 1);
        hbb h = hbb.h(dwgVar, veVar.r());
        h.f19156d.add(this);
        this.f12635g = h;
        w(csv.CLASS_UNLOADED);
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00c9, code lost:
    
        if (r2.endsWith("$" + r3) != false) goto L46;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void al(cci cciVar) {
        ao aoVar = ao.ae;
        ao aoVar2 = ao.f10542a;
        feu feuVar = (feu) cciVar.l.k(aoVar2);
        if (feuVar != null) {
            cciVar.u(aoVar2);
            for (Map.Entry entry : feuVar.f16682a.entrySet()) {
                hed at = cciVar.at((String) entry.getKey());
                if (at != null) {
                    at.m(new gpg((ghr) entry.getValue()));
                } else {
                    cciVar.bu("Method from annotation default annotation not found: " + ((String) entry.getKey()));
                }
            }
        }
        ve veVar = cciVar.ak;
        arg argVar = (arg) cciVar.l.k(aoVar);
        if (argVar == null) {
            return;
        }
        String str = argVar.f10706a;
        if (str.endsWith(".java")) {
            str = str.substring(0, str.length() - 5);
        }
        if (!str.isEmpty() && !str.equals("SourceFile")) {
            if (veVar == null) {
                return;
            }
            String str2 = veVar.f20150e;
            if (!str.equals(str2)) {
                ve veVar2 = veVar.f20148c;
                while (true) {
                    if (veVar2 != null) {
                        String str3 = veVar2.f20150e;
                        if (str3.equals(str) || str3.startsWith(str.concat("$"))) {
                            break;
                        } else {
                            veVar2 = veVar2.f20148c;
                        }
                    } else {
                        if (str.contains("$")) {
                        }
                        if (!str2.contains("$") || !str2.startsWith(str)) {
                            return;
                        }
                    }
                }
            }
        }
        cciVar.u(aoVar);
    }

    public static void am(List list) {
        if (list.isEmpty()) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            hcd hcdVar = (hcd) it.next();
            gqc gqcVar = hcdVar.h;
            if (gqcVar.be() && gqcVar.ae()) {
                if (hcdVar.l.k(ao.x) == null) {
                    hcdVar.m(ghr.f18174a);
                }
            }
        }
    }

    public static void an(cci cciVar) {
        if (cciVar.ak.f20150e.equals("package-info")) {
            cciVar.av();
            if (cciVar.ag.isEmpty()) {
                cciVar.av();
                if (cciVar.aj.isEmpty()) {
                    cciVar.w(csv.PACKAGE_INFO);
                    cciVar.w(csv.DONT_RENAME);
                }
            }
        }
    }

    public static cci ao(dwg dwgVar, ve veVar, int i) {
        cci cciVar = new cci(dwgVar, veVar, i);
        cciVar.w(csv.SYNTHETIC);
        cciVar.x = "synthetic";
        cciVar.ad = gwz.PROCESS_COMPLETE;
        dwgVar.f14933e.add(cciVar);
        dwgVar.f14935g.put(cciVar.ak, cciVar);
        dwgVar.n.put(cciVar.bn(), cciVar);
        return cciVar;
    }

    public static void ap(emz emzVar) {
        NavigableMap navigableMap = (NavigableMap) emzVar.d().f16719c;
        if (navigableMap.isEmpty()) {
            return;
        }
        for (Map.Entry entry : navigableMap.entrySet()) {
            cdv cdvVar = (cdv) entry.getValue();
            if (cdvVar.b() == pk.DECLARATION) {
                ((aev) cdvVar).f10121a.bq(((Integer) entry.getKey()).intValue());
            }
        }
        Collection.b.removeIf(navigableMap.values(), new bev(11));
    }

    @Override // g.awj
    public final String _by() {
        return this.x;
    }

    @Override // g.awj
    public final dwg a() {
        return this.f12631ab;
    }

    public final void aq(cgt cgtVar) {
        dmk dmkVar;
        try {
            t(cgtVar.getAttributes());
            gmk gmkVar = (gmk) this.l.k(ao.f10546d);
            this.f12632d = new gqc((gmkVar == null || (dmkVar = (dmk) gmkVar.f18404a.get(cgtVar.getType())) == null) ? cgtVar.c() : dmkVar.f14428a, frh.CLASS, 1);
            this.af = bg(cgtVar);
            this.j = evh.g(cgtVar.d(), new fov(11));
            this.x = cgtVar.f();
            if ((this.f12632d.f18566ab & 32768) != 0) {
                bu("Modules not supported yet");
            }
        } catch (Exception e2) {
            throw new gck("Error decode class header: " + this.ak, e2);
        }
    }

    public final hcd ar(dsj dsjVar) {
        av();
        for (hcd hcdVar : this.ag) {
            if (hcdVar.f19217g.equals(dsjVar)) {
                return hcdVar;
            }
        }
        return null;
    }

    public final void as(cci cciVar) {
        if (this.f12633e.isEmpty()) {
            this.f12633e = new ArrayList(5);
        }
        cciVar.m(new dxa(this));
        this.f12633e.add(cciVar);
    }

    public final hed at(String str) {
        av();
        for (hed hedVar : this.aj) {
            if (hedVar.al.f11078f.equals(str)) {
                return hedVar;
            }
        }
        return null;
    }

    public final cwx au() {
        cwx cwxVar = this.ak.f20149d;
        return evh.e(this.y) ? cwx.bd(cwxVar, this.y) : cwxVar;
    }

    public final synchronized void av() {
        if (this.ag == null || this.aj == null) {
            cgt cgtVar = this.ac;
            if (cgtVar == null) {
                this.ag = new ArrayList();
                this.aj = new ArrayList();
                this.ah = new HashMap();
                return;
            }
            try {
                final int i = 0;
                bux buxVar = new bux(new Function(this) { // from class: g.dai

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ cci f13855b;

                    {
                        this.f13855b = this;
                    }

                    public final /* synthetic */ Function andThen(Function function) {
                        int i2 = i;
                        return j$.util.function.k.$default$andThen(this, function);
                    }

                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        switch (i) {
                            case 0:
                                eok eokVar = (eok) obj;
                                cci cciVar = this.f13855b;
                                hcd hcdVar = new hcd(cciVar, dsj.f(cciVar.f12631ab, eokVar), eokVar.a());
                                hcdVar.t(eokVar.getAttributes());
                                return hcdVar;
                            default:
                                ghu ghuVar = (ghu) obj;
                                hed hedVar = new hed(this.f13855b, ghuVar);
                                hedVar.t(ghuVar.getAttributes());
                                return hedVar;
                        }
                    }

                    public final /* synthetic */ Function compose(Function function) {
                        int i2 = i;
                        return j$.util.function.k.$default$compose(this, function);
                    }
                });
                final int i2 = 1;
                bux buxVar2 = new bux(new Function(this) { // from class: g.dai

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ cci f13855b;

                    {
                        this.f13855b = this;
                    }

                    public final /* synthetic */ Function andThen(Function function) {
                        int i22 = i2;
                        return j$.util.function.k.$default$andThen(this, function);
                    }

                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        switch (i2) {
                            case 0:
                                eok eokVar = (eok) obj;
                                cci cciVar = this.f13855b;
                                hcd hcdVar = new hcd(cciVar, dsj.f(cciVar.f12631ab, eokVar), eokVar.a());
                                hcdVar.t(eokVar.getAttributes());
                                return hcdVar;
                            default:
                                ghu ghuVar = (ghu) obj;
                                hed hedVar = new hed(this.f13855b, ghuVar);
                                hedVar.t(ghuVar.getAttributes());
                                return hedVar;
                        }
                    }

                    public final /* synthetic */ Function compose(Function function) {
                        int i22 = i2;
                        return j$.util.function.k.$default$compose(this, function);
                    }
                });
                cgtVar.b(buxVar, buxVar2);
                List list = buxVar.f12249b;
                if (list == null) {
                    list = Collections.EMPTY_LIST;
                }
                this.ag = list;
                List list2 = buxVar2.f12249b;
                if (list2 == null) {
                    list2 = Collections.EMPTY_LIST;
                }
                this.aj = list2;
                am(list);
                al(this);
                an(this);
                bj();
                this.f12631ab.i.at.getClass();
            } catch (Exception e2) {
                throw new gck("Error load class body: " + this.ak, e2);
            }
        }
    }

    public final void aw() {
        av();
        for (hed hedVar : this.aj) {
            try {
                hedVar.bf();
            } catch (Exception e2) {
                hedVar.getClass();
                dcj.d(hedVar, "Method load error", e2);
            }
        }
        Iterator it = this.i.iterator();
        while (it.hasNext()) {
            ((cci) it.next()).aw();
        }
        this.ad = gwz.LOADED;
    }

    public final void ax() {
        cgt cgtVar = this.ac;
        if (cgtVar == null) {
            return;
        }
        this.l = lh.k;
        bh();
        dxb dxbVar = this.f12631ab.f14934f;
        ((HashMap) dxbVar.f14998d).remove(this);
        Collection.b.removeIf(((bqm) dxbVar.f14997c).f12023a.entrySet(), new cpa(this, 0));
        this.ag = null;
        this.aj = null;
        this.ah = Collections.EMPTY_MAP;
        aq(cgtVar);
        Iterable.b.forEach(this.i, new esk(9));
    }

    @Override // g.gut
    public final gqc ay() {
        return this.f12632d;
    }

    public final int az() {
        return this.f12634f.size() + this.aa.size();
    }

    @Override // g.cdv
    public final pk b() {
        return pk.CLASS;
    }

    public final chf ba(Object obj, boolean z) {
        return this.f12631ab.f14934f.j(this, obj, z);
    }

    public final emz bb() {
        emz grxVar;
        if (bk()) {
            return emz.f15831e;
        }
        synchronized (this.ak) {
            etc etcVar = this.f12631ab.i.f20118ab;
            bn();
            etcVar.getClass();
            try {
                grxVar = this.f12631ab.v.e(this);
                ap(grxVar);
            } catch (Exception | StackOverflowError e2) {
                dcj.d(this, "Code generation failed", e2);
                grxVar = new grx(evh.c(e2));
            }
        }
        return grxVar;
    }

    @Override // g.gut
    public final void bc(gqc gqcVar) {
        this.f12632d = gqcVar;
    }

    public final cci bd() {
        cci cciVar = this.ai;
        return cciVar == this ? this : cciVar.bd();
    }

    public final void be(hcd hcdVar) {
        av();
        List list = this.ag;
        if (list == null || list.isEmpty()) {
            this.ag = new ArrayList(1);
        }
        this.ag.add(hcdVar);
    }

    public final hed bf(String str) {
        av();
        for (hed hedVar : this.aj) {
            if (hedVar.al.f11077e.equals(str)) {
                return hedVar;
            }
        }
        return null;
    }

    public final cwx bg(cgt cgtVar) {
        String a2 = cgtVar.a();
        if (a2 != null) {
            return cwx.bf(a2);
        }
        ve veVar = this.ak;
        if (veVar.f20149d.l().equals("java.lang.Object") || (this.f12632d.f18566ab & 32768) != 0) {
            return null;
        }
        throw new gck("No super class in " + veVar.f20149d);
    }

    public final void bh() {
        gwz gwzVar = this.ad;
        gwz gwzVar2 = gwz.NOT_LOADED;
        if (gwzVar == gwzVar2) {
            return;
        }
        synchronized (this.ak) {
            try {
                List list = this.aj;
                if (list != null) {
                    Iterable.b.forEach(list, new esk(10));
                }
                Iterable.b.forEach(this.i, new esk(11));
                List list2 = this.ag;
                if (list2 != null) {
                    Iterable.b.forEach(list2, new esk(12));
                }
                p();
                this.ad = gwzVar2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean bi() {
        cwx cwxVar;
        return this.f12632d.ag() && (cwxVar = this.af) != null && cwxVar.l().equals(cwx.y.f10565d);
    }

    public final void bj() {
        this.ah = new HashMap(this.aj.size());
        for (hed hedVar : this.aj) {
            this.ah.put(hedVar.al, hedVar);
        }
    }

    public final boolean bk() {
        return this.ai != this;
    }

    public final void bl(cci cciVar) {
        List list = this.aa;
        if (list != null && !list.isEmpty() && list.remove(cciVar) && list.isEmpty()) {
            list = Collections.EMPTY_LIST;
        }
        this.aa = list;
    }

    public final void bm(jb jbVar) {
        emr emrVar = this.f12631ab.o;
        Object au = au();
        if (!this.af.equals(cwx.t)) {
            jbVar.accept(au, this.af);
            emrVar.ab(this.af, jbVar);
        }
        for (cwx cwxVar : this.j) {
            jbVar.accept(au, cwxVar);
            emrVar.ab(cwxVar, jbVar);
        }
    }

    public final String bn() {
        return this.ak.f20149d.l();
    }

    public final chf bo(ekh ekhVar) {
        bjt f2;
        dxb dxbVar = this.f12631ab.f14934f;
        if (!dxbVar.f14996b || (f2 = ekhVar.h.f()) == null) {
            return null;
        }
        long j = ekhVar.f15702a;
        switch (mk.f19654a[f2.ordinal()]) {
            case 1:
                return dxbVar.j(this, Boolean.valueOf(j == 1), false);
            case 2:
                return dxbVar.j(this, Character.valueOf((char) j), Math.abs(j) > 10);
            case 3:
                return dxbVar.j(this, Byte.valueOf((byte) j), Math.abs(j) > 10);
            case 4:
                return dxbVar.j(this, Short.valueOf((short) j), Math.abs(j) > 100);
            case 5:
                return dxbVar.j(this, Integer.valueOf((int) j), Math.abs(j) > 100);
            case 6:
                return dxbVar.j(this, Long.valueOf(j), Math.abs(j) > 1000);
            case 7:
                float intBitsToFloat = Float.intBitsToFloat((int) j);
                return dxbVar.j(this, Float.valueOf(intBitsToFloat), Float.compare(intBitsToFloat, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) == 0);
            case 8:
                double longBitsToDouble = Double.longBitsToDouble(j);
                return dxbVar.j(this, Double.valueOf(longBitsToDouble), Double.compare(longBitsToDouble, 0.0d) == 0);
            default:
                return null;
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.ak.compareTo(((cci) obj).ak);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof cci) {
            return this.ak.equals(((cci) obj).ak);
        }
        return false;
    }

    @Override // g.gut
    public final cci getDeclaringClass() {
        if (bk()) {
            return this.ai;
        }
        return null;
    }

    public final int hashCode() {
        return this.ak.f20149d.az;
    }

    public final String toString() {
        return this.ak.f20147b;
    }

    @Override // g.awj
    public final String typeName() {
        return "class";
    }
}
