package g;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class dwg {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f14929a = dsr.k(dwg.class);

    /* renamed from: b, reason: collision with root package name */
    public final fnq f14930b;

    /* renamed from: c, reason: collision with root package name */
    public final fbc f14931c;

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f14932d;

    /* renamed from: e, reason: collision with root package name */
    public ArrayList f14933e;

    /* renamed from: f, reason: collision with root package name */
    public final dxb f14934f;

    /* renamed from: g, reason: collision with root package name */
    public final HashMap f14935g;
    public final fzn h;
    public final ur i;
    public gql j;
    public final fnq k;
    public cut l;
    public final ArrayList m;
    public final HashMap n;
    public final emr o;
    public final dcj p;
    public final ArrayList q;
    public final ArrayList r;
    public cci s;
    public final foj t;
    public final cag u;
    public final at v;

    public dwg(cqc cqcVar) {
        ArrayList arrayList;
        ur urVar = cqcVar.k;
        this.p = new dcj();
        this.h = new fzn(6);
        fnq fnqVar = new fnq(5);
        fnqVar.f17099f = Collections.EMPTY_SET;
        this.k = fnqVar;
        new sm();
        this.q = new ArrayList();
        int i = 3;
        this.f14931c = new fbc(i);
        this.f14935g = new HashMap();
        this.n = new HashMap();
        this.f14933e = new ArrayList();
        this.f14932d = new HashMap();
        this.m = new ArrayList();
        this.i = urVar;
        dba dbaVar = bcv.f11304a;
        ArrayList arrayList2 = new ArrayList();
        int i2 = 1;
        arrayList2.add(new eqh(i2));
        arrayList2.add(new eak(21));
        arrayList2.add(new eak(2));
        arrayList2.add(new eak(13));
        arrayList2.add(new eak(28));
        arrayList2.add(new ezu());
        arrayList2.add(new ql());
        arrayList2.add(new eak(9));
        int i3 = 0;
        arrayList2.add(new gkk(i3));
        arrayList2.add(new gkk(i2));
        this.r = arrayList2;
        int[] iArr = efk.f15441a;
        qp qpVar = urVar.aa;
        boolean z = urVar.p;
        int i4 = iArr[qpVar.ordinal()];
        int i5 = 11;
        int i6 = 20;
        int i7 = 27;
        int i8 = 23;
        int i9 = 12;
        int i10 = 18;
        if (i4 == 1 || i4 == 2) {
            ArrayList arrayList3 = new ArrayList();
            arrayList3.add(new eak(6));
            boolean z2 = urVar.as;
            if (z) {
                arrayList3.add(new eak(i9));
            }
            arrayList3.add(new ccy());
            if (urVar.aq != afa.NONE) {
                arrayList3.add(new buz());
            }
            arrayList3.add(new fem(i3));
            arrayList3.add(new eak(i8));
            arrayList3.add(new giq());
            arrayList3.add(new dec());
            arrayList3.add(new eak(5));
            arrayList3.add(new eak(i7));
            arrayList3.add(new eak(i6));
            arrayList3.add(new eak(i5));
            arrayList3.add(new eak(i10));
            if (urVar.v) {
                arrayList3.add(new fvq());
            }
            arrayList3.add(new eak(10));
            arrayList3.add(new mo());
            if (z) {
                arrayList3.add(new dbs());
            }
            arrayList3.add(new bwy());
            arrayList3.add(new eak(16));
            arrayList3.add(new eak(i));
            if (urVar.n != fnc.DISABLE) {
                arrayList3.add(new gxf());
            }
            arrayList3.add(new bcc());
            if (z2) {
                arrayList3.add(new ede());
            }
            arrayList3.add(new axg());
            arrayList3.add(new fem(i));
            arrayList3.add(new fem(i2));
            arrayList3.add(new eak(4));
            arrayList3.add(new dxg());
            arrayList3.add(new eak(8));
            arrayList3.add(new eak(25));
            arrayList3.add(new eak(24));
            arrayList3.add(new eak(i2));
            if (urVar.ah) {
                arrayList3.add(new vr(i3));
            }
            arrayList3.add(new eak(26));
            arrayList3.add(new eak(i3));
            arrayList3.add(new eqh(i3));
            arrayList3.add(new eak(8));
            arrayList3.add(new erg());
            arrayList3.add(new acf());
            arrayList3.add(new fcu());
            arrayList3.add(new dwu());
            arrayList3.add(new eak(17));
            glq glqVar = new glq();
            glqVar.f18363a = false;
            arrayList3.add(glqVar);
            arrayList3.add(new eak(14));
            arrayList3.add(new fem(2));
            arrayList3.add(new eak(7));
            arrayList3.add(new fra());
            arrayList3.add(new vr(i2));
            if (z2) {
                arrayList3.add(new eak(19));
            }
            arrayList3.add(new aza());
            arrayList3.add(new feg());
            arrayList3.add(new eak(22));
            arrayList = arrayList3;
        } else if (i4 == 3) {
            ArrayList arrayList4 = new ArrayList();
            if (z) {
                arrayList4.add(new eak(i9));
            }
            arrayList4.add(new ccy());
            if (urVar.aq != afa.NONE) {
                arrayList4.add(new buz());
            }
            arrayList4.add(new fem(i3));
            arrayList4.add(new eak(i8));
            arrayList4.add(new giq());
            arrayList4.add(new dwu("DisableBlockLock", new esk(15)));
            arrayList4.add(new dec());
            arrayList4.add(new eak(i7));
            arrayList4.add(new eak(i6));
            arrayList4.add(new eak(i5));
            arrayList4.add(new eak(i10));
            arrayList4.add(new eak(10));
            arrayList4.add(new mo());
            if (z) {
                arrayList4.add(new dbs());
            }
            arrayList4.add(new bwy());
            arrayList4.add(new eak(16));
            arrayList4.add(new bcc());
            arrayList4.add(new fem(i2));
            arrayList4.add(new dxg());
            arrayList4.add(new eak(8));
            arrayList4.add(new eak(25));
            arrayList4.add(new acf());
            arrayList4.add(new dwu("ForceGenerateAll", new esk(16)));
            arrayList = arrayList4;
        } else {
            if (i4 != 4) {
                throw new gck("Unknown decompilation mode: " + urVar.aa);
            }
            arrayList = bcv.c();
        }
        this.v = new at(arrayList);
        this.t = new foj(urVar);
        dxb dxbVar = new dxb();
        dxbVar.f14997c = new bqm();
        dxbVar.f14998d = new HashMap();
        dxbVar.f14995a = new HashMap();
        dxbVar.f14996b = urVar.an;
        this.f14934f = dxbVar;
        this.u = new cag(this);
        this.f14930b = new fnq(14, this);
        this.o = new emr(i10, this);
    }

    public final void aa(cvm cvmVar, List list) {
        awr awrVar;
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                awrVar = null;
                break;
            } else {
                awrVar = (awr) it.next();
                if (awrVar.f10993e == ag.ARSC) {
                    break;
                }
            }
        }
        dba dbaVar = f14929a;
        if (awrVar == null) {
            dbaVar.o("'resources.arsc' or 'resources.pb' file not found");
            return;
        }
        try {
            cak cakVar = (cak) cvm.f(awrVar, new eoc(cvmVar, awrVar, 1));
            if (cakVar != null) {
                ai(((aew) cakVar).f10127f);
                ad(cakVar, list);
                ah().f(cakVar);
            }
        } catch (Exception e2) {
            dbaVar.l("Failed to parse 'resources.pb'/'.arsc' file", e2);
        }
    }

    public final hcd ab(cci cciVar, dsj dsjVar) {
        hcd hcdVar;
        hcd ab2;
        cci w;
        hcd ab3;
        cciVar.av();
        Iterator it = cciVar.ag.iterator();
        while (true) {
            if (!it.hasNext()) {
                hcdVar = null;
                break;
            }
            hcdVar = (hcd) it.next();
            dsj dsjVar2 = hcdVar.f19217g;
            if (dsjVar2.f14712e.equals(dsjVar.f14712e) && dsjVar2.f14709a.equals(dsjVar.f14709a)) {
                break;
            }
        }
        if (hcdVar != null) {
            return hcdVar;
        }
        cwx cwxVar = cciVar.af;
        if (cwxVar != null && (w = w(cwxVar)) != null && (ab3 = ab(w, dsjVar)) != null) {
            return ab3;
        }
        Iterator it2 = cciVar.j.iterator();
        while (it2.hasNext()) {
            cci w2 = w((cwx) it2.next());
            if (w2 != null && (ab2 = ab(w2, dsjVar)) != null) {
                return ab2;
            }
        }
        return null;
    }

    public final flc ac() {
        ur urVar = this.i;
        urVar.j.getClass();
        return new flc(urVar);
    }

    public final void ad(cak cakVar, List list) {
        if (this.i.f20122g) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        aew aewVar = (aew) cakVar;
        gyo gyoVar = aewVar.f10127f;
        bpo bpoVar = new bpo(aewVar.f10124c, gyoVar.g());
        HashMap hashMap = new HashMap();
        Iterator it = gyoVar.f19010d.iterator();
        while (it.hasNext()) {
            azy azyVar = (azy) it.next();
            azyVar.getClass();
            aot aotVar = azyVar.h;
            String e2 = aotVar == null ? null : bpoVar.e(aotVar.f10586b, aotVar.f10587c);
            if (e2 != null) {
                hashMap.put(e2, azyVar);
            }
        }
        Iterator it2 = list.iterator();
        int i = 0;
        while (it2.hasNext()) {
            awr awrVar = (awr) it2.next();
            azy azyVar2 = (azy) hashMap.get(awrVar.f10992d);
            if (azyVar2 != null) {
                String str = awrVar.f10992d;
                StringBuilder sb = new StringBuilder("res/");
                sb.append(azyVar2.f11145g);
                sb.append(azyVar2.f11141c);
                sb.append("/");
                sb.append(azyVar2.f11140b);
                String str2 = ".9.png";
                if (!str.contains(".9.png")) {
                    int lastIndexOf = str.lastIndexOf(46);
                    str2 = lastIndexOf != -1 ? str.substring(lastIndexOf) : "";
                }
                sb.append(str2);
                String sb2 = sb.toString();
                if (!sb2.equals(str)) {
                    awrVar.f10990b = sb2;
                    awrVar.f10993e = ag.c(sb2);
                    i++;
                }
            }
        }
        dba dbaVar = f14929a;
        if (dbaVar.af()) {
            dbaVar.a(Integer.valueOf(i), "Renamed obfuscated resources: {}, duration: {}ms", Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
        }
    }

    public final cci ae(ve veVar) {
        return (cci) this.f14935g.get(veVar);
    }

    public final hed af(cci cciVar, String str) {
        hed af;
        cci w;
        hed af2;
        cciVar.av();
        for (hed hedVar : cciVar.aj) {
            if (hedVar.al.f11077e.startsWith(str)) {
                return hedVar;
            }
        }
        cwx cwxVar = cciVar.af;
        if (cwxVar != null && (w = w(cwxVar)) != null && (af2 = af(w, str)) != null) {
            return af2;
        }
        Iterator it = cciVar.j.iterator();
        while (it.hasNext()) {
            cci w2 = w((cwx) it.next());
            if (w2 != null && (af = af(w2, str)) != null) {
                return af;
            }
        }
        return null;
    }

    public final hcd ag(dsj dsjVar) {
        cci ae = ae(dsjVar.f14711d);
        if (ae == null) {
            return null;
        }
        hcd ar = ae.ar(dsjVar);
        return ar != null ? ar : ab(ae, dsjVar);
    }

    public final synchronized gql ah() {
        gql gqlVar;
        gqlVar = this.j;
        if (gqlVar == null) {
            gqlVar = new gql(this.i.am);
            this.j = gqlVar;
        }
        return gqlVar;
    }

    public final void ai(gyo gyoVar) {
        this.f14934f.f14995a = gyoVar.g();
        String str = gyoVar.f19012f;
        dba dbaVar = ewg.f16268a;
        String concat = str != null ? str.concat(".R") : "R";
        ve g2 = ve.g(this, concat);
        cci ae = ae(g2);
        if (ae != null) {
            ewg.b(ae, gyoVar, true);
        } else {
            dbaVar.v(str, "Can't find 'R' class in app package: {}");
            ArrayList arrayList = new ArrayList();
            Iterator it = this.f14933e.iterator();
            while (it.hasNext()) {
                cci cciVar = (cci) it.next();
                if (cciVar.ak.f20150e.equals("R")) {
                    arrayList.add(cciVar);
                }
            }
            if (arrayList.size() == 1) {
                ae = (cci) arrayList.get(0);
                ewg.b(ae, gyoVar, true);
            } else {
                if (!arrayList.isEmpty()) {
                    dbaVar.g(arrayList, "Found several 'R' class candidates: {}");
                }
                dbaVar.g(concat, "App 'R' class not found, put all resources ids into : '{}'");
                cci ao = cci.ao(this, g2, 17);
                ao.bv("This class is generated by JADX");
                ewg.b(ao, gyoVar, false);
                ae = ao;
            }
        }
        this.s = ae;
    }

    public final cci w(cwx cwxVar) {
        if (!cwxVar.h() || (cwxVar instanceof btl) || cwxVar.bl() == be.UNBOUND) {
            return null;
        }
        if (cwxVar.bm()) {
            cwxVar = cwx.bf(cwxVar.l());
        }
        return ae(ve.h(this, cwxVar));
    }

    public final hed x(ayu ayuVar) {
        cci ae = ae(ayuVar.f11076d);
        if (ae == null) {
            return null;
        }
        ae.av();
        hed hedVar = (hed) ae.ah.get(ayuVar);
        return hedVar != null ? hedVar : af(ae, ayuVar.p(false, false));
    }

    public final void y(ArrayList arrayList, eie eieVar) {
        int[] iArr = {0};
        ry ryVar = this.i.ac;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((iu) it.next()).a(new euy(this, ryVar, iArr, eieVar, 1));
        }
    }

    public final void z(cci cciVar) {
        Iterator it = this.r.iterator();
        while (it.hasNext()) {
            cmb.w((pj) it.next(), cciVar);
        }
    }
}
