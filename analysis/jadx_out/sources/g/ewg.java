package g;

import j$.lang.Iterable;
import j$.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.TreeMap;
import java.util.function.Function;

/* loaded from: classes.dex */
public abstract class ewg {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f16268a = dsr.k(ewg.class);

    public static void b(final cci cciVar, gyo gyoVar, final boolean z) {
        HashMap hashMap = new HashMap();
        Map.b.forEach(((bqm) cciVar.f12631ab.f14934f.f14997c).f12023a, new esa(0, hashMap));
        TreeMap treeMap = new TreeMap();
        if (z) {
            for (cci cciVar2 : cciVar.i) {
                duk dukVar = new duk(cciVar2);
                cciVar2.av();
                Iterable.b.forEach(cciVar2.ag, new dti(dukVar, 0));
                treeMap.put(cciVar2.ak.i(), dukVar);
            }
        }
        Iterator it = gyoVar.f19010d.iterator();
        while (it.hasNext()) {
            final azy azyVar = (azy) it.next();
            String str = azyVar.f11145g;
            final String replace = azyVar.f11140b.replace('.', '_');
            final duk dukVar2 = (duk) Map.b.computeIfAbsent(treeMap, str, new Function() { // from class: g.bih
                public final /* synthetic */ Function andThen(Function function) {
                    return j$.util.function.k.$default$andThen(this, function);
                }

                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    cci cciVar3 = cci.this;
                    dwg dwgVar = cciVar3.f12631ab;
                    ve g2 = ve.g(dwgVar, cciVar3.ak.l() + '$' + ((String) obj));
                    cci ae = dwgVar.ae(g2);
                    if (ae != null) {
                        duk dukVar3 = new duk(ae);
                        ae.av();
                        Iterable.b.forEach(ae.ag, new dti(dukVar3, 1));
                        return dukVar3;
                    }
                    cci ao = cci.ao(dwgVar, g2, 25);
                    if (z) {
                        ao.bv("Added by JADX");
                    }
                    return new duk(ao);
                }

                public final /* synthetic */ Function compose(Function function) {
                    return j$.util.function.k.$default$compose(this, function);
                }
            });
            Map.b.computeIfAbsent(dukVar2.f14836b, replace, new Function() { // from class: g.ly
                public final /* synthetic */ Function andThen(Function function) {
                    return j$.util.function.k.$default$andThen(this, function);
                }

                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    cci cciVar3 = duk.this.f14835a;
                    dwg dwgVar = cciVar3.f12631ab;
                    hcd hcdVar = new hcd(cciVar3, dwgVar.h.s(new dsj(cciVar3.ak, replace, cwx.an)), 25);
                    hcdVar.m(new ghr(dnd.ENCODED_INT, Integer.valueOf(azyVar.f11142d)));
                    cciVar3.be(hcdVar);
                    if (z) {
                        hcdVar.bv("Added by JADX");
                    }
                    return hcdVar;
                }

                public final /* synthetic */ Function compose(Function function) {
                    return j$.util.function.k.$default$compose(this, function);
                }
            });
            hcd hcdVar = (hcd) hashMap.get(Integer.valueOf(azyVar.f11142d));
            if (hcdVar != null) {
                dsj dsjVar = hcdVar.f19217g;
                if (!dsjVar.f14712e.equals(replace) && cbd.e(replace) && cciVar.f12631ab.i.r.contains(ffl.VALID)) {
                    hcdVar.w(csv.DONT_RENAME);
                    dsjVar.f14710b = replace;
                }
            }
        }
    }
}
