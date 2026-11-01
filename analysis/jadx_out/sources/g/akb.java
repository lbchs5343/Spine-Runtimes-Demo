package g;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public final class akb {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ dqg f10365a;

    /* renamed from: b, reason: collision with root package name */
    public final BitSet f10366b;

    /* renamed from: c, reason: collision with root package name */
    public final BitSet f10367c;

    /* renamed from: d, reason: collision with root package name */
    public final String f10368d;

    /* renamed from: e, reason: collision with root package name */
    public final tl f10369e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f10370f;

    /* renamed from: g, reason: collision with root package name */
    public final gpz f10371g;
    public final tl h;

    public akb(dqg dqgVar, String str) {
        this.f10365a = dqgVar;
        this.f10368d = str;
        this.f10370f = true;
        this.f10366b = new BitSet();
        this.f10367c = new BitSet();
        this.f10369e = new tl(0);
        this.h = new tl(0);
    }

    public akb(dqg dqgVar, String str, gpz gpzVar, BitSet bitSet, BitSet bitSet2, tl tlVar, tl tlVar2) {
        this.f10365a = dqgVar;
        this.f10368d = str;
        this.f10366b = bitSet;
        this.f10367c = bitSet2;
        this.f10369e = tlVar;
        this.h = new tl(0);
        Iterator it = ((bxl) tlVar2.keySet()).iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            ArrayList arrayList = new ArrayList();
            arrayList.add((Long) tlVar2.get(num));
            this.h.put(num, arrayList);
        }
        this.f10370f = false;
        this.f10371g = gpzVar;
    }

    public final ajk i(int i) {
        ArrayList arrayList;
        List list;
        bum d2 = ajk.d();
        if (d2.i) {
            d2.p();
            d2.i = false;
        }
        ajk.c((ajk) d2.k, i);
        if (d2.i) {
            d2.p();
            d2.i = false;
        }
        ajk.b((ajk) d2.k, this.f10370f);
        gpz gpzVar = this.f10371g;
        if (gpzVar != null) {
            if (d2.i) {
                d2.p();
                d2.i = false;
            }
            ajk.f((ajk) d2.k, gpzVar);
        }
        gxg h = gpz.h();
        ArrayList v = fit.v(this.f10366b);
        if (h.i) {
            h.p();
            h.i = false;
        }
        gpz.b((gpz) h.k, v);
        ArrayList v2 = fit.v(this.f10367c);
        if (h.i) {
            h.p();
            h.i = false;
        }
        gpz.l((gpz) h.k, v2);
        tl tlVar = this.f10369e;
        if (tlVar == null) {
            arrayList = null;
        } else {
            ArrayList arrayList2 = new ArrayList(tlVar.f11294g);
            Iterator it = ((bxl) tlVar.keySet()).iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                int intValue = num.intValue();
                Long l = (Long) tlVar.get(num);
                if (l != null) {
                    cas c2 = bvd.c();
                    if (c2.i) {
                        c2.p();
                        c2.i = false;
                    }
                    bvd.b((bvd) c2.k, intValue);
                    long longValue = l.longValue();
                    if (c2.i) {
                        c2.p();
                        c2.i = false;
                    }
                    bvd.d((bvd) c2.k, longValue);
                    arrayList2.add((bvd) c2.o());
                }
            }
            arrayList = arrayList2;
        }
        if (arrayList != null) {
            if (h.i) {
                h.p();
                h.i = false;
            }
            gpz.e((gpz) h.k, arrayList);
        }
        tl tlVar2 = this.h;
        if (tlVar2 == null) {
            list = Collections.EMPTY_LIST;
        } else {
            ArrayList arrayList3 = new ArrayList(tlVar2.f11294g);
            Iterator it2 = ((bxl) tlVar2.keySet()).iterator();
            while (it2.hasNext()) {
                Integer num2 = (Integer) it2.next();
                bds b2 = ezy.b();
                int intValue2 = num2.intValue();
                if (b2.i) {
                    b2.p();
                    b2.i = false;
                }
                ezy.c((ezy) b2.k, intValue2);
                List list2 = (List) tlVar2.get(num2);
                if (list2 != null) {
                    Collections.sort(list2);
                    if (b2.i) {
                        b2.p();
                        b2.i = false;
                    }
                    ezy.d((ezy) b2.k, list2);
                }
                arrayList3.add((ezy) b2.o());
            }
            list = arrayList3;
        }
        if (h.i) {
            h.p();
            h.i = false;
        }
        gpz.k((gpz) h.k, list);
        if (d2.i) {
            d2.p();
            d2.i = false;
        }
        ajk.e((ajk) d2.k, (gpz) h.o());
        return (ajk) d2.o();
    }

    public final void j(gmf gmfVar) {
        int m;
        boolean z;
        boolean o;
        cyg cygVar = (cyg) this.f10365a.z;
        switch (gmfVar.i) {
            case 0:
                m = ((azv) gmfVar.f18400f).m();
                break;
            default:
                m = ((dfx) gmfVar.f18400f).e();
                break;
        }
        Boolean bool = gmfVar.h;
        if (bool != null) {
            this.f10367c.set(m, bool.booleanValue());
        }
        Boolean bool2 = gmfVar.f18396b;
        if (bool2 != null) {
            this.f10366b.set(m, bool2.booleanValue());
        }
        if (gmfVar.f18397c != null) {
            Integer valueOf = Integer.valueOf(m);
            tl tlVar = this.f10369e;
            Long l = (Long) tlVar.get(valueOf);
            long longValue = gmfVar.f18397c.longValue() / 1000;
            if (l == null || longValue > l.longValue()) {
                tlVar.put(valueOf, Long.valueOf(longValue));
            }
        }
        if (gmfVar.f18399e != null) {
            Integer valueOf2 = Integer.valueOf(m);
            tl tlVar2 = this.h;
            List list = (List) tlVar2.get(valueOf2);
            if (list == null) {
                list = new ArrayList();
                tlVar2.put(valueOf2, list);
            }
            switch (gmfVar.i) {
                case 0:
                    z = false;
                    break;
                default:
                    z = true;
                    break;
            }
            if (z) {
                list.clear();
            }
            fdd.c();
            dsd dsdVar = cygVar.f13747e;
            tw twVar = gad.aj;
            String str = this.f10368d;
            if (dsdVar.g(str, twVar)) {
                switch (gmfVar.i) {
                    case 0:
                        o = ((azv) gmfVar.f18400f).o();
                        break;
                    default:
                        o = false;
                        break;
                }
                if (o) {
                    list.clear();
                }
            }
            fdd.c();
            if (!cygVar.f13747e.g(str, twVar)) {
                list.add(Long.valueOf(gmfVar.f18399e.longValue() / 1000));
                return;
            }
            Long valueOf3 = Long.valueOf(gmfVar.f18399e.longValue() / 1000);
            if (list.contains(valueOf3)) {
                return;
            }
            list.add(valueOf3);
        }
    }
}
