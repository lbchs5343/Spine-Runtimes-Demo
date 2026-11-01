package com.bykv.vk.openvk.preload.dq;

import j$.util.concurrent.ConcurrentHashMap;
import java.io.EOFException;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
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

/* loaded from: classes.dex */
public final class iw {
    private static final com.bykv.vk.openvk.preload.dq.ox.dq<?> cd = com.bykv.vk.openvk.preload.dq.ox.dq.dq(Object.class);

    /* renamed from: d, reason: collision with root package name */
    final com.bykv.vk.openvk.preload.dq.d.p f628d;
    final List<i> dq;

    /* renamed from: f, reason: collision with root package name */
    final List<i> f629f;
    final List<i> fw;
    private final ThreadLocal<Map<com.bykv.vk.openvk.preload.dq.ox.dq<?>, dq<?>>> gh;
    private final com.bykv.vk.openvk.preload.dq.d.ox i;
    final boolean ia;
    final String ig;
    final boolean iw;
    final gh jy;
    final boolean kk;
    private final com.bykv.vk.openvk.preload.dq.d.dq.p le;
    final boolean mn;
    final int mp;
    final boolean no;
    public final boolean o;
    final s ox;
    final Map<Type, ia<?>> p;
    final int q;
    private final Map<com.bykv.vk.openvk.preload.dq.ox.dq<?>, r<?>> r;
    final boolean s;

    public static class dq<T> extends r<T> {
        r<T> dq;

        @Override // com.bykv.vk.openvk.preload.dq.r
        public final T dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
            r<T> rVar = this.dq;
            if (rVar != null) {
                return rVar.dq(dqVar);
            }
            throw new IllegalStateException();
        }

