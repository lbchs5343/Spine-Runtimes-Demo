package g;

import j$.util.concurrent.ConcurrentHashMap;
import java.io.IOException;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

/* loaded from: classes3.dex */
public final class eem {

    /* renamed from: d, reason: collision with root package name */
    public final ant f15398d;

    /* renamed from: e, reason: collision with root package name */
    public final qd f15399e;

    /* renamed from: f, reason: collision with root package name */
    public final List f15400f;
    public final boolean h;
    public final ja j;
    public final btd k;

    /* renamed from: b, reason: collision with root package name */
    public static final btd f15396b = btd.f12174a;

    /* renamed from: c, reason: collision with root package name */
    public static final dxs f15397c = dxs.DOUBLE;

    /* renamed from: a, reason: collision with root package name */
    public static final dxs f15395a = dxs.LAZILY_PARSED_NUMBER;

    /* renamed from: g, reason: collision with root package name */
    public final ThreadLocal f15401g = new ThreadLocal();
    public final ConcurrentHashMap i = new ConcurrentHashMap();

    public eem(ehe eheVar, fvw fvwVar, HashMap hashMap, boolean z, btd btdVar, ant antVar, boolean z2, dng dngVar, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, dxs dxsVar, dxs dxsVar2, ArrayList arrayList4) {
        rt rtVar;
        ja jaVar = new ja(hashMap, z2, arrayList4);
        this.j = jaVar;
        this.h = z;
        this.k = btdVar;
        this.f15398d = antVar;
        ArrayList arrayList5 = new ArrayList();
        arrayList5.add(foc.f17123a);
        if (dxsVar == dxs.DOUBLE) {
            rtVar = cvg.f13578b;
        } else {
            rt rtVar2 = cvg.f13578b;
            rtVar = new rt(dxsVar);
        }
        arrayList5.add(rtVar);
        arrayList5.add(eheVar);
        arrayList5.addAll(arrayList3);
        arrayList5.add(foc.p);
        arrayList5.add(foc.z);
        arrayList5.add(foc.f17129g);
        arrayList5.add(foc.i);
        arrayList5.add(foc.n);
        bke qnVar = dngVar == dng.DEFAULT ? foc.f17125c : new qn();
        arrayList5.add(new dap(Long.TYPE, Long.class, qnVar));
        int i = 1;
        arrayList5.add(new dap(Double.TYPE, Double.class, new atb(1)));
        arrayList5.add(new dap(Float.TYPE, Float.class, new atb(2)));
        int i2 = 0;
        arrayList5.add(dxsVar2 == dxs.LAZILY_PARSED_NUMBER ? atb.f10791b : new bqd(new atb(0), 0));
        arrayList5.add(foc.f17124b);
        arrayList5.add(foc.r);
        arrayList5.add(new eam(AtomicLong.class, new agf(new agf(qnVar, 0), 2), i2));
        arrayList5.add(new eam(AtomicLongArray.class, new agf(new agf(qnVar, 1), 2), i2));
        arrayList5.add(foc.t);
        arrayList5.add(foc.h);
        arrayList5.add(foc.u);
        arrayList5.add(foc.aa);
        arrayList5.add(new eam(BigDecimal.class, foc.q, i2));
        arrayList5.add(new eam(BigInteger.class, foc.f17128f, i2));
        arrayList5.add(new eam(adf.class, foc.f17126d, i2));
        arrayList5.add(foc.o);
        arrayList5.add(foc.w);
        arrayList5.add(foc.l);
        arrayList5.add(foc.m);
        arrayList5.add(foc.f17127e);
        arrayList5.add(foc.k);
        arrayList5.add(foc.s);
        arrayList5.add(fcf.f16554b);
        arrayList5.add(foc.y);
        if (ehv.f15564c) {
            arrayList5.add(ehv.f15563b);
            arrayList5.add(ehv.f15562a);
            arrayList5.add(ehv.f15565d);
        }
        arrayList5.add(cql.f13334b);
        arrayList5.add(foc.j);
        arrayList5.add(new bkj(jaVar, i2));
        arrayList5.add(new bkj(jaVar, i));
        qd qdVar = new qd(jaVar);
        this.f15399e = qdVar;
        arrayList5.add(qdVar);
        arrayList5.add(foc.v);
        arrayList5.add(new s(jaVar, fvwVar, eheVar, qdVar, arrayList4));
        this.f15400f = Collections.unmodifiableList(arrayList5);
    }

    public static void l(double d2) {
        if (Double.isNaN(d2) || Double.isInfinite(d2)) {
            throw new IllegalArgumentException(d2 + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    public final void m(Object obj, Class cls, fwg fwgVar) {
        bke n = n(new ri(cls));
        ant antVar = fwgVar.f17512d;
        ant antVar2 = this.f15398d;
        if (antVar2 != null) {
            fwgVar.f17512d = antVar2;
        } else if (antVar == ant.LEGACY_STRICT) {
            fwgVar.r(ant.LENIENT);
        }
        boolean z = fwgVar.l;
        boolean z2 = fwgVar.h;
        fwgVar.l = this.h;
        fwgVar.h = false;
        try {
            try {
                try {
                    n.a(fwgVar, obj);
                } catch (IOException e2) {
                    throw new gyr(e2);
                }
            } catch (AssertionError e3) {
                throw new AssertionError("AssertionError (GSON 2.11.0): " + e3.getMessage(), e3);
            }
        } finally {
            fwgVar.r(antVar);
            fwgVar.l = z;
            fwgVar.h = z2;
        }
    }

    public final bke n(ri riVar) {
        boolean z;
        ConcurrentHashMap concurrentHashMap = this.i;
        bke bkeVar = (bke) concurrentHashMap.get(riVar);
        if (bkeVar != null) {
            return bkeVar;
        }
        ThreadLocal threadLocal = this.f15401g;
        Map map = (Map) threadLocal.get();
        if (map == null) {
            map = new HashMap();
            threadLocal.set(map);
            z = true;
        } else {
            bke bkeVar2 = (bke) map.get(riVar);
            if (bkeVar2 != null) {
                return bkeVar2;
            }
            z = false;
        }
        try {
            cez cezVar = new cez();
            map.put(riVar, cezVar);
            Iterator it = this.f15400f.iterator();
            bke bkeVar3 = null;
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                bkeVar3 = ((dsb) it.next()).j(this, riVar);
                if (bkeVar3 != null) {
                    if (cezVar.f12765c != null) {
                        throw new AssertionError("Delegate is already set");
                    }
                    cezVar.f12765c = bkeVar3;
                    map.put(riVar, bkeVar3);
                }
            }
            if (z) {
                threadLocal.remove();
            }
            if (bkeVar3 != null) {
                if (z) {
                    concurrentHashMap.putAll(map);
                }
                return bkeVar3;
            }
            throw new IllegalArgumentException("GSON (2.11.0) cannot handle " + riVar);
        } catch (Throwable th) {
            if (z) {
                threadLocal.remove();
            }
            throw th;
        }
    }

    public final fwg o(Writer writer) {
        fwg fwgVar = new fwg(writer);
        fwgVar.v(this.k);
        fwgVar.l = this.h;
        ant antVar = this.f15398d;
        if (antVar == null) {
            antVar = ant.LEGACY_STRICT;
        }
        fwgVar.r(antVar);
        fwgVar.h = false;
        return fwgVar;
    }

    public final String toString() {
        return "{serializeNulls:false,factories:" + this.f15400f + ",instanceCreators:" + this.j + "}";
    }
}