        @Override // com.bykv.vk.openvk.preload.dq.r
        public final void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, T t) throws IOException {
            r<T> rVar = this.dq;
            if (rVar == null) {
                throw new IllegalStateException();
            }
            rVar.dq(oxVar, t);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public iw() {
        this(r1, r2, r3, false, false, false, true, false, false, false, r11, null, 2, 2, r15, r15, r15);
        com.bykv.vk.openvk.preload.dq.d.p pVar = com.bykv.vk.openvk.preload.dq.d.p.dq;
        p pVar2 = p.IDENTITY;
        Map map = Collections.EMPTY_MAP;
        gh ghVar = gh.DEFAULT;
        List list = Collections.EMPTY_LIST;
    }

    public iw(com.bykv.vk.openvk.preload.dq.d.p pVar, s sVar, Map<Type, ia<?>> map, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, gh ghVar, String str, int i, int i2, List<i> list, List<i> list2, List<i> list3) {
        this.gh = new ThreadLocal<>();
        this.r = new ConcurrentHashMap();
        this.f628d = pVar;
        this.ox = sVar;
        this.p = map;
        com.bykv.vk.openvk.preload.dq.d.ox oxVar = new com.bykv.vk.openvk.preload.dq.d.ox(map);
        this.i = oxVar;
        this.s = z;
        this.iw = z2;
        this.mn = z3;
        this.ia = z4;
        this.kk = z5;
        this.o = z6;
        this.no = z7;
        this.jy = ghVar;
        this.ig = str;
        this.mp = i;
        this.q = i2;
        this.f629f = list;
        this.fw = list2;
        ArrayList arrayList = new ArrayList();
        arrayList.add(com.bykv.vk.openvk.preload.dq.d.dq.q.vw);
        arrayList.add(com.bykv.vk.openvk.preload.dq.d.dq.ia.dq);
        arrayList.add(pVar);
        arrayList.addAll(list3);
        arrayList.add(com.bykv.vk.openvk.preload.dq.d.dq.q.n);
        arrayList.add(com.bykv.vk.openvk.preload.dq.d.dq.q.mp);
        arrayList.add(com.bykv.vk.openvk.preload.dq.d.dq.q.mn);
        arrayList.add(com.bykv.vk.openvk.preload.dq.d.dq.q.kk);
        arrayList.add(com.bykv.vk.openvk.preload.dq.d.dq.q.no);
        final r<Number> rVar = ghVar == gh.DEFAULT ? com.bykv.vk.openvk.preload.dq.d.dq.q.r : new r<Number>() { // from class: com.bykv.vk.openvk.preload.dq.iw.3
            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ Number dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                if (dqVar.iw() != com.bykv.vk.openvk.preload.dq.p.d.NULL) {
                    return Long.valueOf(dqVar.mp());
                }
                dqVar.no();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar2, Number number) throws IOException {
                Number number2 = number;
                if (number2 == null) {
                    oxVar2.s();
                } else {
                    oxVar2.d(number2.toString());
                }
            }
        };
        arrayList.add(com.bykv.vk.openvk.preload.dq.d.dq.q.dq(Long.TYPE, Long.class, rVar));
        arrayList.add(com.bykv.vk.openvk.preload.dq.d.dq.q.dq(Double.TYPE, Double.class, z7 ? com.bykv.vk.openvk.preload.dq.d.dq.q.le : new r<Number>() { // from class: com.bykv.vk.openvk.preload.dq.iw.1
            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ Number dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                if (dqVar.iw() != com.bykv.vk.openvk.preload.dq.p.d.NULL) {
                    return Double.valueOf(dqVar.ig());
                }
                dqVar.no();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar2, Number number) throws IOException {
                Number number2 = number;
                if (number2 == null) {
                    oxVar2.s();
                } else {
                    iw.dq(number2.doubleValue());
                    oxVar2.dq(number2);
                }
            }
        }));
        arrayList.add(com.bykv.vk.openvk.preload.dq.d.dq.q.dq(Float.TYPE, Float.class, z7 ? com.bykv.vk.openvk.preload.dq.d.dq.q.i : new r<Number>() { // from class: com.bykv.vk.openvk.preload.dq.iw.2
            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ Number dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                if (dqVar.iw() != com.bykv.vk.openvk.preload.dq.p.d.NULL) {
                    return Float.valueOf((float) dqVar.ig());
                }
                dqVar.no();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar2, Number number) throws IOException {
                Number number2 = number;
                if (number2 == null) {
                    oxVar2.s();
                } else {
                    iw.dq(number2.floatValue());
                    oxVar2.dq(number2);
                }
            }
        }));
        arrayList.add(com.bykv.vk.openvk.preload.dq.d.dq.q.wp);
        arrayList.add(com.bykv.vk.openvk.preload.dq.d.dq.q.jy);
        arrayList.add(com.bykv.vk.openvk.preload.dq.d.dq.q.fw);
        arrayList.add(com.bykv.vk.openvk.preload.dq.d.dq.q.dq(AtomicLong.class, new r<AtomicLong>() { // from class: com.bykv.vk.openvk.preload.dq.iw.4
            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ AtomicLong dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                return new AtomicLong(((Number) r.this.dq(dqVar)).longValue());
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar2, AtomicLong atomicLong) throws IOException {
                r.this.dq(oxVar2, Long.valueOf(atomicLong.get()));
            }
        }.dq()));
        arrayList.add(com.bykv.vk.openvk.preload.dq.d.dq.q.dq(AtomicLongArray.class, new r<AtomicLongArray>() { // from class: com.bykv.vk.openvk.preload.dq.iw.5
            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ AtomicLongArray dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                ArrayList arrayList2 = new ArrayList();
                dqVar.dq();
                while (dqVar.s()) {
                    arrayList2.add(Long.valueOf(((Number) r.this.dq(dqVar)).longValue()));
                }
                dqVar.d();
                int size = arrayList2.size();
                AtomicLongArray atomicLongArray = new AtomicLongArray(size);
                for (int i3 = 0; i3 < size; i3++) {
                    atomicLongArray.set(i3, ((Long) arrayList2.get(i3)).longValue());
                }
                return atomicLongArray;
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar2, AtomicLongArray atomicLongArray) throws IOException {
                AtomicLongArray atomicLongArray2 = atomicLongArray;
                oxVar2.dq();
                int length = atomicLongArray2.length();
                for (int i3 = 0; i3 < length; i3++) {
                    r.this.dq(oxVar2, Long.valueOf(atomicLongArray2.get(i3)));
                }
                oxVar2.d();
            }
        }.dq()));
        arrayList.add(com.bykv.vk.openvk.preload.dq.d.dq.q.gh);
        arrayList.add(com.bykv.vk.openvk.preload.dq.d.dq.q.kx);
        arrayList.add(com.bykv.vk.openvk.preload.dq.d.dq.q.ir);
        arrayList.add(com.bykv.vk.openvk.preload.dq.d.dq.q.f600c);
        arrayList.add(com.bykv.vk.openvk.preload.dq.d.dq.q.dq(BigDecimal.class, com.bykv.vk.openvk.preload.dq.d.dq.q.ji));
        arrayList.add(com.bykv.vk.openvk.preload.dq.d.dq.q.dq(BigInteger.class, com.bykv.vk.openvk.preload.dq.d.dq.q.bl));
        arrayList.add(com.bykv.vk.openvk.preload.dq.d.dq.q.er);
        arrayList.add(com.bykv.vk.openvk.preload.dq.d.dq.q.j);
        arrayList.add(com.bykv.vk.openvk.preload.dq.d.dq.q.l);
        arrayList.add(com.bykv.vk.openvk.preload.dq.d.dq.q.gx);
        arrayList.add(com.bykv.vk.openvk.preload.dq.d.dq.q.v);
        arrayList.add(com.bykv.vk.openvk.preload.dq.d.dq.q.vf);
        arrayList.add(com.bykv.vk.openvk.preload.dq.d.dq.q.p);
        arrayList.add(com.bykv.vk.openvk.preload.dq.d.dq.ox.dq);
        arrayList.add(com.bykv.vk.openvk.preload.dq.d.dq.q.xz);
        arrayList.add(com.bykv.vk.openvk.preload.dq.d.dq.no.dq);
        arrayList.add(com.bykv.vk.openvk.preload.dq.d.dq.o.dq);
        arrayList.add(com.bykv.vk.openvk.preload.dq.d.dq.q.by);
        arrayList.add(com.bykv.vk.openvk.preload.dq.d.dq.dq.dq);
        arrayList.add(com.bykv.vk.openvk.preload.dq.d.dq.q.f601d);
        arrayList.add(new com.bykv.vk.openvk.preload.dq.d.dq.d(oxVar));
        arrayList.add(new com.bykv.vk.openvk.preload.dq.d.dq.mn(oxVar, z2));
        com.bykv.vk.openvk.preload.dq.d.dq.p pVar2 = new com.bykv.vk.openvk.preload.dq.d.dq.p(oxVar);
        this.le = pVar2;
        arrayList.add(pVar2);
        arrayList.add(com.bykv.vk.openvk.preload.dq.d.dq.q.ha);
        arrayList.add(new com.bykv.vk.openvk.preload.dq.d.dq.kk(oxVar, sVar, pVar, pVar2));
        this.dq = Collections.unmodifiableList(arrayList);
    }

    private com.bykv.vk.openvk.preload.dq.p.ox dq(Writer writer) throws IOException {
        if (this.mn) {
            writer.write(")]}'\n");
        }
        com.bykv.vk.openvk.preload.dq.p.ox oxVar = new com.bykv.vk.openvk.preload.dq.p.ox(writer);
        if (this.kk) {
            oxVar.ox("  ");
        }
        oxVar.s = this.s;
        return oxVar;
    }

    private String dq(no noVar) {
        StringWriter stringWriter = new StringWriter();
        dq(noVar, stringWriter);
        return stringWriter.toString();
    }

    private String dq(Object obj, Type type) {
        StringWriter stringWriter = new StringWriter();
        dq(obj, type, stringWriter);
        return stringWriter.toString();
    }

    public static void dq(double d2) {
        if (Double.isNaN(d2) || Double.isInfinite(d2)) {
            throw new IllegalArgumentException(d2 + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    private void dq(no noVar, com.bykv.vk.openvk.preload.dq.p.ox oxVar) throws ig {
        boolean z = oxVar.ox;
        oxVar.ox = true;
        boolean z2 = oxVar.p;
        oxVar.p = this.ia;
        boolean z3 = oxVar.s;
        oxVar.s = this.s;
        try {
            try {
                com.bykv.vk.openvk.preload.dq.d.no.dq(noVar, oxVar);
            } catch (IOException e2) {
                throw new ig(e2);
            } catch (AssertionError e3) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON pangle-v3200): " + e3.getMessage());
                assertionError.initCause(e3);
                throw assertionError;
            }
        } finally {
            oxVar.ox = z;
            oxVar.p = z2;
            oxVar.s = z3;
        }
    }

    private void dq(no noVar, Appendable appendable) throws ig {
        try {
            dq(noVar, dq(com.bykv.vk.openvk.preload.dq.d.no.dq(appendable)));
        } catch (IOException e2) {
            throw new ig(e2);
        }
    }

    public static void dq(Object obj, com.bykv.vk.openvk.preload.dq.p.dq dqVar) {
        if (obj != null) {
            try {
                if (dqVar.iw() == com.bykv.vk.openvk.preload.dq.p.d.END_DOCUMENT) {
                } else {
                    throw new ig("JSON document was not fully consumed.");
                }
            } catch (com.bykv.vk.openvk.preload.dq.p.p e2) {
                throw new cd(e2);
            } catch (IOException e3) {
                throw new ig(e3);
            }
        }
    }

    private void dq(Object obj, Type type, com.bykv.vk.openvk.preload.dq.p.ox oxVar) throws ig {
        r dq2 = dq((com.bykv.vk.openvk.preload.dq.ox.dq) com.bykv.vk.openvk.preload.dq.ox.dq.dq(type));
        boolean z = oxVar.ox;
        oxVar.ox = true;
        boolean z2 = oxVar.p;
        oxVar.p = this.ia;
        boolean z3 = oxVar.s;
        oxVar.s = this.s;
        try {
            try {
                try {
                    dq2.dq(oxVar, obj);
                } catch (IOException e2) {
                    throw new ig(e2);
                }
            } catch (AssertionError e3) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON pangle-v3200): " + e3.getMessage());
                assertionError.initCause(e3);
                throw assertionError;
            }
        } finally {
            oxVar.ox = z;
            oxVar.p = z2;
            oxVar.s = z3;
        }
    }

    private void dq(Object obj, Type type, Appendable appendable) throws ig {
        try {
            dq(obj, type, dq(com.bykv.vk.openvk.preload.dq.d.no.dq(appendable)));
        } catch (IOException e2) {
            throw new ig(e2);
        }
    }

    public final <T> r<T> dq(i iVar, com.bykv.vk.openvk.preload.dq.ox.dq<T> dqVar) {
        if (!this.dq.contains(iVar)) {
            iVar = this.le;
        }
        boolean z = false;
        for (i iVar2 : this.dq) {
            if (z) {
                r<T> dq2 = iVar2.dq(this, dqVar);
                if (dq2 != null) {
                    return dq2;
                }
            } else if (iVar2 == iVar) {
                z = true;
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize ".concat(String.valueOf(dqVar)));
    }

    public final <T> r<T> dq(com.bykv.vk.openvk.preload.dq.ox.dq<T> dqVar) {
        boolean z;
        r<T> rVar = (r) this.r.get(dqVar == null ? cd : dqVar);
        if (rVar != null) {
            return rVar;
        }
        Map<com.bykv.vk.openvk.preload.dq.ox.dq<?>, dq<?>> map = this.gh.get();
        if (map == null) {
            map = new HashMap<>();
            this.gh.set(map);
            z = true;
        } else {
            z = false;
        }
        dq<?> dqVar2 = map.get(dqVar);
        if (dqVar2 != null) {
            return dqVar2;
        }
        try {
            dq<?> dqVar3 = new dq<>();
            map.put(dqVar, dqVar3);
            Iterator<i> it = this.dq.iterator();
            while (it.hasNext()) {
                r<T> dq2 = it.next().dq(this, dqVar);
                if (dq2 != null) {
                    if (dqVar3.dq != null) {
                        throw new AssertionError();
                    }
                    dqVar3.dq = dq2;
                    this.r.put(dqVar, dq2);
                    return dq2;
                }
            }
            throw new IllegalArgumentException("GSON (pangle-v3200) cannot handle ".concat(String.valueOf(dqVar)));
        } finally {
            map.remove(dqVar);
            if (z) {
                this.gh.remove();
            }
        }
    }

    public final <T> r<T> dq(Class<T> cls) {
        return dq((com.bykv.vk.openvk.preload.dq.ox.dq) com.bykv.vk.openvk.preload.dq.ox.dq.dq((Class) cls));
    }

    public final <T> T dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar, Type type) throws ig, cd {
        boolean z = dqVar.dq;
        boolean z2 = true;
        dqVar.dq = true;
        try {
            try {
                try {
                    dqVar.iw();
                    z2 = false;
                    return dq((com.bykv.vk.openvk.preload.dq.ox.dq) com.bykv.vk.openvk.preload.dq.ox.dq.dq(type)).dq(dqVar);
                } catch (AssertionError e2) {
                    AssertionError assertionError = new AssertionError("AssertionError (GSON pangle-v3200): " + e2.getMessage());
                    assertionError.initCause(e2);
                    throw assertionError;
                } catch (IllegalStateException e3) {
                    throw new cd(e3);
                }
            } catch (EOFException e4) {
                if (!z2) {
                    throw new cd(e4);
                }
                dqVar.dq = z;
                return null;
            } catch (IOException e5) {
                throw new cd(e5);
            }
        } finally {
            dqVar.dq = z;
        }
    }

    public final String dq(Object obj) {
        return obj == null ? dq((no) mp.dq) : dq(obj, obj.getClass());
    }

    public final String toString() {
        return "{serializeNulls:" + this.s + ",factories:" + this.dq + ",instanceCreators:" + this.i + "}";
    }
}
