package com.bykv.vk.openvk.preload.dq.d.dq;

import com.bykv.vk.openvk.preload.dq.cd;
import com.bykv.vk.openvk.preload.dq.f;
import com.bykv.vk.openvk.preload.dq.i;
import com.bykv.vk.openvk.preload.dq.r;
import g.dgk;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Currency;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;

/* loaded from: classes.dex */
public final class q {
    public static final r<BigInteger> bl;
    public static final i by;

    /* renamed from: c, reason: collision with root package name */
    public static final i f600c;
    public static final r<AtomicIntegerArray> cd;
    public static final r<URL> ce;

    /* renamed from: d, reason: collision with root package name */
    public static final i f601d;
    public static final r<Class> dq;
    public static final r<com.bykv.vk.openvk.preload.dq.no> ds;

    /* renamed from: e, reason: collision with root package name */
    public static final r<Character> f602e;
    public static final i er;

    /* renamed from: f, reason: collision with root package name */
    public static final r<AtomicBoolean> f603f;
    public static final i fw;
    public static final i gh;
    public static final i gx;
    public static final r<String> h;
    public static final i ha;
    public static final r<Number> i;
    public static final r<Number> ia;
    public static final r<Number> ig;
    public static final i ir;
    public static final r<Boolean> iw;
    public static final i j;
    public static final r<BigDecimal> ji;
    public static final i jy;
    public static final r<Number> k;
    public static final i kk;
    public static final i kx;
    public static final i l;
    public static final r<Number> le;
    public static final i mn;
    public static final i mp;
    public static final i n;
    public static final r<InetAddress> nh;
    public static final i no;
    public static final r<Number> o;
    public static final r<UUID> ob;
    public static final r<StringBuilder> op;
    public static final r<BitSet> ox;
    public static final i p;
    public static final r<AtomicInteger> q;
    public static final r<Number> r;
    public static final r<Boolean> s;
    public static final r<Currency> t;
    public static final r<StringBuffer> u;
    public static final r<Calendar> uh;
    public static final i v;
    public static final i vf;
    public static final i vw;
    public static final r<URI> wn;
    public static final i wp;
    public static final i xz;
    public static final r<Locale> yy;

    /* renamed from: com.bykv.vk.openvk.preload.dq.d.dq.q$24, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass24 {
        static final /* synthetic */ int[] dq;

        static {
            int[] iArr = new int[com.bykv.vk.openvk.preload.dq.p.d.values().length];
            dq = iArr;
            try {
                iArr[com.bykv.vk.openvk.preload.dq.p.d.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                dq[com.bykv.vk.openvk.preload.dq.p.d.BOOLEAN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                dq[com.bykv.vk.openvk.preload.dq.p.d.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                dq[com.bykv.vk.openvk.preload.dq.p.d.NULL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                dq[com.bykv.vk.openvk.preload.dq.p.d.BEGIN_ARRAY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                dq[com.bykv.vk.openvk.preload.dq.p.d.BEGIN_OBJECT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                dq[com.bykv.vk.openvk.preload.dq.p.d.END_DOCUMENT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                dq[com.bykv.vk.openvk.preload.dq.p.d.NAME.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                dq[com.bykv.vk.openvk.preload.dq.p.d.END_OBJECT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                dq[com.bykv.vk.openvk.preload.dq.p.d.END_ARRAY.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    public static final class dq<T extends Enum<T>> extends r<T> {
        private final Map<String, T> dq = new HashMap();

        /* renamed from: d, reason: collision with root package name */
        private final Map<T, String> f611d = new HashMap();

        public dq(Class<T> cls) {
            try {
                for (T t : cls.getEnumConstants()) {
                    String name = t.name();
                    com.bykv.vk.openvk.preload.dq.dq.ox oxVar = (com.bykv.vk.openvk.preload.dq.dq.ox) cls.getField(name).getAnnotation(com.bykv.vk.openvk.preload.dq.dq.ox.class);
                    if (oxVar != null) {
                        name = oxVar.dq();
                        for (String str : oxVar.d()) {
                            this.dq.put(str, t);
                        }
                    }
                    this.dq.put(name, t);
                    this.f611d.put(t, name);
                }
            } catch (NoSuchFieldException e2) {
                throw new AssertionError(e2);
            }
        }

        @Override // com.bykv.vk.openvk.preload.dq.r
        public final /* synthetic */ Object dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
            if (dqVar.iw() != com.bykv.vk.openvk.preload.dq.p.d.NULL) {
                return this.dq.get(dqVar.kk());
            }
            dqVar.no();
            return null;
        }

        @Override // com.bykv.vk.openvk.preload.dq.r
        public final /* synthetic */ void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, Object obj) throws IOException {
            Enum r3 = (Enum) obj;
            oxVar.d(r3 == null ? null : this.f611d.get(r3));
        }
    }

    static {
        r<Class> dq2 = new r<Class>() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.q.1
            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ Class dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, Class cls) throws IOException {
                throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + cls.getName() + ". Forgot to register a type adapter?");
            }
        }.dq();
        dq = dq2;
        f601d = dq(Class.class, dq2);
        r<BitSet> dq3 = new r<BitSet>() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.q.4
            /* JADX WARN: Code restructure failed: missing block: B:13:0x002b, code lost:
            
                if (java.lang.Integer.parseInt(r1) != 0) goto L23;
             */
            /* JADX WARN: Code restructure failed: missing block: B:14:0x002e, code lost:
            
                r5 = false;
             */
            /* JADX WARN: Code restructure failed: missing block: B:29:0x0059, code lost:
            
                if (r7.q() != 0) goto L23;
             */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            private static BitSet d(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                BitSet bitSet = new BitSet();
                dqVar.dq();
                com.bykv.vk.openvk.preload.dq.p.d iw2 = dqVar.iw();
                int i2 = 0;
                while (iw2 != com.bykv.vk.openvk.preload.dq.p.d.END_ARRAY) {
                    int i3 = AnonymousClass24.dq[iw2.ordinal()];
                    boolean z = true;
                    if (i3 != 1) {
                        if (i3 == 2) {
                            z = dqVar.o();
                        } else {
                            if (i3 != 3) {
                                throw new cd("Invalid bitset value type: ".concat(String.valueOf(iw2)));
                            }
                            String kk2 = dqVar.kk();
                            try {
                            } catch (NumberFormatException unused) {
                                throw new cd("Error: Expecting: bitset number value (1, 0), Found: ".concat(String.valueOf(kk2)));
                            }
                        }
                        if (z) {
                            bitSet.set(i2);
                        }
                        i2++;
                        iw2 = dqVar.iw();
                    }
                }
                dqVar.d();
                return bitSet;
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ BitSet dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                return d(dqVar);
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, BitSet bitSet) throws IOException {
                BitSet bitSet2 = bitSet;
                oxVar.dq();
                int length = bitSet2.length();
                for (int i2 = 0; i2 < length; i2++) {
                    oxVar.dq(bitSet2.get(i2) ? 1L : 0L);
                }
                oxVar.d();
            }
        }.dq();
        ox = dq3;
        p = dq(BitSet.class, dq3);
        r<Boolean> rVar = new r<Boolean>() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.q.16
            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ Boolean dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                com.bykv.vk.openvk.preload.dq.p.d iw2 = dqVar.iw();
                if (iw2 != com.bykv.vk.openvk.preload.dq.p.d.NULL) {
                    return iw2 == com.bykv.vk.openvk.preload.dq.p.d.STRING ? Boolean.valueOf(Boolean.parseBoolean(dqVar.kk())) : Boolean.valueOf(dqVar.o());
                }
                dqVar.no();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* bridge */ /* synthetic */ void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, Boolean bool) throws IOException {
                oxVar.dq(bool);
            }
        };
        s = rVar;
        iw = new r<Boolean>() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.q.25
            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ Boolean dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                if (dqVar.iw() != com.bykv.vk.openvk.preload.dq.p.d.NULL) {
                    return Boolean.valueOf(dqVar.kk());
                }
                dqVar.no();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, Boolean bool) throws IOException {
                Boolean bool2 = bool;
                oxVar.d(bool2 == null ? "null" : bool2.toString());
            }
        };
        mn = dq(Boolean.TYPE, Boolean.class, rVar);
        r<Number> rVar2 = new r<Number>() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.q.26
            private static Number d(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                if (dqVar.iw() == com.bykv.vk.openvk.preload.dq.p.d.NULL) {
                    dqVar.no();
                    return null;
                }
                try {
                    return Byte.valueOf((byte) dqVar.q());
                } catch (NumberFormatException e2) {
                    throw new cd(e2);
                }
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ Number dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                return d(dqVar);
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* bridge */ /* synthetic */ void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, Number number) throws IOException {
                oxVar.dq(number);
            }
        };
        ia = rVar2;
        kk = dq(Byte.TYPE, Byte.class, rVar2);
        r<Number> rVar3 = new r<Number>() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.q.27
            private static Number d(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                if (dqVar.iw() == com.bykv.vk.openvk.preload.dq.p.d.NULL) {
                    dqVar.no();
                    return null;
                }
                try {
                    return Short.valueOf((short) dqVar.q());
                } catch (NumberFormatException e2) {
                    throw new cd(e2);
                }
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ Number dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                return d(dqVar);
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* bridge */ /* synthetic */ void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, Number number) throws IOException {
                oxVar.dq(number);
            }
        };
        o = rVar3;
        no = dq(Short.TYPE, Short.class, rVar3);
        r<Number> rVar4 = new r<Number>() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.q.28
            private static Number d(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                if (dqVar.iw() == com.bykv.vk.openvk.preload.dq.p.d.NULL) {
                    dqVar.no();
                    return null;
                }
                try {
                    return Integer.valueOf(dqVar.q());
                } catch (NumberFormatException e2) {
                    throw new cd(e2);
                }
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ Number dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                return d(dqVar);
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* bridge */ /* synthetic */ void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, Number number) throws IOException {
                oxVar.dq(number);
            }
        };
        ig = rVar4;
        mp = dq(Integer.TYPE, Integer.class, rVar4);
        r<AtomicInteger> dq4 = new r<AtomicInteger>() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.q.29
            private static AtomicInteger d(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                try {
                    return new AtomicInteger(dqVar.q());
                } catch (NumberFormatException e2) {
                    throw new cd(e2);
                }
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ AtomicInteger dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                return d(dqVar);
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, AtomicInteger atomicInteger) throws IOException {
                oxVar.dq(atomicInteger.get());
            }
        }.dq();
        q = dq4;
        jy = dq(AtomicInteger.class, dq4);
        r<AtomicBoolean> dq5 = new r<AtomicBoolean>() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.q.30
            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ AtomicBoolean dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                return new AtomicBoolean(dqVar.o());
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, AtomicBoolean atomicBoolean) throws IOException {
                oxVar.dq(atomicBoolean.get());
            }
        }.dq();
        f603f = dq5;
        fw = dq(AtomicBoolean.class, dq5);
        r<AtomicIntegerArray> dq6 = new r<AtomicIntegerArray>() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.q.12
            private static AtomicIntegerArray d(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                ArrayList arrayList = new ArrayList();
                dqVar.dq();
                while (dqVar.s()) {
                    try {
                        arrayList.add(Integer.valueOf(dqVar.q()));
                    } catch (NumberFormatException e2) {
                        throw new cd(e2);
                    }
                }
                dqVar.d();
                int size = arrayList.size();
                AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
                for (int i2 = 0; i2 < size; i2++) {
                    atomicIntegerArray.set(i2, ((Integer) arrayList.get(i2)).intValue());
                }
                return atomicIntegerArray;
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ AtomicIntegerArray dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                return d(dqVar);
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, AtomicIntegerArray atomicIntegerArray) throws IOException {
                oxVar.dq();
                int length = atomicIntegerArray.length();
                for (int i2 = 0; i2 < length; i2++) {
                    oxVar.dq(r6.get(i2));
                }
                oxVar.d();
            }
        }.dq();
        cd = dq6;
        gh = dq(AtomicIntegerArray.class, dq6);
        r = new r<Number>() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.q.23
            private static Number d(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                if (dqVar.iw() == com.bykv.vk.openvk.preload.dq.p.d.NULL) {
                    dqVar.no();
                    return null;
                }
                try {
                    return Long.valueOf(dqVar.mp());
                } catch (NumberFormatException e2) {
                    throw new cd(e2);
                }
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ Number dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                return d(dqVar);
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* bridge */ /* synthetic */ void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, Number number) throws IOException {
                oxVar.dq(number);
            }
        };
        i = new r<Number>() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.q.31
            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ Number dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                if (dqVar.iw() != com.bykv.vk.openvk.preload.dq.p.d.NULL) {
                    return Float.valueOf((float) dqVar.ig());
                }
                dqVar.no();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* bridge */ /* synthetic */ void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, Number number) throws IOException {
                oxVar.dq(number);
            }
        };
        le = new r<Number>() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.q.32
            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ Number dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                if (dqVar.iw() != com.bykv.vk.openvk.preload.dq.p.d.NULL) {
                    return Double.valueOf(dqVar.ig());
                }
                dqVar.no();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* bridge */ /* synthetic */ void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, Number number) throws IOException {
                oxVar.dq(number);
            }
        };
        r<Number> rVar5 = new r<Number>() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.q.33
            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ Number dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                com.bykv.vk.openvk.preload.dq.p.d iw2 = dqVar.iw();
                int i2 = AnonymousClass24.dq[iw2.ordinal()];
                if (i2 == 1 || i2 == 3) {
                    return new com.bykv.vk.openvk.preload.dq.d.mn(dqVar.kk());
                }
                if (i2 != 4) {
                    throw new cd("Expecting number, got: ".concat(String.valueOf(iw2)));
                }
                dqVar.no();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* bridge */ /* synthetic */ void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, Number number) throws IOException {
                oxVar.dq(number);
            }
        };
        k = rVar5;
        wp = dq(Number.class, rVar5);
        r<Character> rVar6 = new r<Character>() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.q.34
            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ Character dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                if (dqVar.iw() == com.bykv.vk.openvk.preload.dq.p.d.NULL) {
                    dqVar.no();
                    return null;
                }
                String kk2 = dqVar.kk();
                if (kk2.length() == 1) {
                    return Character.valueOf(kk2.charAt(0));
                }
                throw new cd("Expecting character, got: ".concat(kk2));
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, Character ch) throws IOException {
                Character ch2 = ch;
                oxVar.d(ch2 == null ? null : String.valueOf(ch2));
            }
        };
        f602e = rVar6;
        kx = dq(Character.TYPE, Character.class, rVar6);
        r<String> rVar7 = new r<String>() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.q.35
            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ String dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                com.bykv.vk.openvk.preload.dq.p.d iw2 = dqVar.iw();
                if (iw2 != com.bykv.vk.openvk.preload.dq.p.d.NULL) {
                    return iw2 == com.bykv.vk.openvk.preload.dq.p.d.BOOLEAN ? Boolean.toString(dqVar.o()) : dqVar.kk();
                }
                dqVar.no();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, String str) throws IOException {
                oxVar.d(str);
            }
        };
        h = rVar7;
        ji = new r<BigDecimal>() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.q.36
            private static BigDecimal d(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                if (dqVar.iw() == com.bykv.vk.openvk.preload.dq.p.d.NULL) {
                    dqVar.no();
                    return null;
                }
                try {
                    return new BigDecimal(dqVar.kk());
                } catch (NumberFormatException e2) {
                    throw new cd(e2);
                }
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ BigDecimal dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                return d(dqVar);
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* bridge */ /* synthetic */ void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, BigDecimal bigDecimal) throws IOException {
                oxVar.dq(bigDecimal);
            }
        };
        bl = new r<BigInteger>() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.q.2
            private static BigInteger d(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                if (dqVar.iw() == com.bykv.vk.openvk.preload.dq.p.d.NULL) {
                    dqVar.no();
                    return null;
                }
                try {
                    return new BigInteger(dqVar.kk());
                } catch (NumberFormatException e2) {
                    throw new cd(e2);
                }
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ BigInteger dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                return d(dqVar);
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* bridge */ /* synthetic */ void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, BigInteger bigInteger) throws IOException {
                oxVar.dq(bigInteger);
            }
        };
        n = dq(String.class, rVar7);
        r<StringBuilder> rVar8 = new r<StringBuilder>() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.q.3
            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ StringBuilder dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                if (dqVar.iw() != com.bykv.vk.openvk.preload.dq.p.d.NULL) {
                    return new StringBuilder(dqVar.kk());
                }
                dqVar.no();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, StringBuilder sb) throws IOException {
                StringBuilder sb2 = sb;
                oxVar.d(sb2 == null ? null : sb2.toString());
            }
        };
        op = rVar8;
        ir = dq(StringBuilder.class, rVar8);
        r<StringBuffer> rVar9 = new r<StringBuffer>() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.q.5
            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ StringBuffer dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                if (dqVar.iw() != com.bykv.vk.openvk.preload.dq.p.d.NULL) {
                    return new StringBuffer(dqVar.kk());
                }
                dqVar.no();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, StringBuffer stringBuffer) throws IOException {
                StringBuffer stringBuffer2 = stringBuffer;
                oxVar.d(stringBuffer2 == null ? null : stringBuffer2.toString());
            }
        };
        u = rVar9;
        f600c = dq(StringBuffer.class, rVar9);
        r<URL> rVar10 = new r<URL>() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.q.6
            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ URL dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                if (dqVar.iw() == com.bykv.vk.openvk.preload.dq.p.d.NULL) {
                    dqVar.no();
                    return null;
                }
                String kk2 = dqVar.kk();
                if ("null".equals(kk2)) {
                    return null;
                }
                return new URL(kk2);
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, URL url) throws IOException {
                URL url2 = url;
                oxVar.d(url2 == null ? null : url2.toExternalForm());
            }
        };
        ce = rVar10;
        er = dq(URL.class, rVar10);
        r<URI> rVar11 = new r<URI>() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.q.7
            private static URI d(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                if (dqVar.iw() == com.bykv.vk.openvk.preload.dq.p.d.NULL) {
                    dqVar.no();
                    return null;
                }
                try {
                    String kk2 = dqVar.kk();
                    if ("null".equals(kk2)) {
                        return null;
                    }
                    return new URI(kk2);
                } catch (URISyntaxException e2) {
                    throw new com.bykv.vk.openvk.preload.dq.ig(e2);
                }
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ URI dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                return d(dqVar);
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, URI uri) throws IOException {
                URI uri2 = uri;
                oxVar.d(uri2 == null ? null : uri2.toASCIIString());
            }
        };
        wn = rVar11;
        j = dq(URI.class, rVar11);
        r<InetAddress> rVar12 = new r<InetAddress>() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.q.8
            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ InetAddress dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                if (dqVar.iw() != com.bykv.vk.openvk.preload.dq.p.d.NULL) {
                    return InetAddress.getByName(dqVar.kk());
                }
                dqVar.no();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, InetAddress inetAddress) throws IOException {
                InetAddress inetAddress2 = inetAddress;
                oxVar.d(inetAddress2 == null ? null : inetAddress2.getHostAddress());
            }
        };
        nh = rVar12;
        vf = d(InetAddress.class, rVar12);
        r<UUID> rVar13 = new r<UUID>() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.q.9
            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ UUID dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                if (dqVar.iw() != com.bykv.vk.openvk.preload.dq.p.d.NULL) {
                    return UUID.fromString(dqVar.kk());
                }
                dqVar.no();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, UUID uuid) throws IOException {
                UUID uuid2 = uuid;
                oxVar.d(uuid2 == null ? null : uuid2.toString());
            }
        };
        ob = rVar13;
        l = dq(UUID.class, rVar13);
        r<Currency> dq7 = new r<Currency>() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.q.10
            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ Currency dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                return Currency.getInstance(dqVar.kk());
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, Currency currency) throws IOException {
                oxVar.d(currency.getCurrencyCode());
            }
        }.dq();
        t = dq7;
        gx = dq(Currency.class, dq7);
        by = new i() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.q.11
            @Override // com.bykv.vk.openvk.preload.dq.i
            public final <T> r<T> dq(com.bykv.vk.openvk.preload.dq.iw iwVar, com.bykv.vk.openvk.preload.dq.ox.dq<T> dqVar) {
                if (dqVar.dq != Timestamp.class) {
                    return null;
                }
                final r<T> dq8 = iwVar.dq((Class) Date.class);
                return (r<T>) new r<Timestamp>() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.q.11.1
                    @Override // com.bykv.vk.openvk.preload.dq.r
                    public final /* synthetic */ Timestamp dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar2) throws IOException {
                        Date date = (Date) dq8.dq(dqVar2);
                        if (date != null) {
                            return new Timestamp(date.getTime());
                        }
                        return null;
                    }

                    @Override // com.bykv.vk.openvk.preload.dq.r
                    public final /* bridge */ /* synthetic */ void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, Timestamp timestamp) throws IOException {
                        dq8.dq(oxVar, timestamp);
                    }
                };
            }
        };
        final r<Calendar> rVar14 = new r<Calendar>() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.q.13
            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ Calendar dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                if (dqVar.iw() == com.bykv.vk.openvk.preload.dq.p.d.NULL) {
                    dqVar.no();
                    return null;
                }
                dqVar.ox();
                int i2 = 0;
                int i3 = 0;
                int i4 = 0;
                int i5 = 0;
                int i6 = 0;
                int i7 = 0;
                while (dqVar.iw() != com.bykv.vk.openvk.preload.dq.p.d.END_OBJECT) {
                    String ia2 = dqVar.ia();
                    int q2 = dqVar.q();
                    if ("year".equals(ia2)) {
                        i2 = q2;
                    } else if ("month".equals(ia2)) {
                        i3 = q2;
                    } else if ("dayOfMonth".equals(ia2)) {
                        i4 = q2;
                    } else if ("hourOfDay".equals(ia2)) {
                        i5 = q2;
                    } else if (dgk.UNIT_MINUTE.equals(ia2)) {
                        i6 = q2;
                    } else if (dgk.UNIT_SECOND.equals(ia2)) {
                        i7 = q2;
                    }
                }
                dqVar.p();
                return new GregorianCalendar(i2, i3, i4, i5, i6, i7);
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, Calendar calendar) throws IOException {
                if (calendar == null) {
                    oxVar.s();
                    return;
                }
                oxVar.ox();
                oxVar.dq("year");
                oxVar.dq(r4.get(1));
                oxVar.dq("month");
                oxVar.dq(r4.get(2));
                oxVar.dq("dayOfMonth");
                oxVar.dq(r4.get(5));
                oxVar.dq("hourOfDay");
                oxVar.dq(r4.get(11));
                oxVar.dq(dgk.UNIT_MINUTE);
                oxVar.dq(r4.get(12));
                oxVar.dq(dgk.UNIT_SECOND);
                oxVar.dq(r4.get(13));
                oxVar.p();
            }
        };
        uh = rVar14;
        final Class<Calendar> cls = Calendar.class;
        final Class<GregorianCalendar> cls2 = GregorianCalendar.class;
        xz = new i() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.q.21
            @Override // com.bykv.vk.openvk.preload.dq.i
            public final <T> r<T> dq(com.bykv.vk.openvk.preload.dq.iw iwVar, com.bykv.vk.openvk.preload.dq.ox.dq<T> dqVar) {
                Class<? super T> cls3 = dqVar.dq;
                if (cls3 == cls || cls3 == cls2) {
                    return rVar14;
                }
                return null;
            }

            public final String toString() {
                return "Factory[type=" + cls.getName() + "+" + cls2.getName() + ",adapter=" + rVar14 + "]";
            }
        };
        r<Locale> rVar15 = new r<Locale>() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.q.14
            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ Locale dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                if (dqVar.iw() == com.bykv.vk.openvk.preload.dq.p.d.NULL) {
                    dqVar.no();
                    return null;
                }
                StringTokenizer stringTokenizer = new StringTokenizer(dqVar.kk(), "_");
                String nextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                String nextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                String nextToken3 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                return (nextToken2 == null && nextToken3 == null) ? new Locale(nextToken) : nextToken3 == null ? new Locale(nextToken, nextToken2) : new Locale(nextToken, nextToken2, nextToken3);
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final /* synthetic */ void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, Locale locale) throws IOException {
                Locale locale2 = locale;
                oxVar.d(locale2 == null ? null : locale2.toString());
            }
        };
        yy = rVar15;
        v = dq(Locale.class, rVar15);
        r<com.bykv.vk.openvk.preload.dq.no> rVar16 = new r<com.bykv.vk.openvk.preload.dq.no>() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.q.15
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.bykv.vk.openvk.preload.dq.r
            /* renamed from: d, reason: merged with bridge method [inline-methods] */
            public com.bykv.vk.openvk.preload.dq.no dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                switch (AnonymousClass24.dq[dqVar.iw().ordinal()]) {
                    case 1:
                        return new f(new com.bykv.vk.openvk.preload.dq.d.mn(dqVar.kk()));
                    case 2:
                        return new f(Boolean.valueOf(dqVar.o()));
                    case 3:
                        return new f(dqVar.kk());
                    case 4:
                        dqVar.no();
                        return com.bykv.vk.openvk.preload.dq.mp.dq;
                    case 5:
                        com.bykv.vk.openvk.preload.dq.kk kkVar = new com.bykv.vk.openvk.preload.dq.kk();
                        dqVar.dq();
                        while (dqVar.s()) {
                            kkVar.dq(dq(dqVar));
                        }
                        dqVar.d();
                        return kkVar;
                    case 6:
                        com.bykv.vk.openvk.preload.dq.q qVar = new com.bykv.vk.openvk.preload.dq.q();
                        dqVar.ox();
                        while (dqVar.s()) {
                            qVar.dq(dqVar.ia(), dq(dqVar));
                        }
                        dqVar.p();
                        return qVar;
                    default:
                        throw new IllegalArgumentException();
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.bykv.vk.openvk.preload.dq.r
            public void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, com.bykv.vk.openvk.preload.dq.no noVar) throws IOException {
                if (noVar == null || (noVar instanceof com.bykv.vk.openvk.preload.dq.mp)) {
                    oxVar.s();
                    return;
                }
                if (noVar instanceof f) {
                    f mn2 = noVar.mn();
                    Object obj = mn2.dq;
                    if (obj instanceof Number) {
                        oxVar.dq(mn2.dq());
                        return;
                    } else if (obj instanceof Boolean) {
                        oxVar.dq(mn2.iw());
                        return;
                    } else {
                        oxVar.d(mn2.d());
                        return;
                    }
                }
                boolean z = noVar instanceof com.bykv.vk.openvk.preload.dq.kk;
                if (z) {
                    oxVar.dq();
                    if (!z) {
                        throw new IllegalStateException("Not a JSON Array: ".concat(String.valueOf(noVar)));
                    }
                    Iterator<com.bykv.vk.openvk.preload.dq.no> it = ((com.bykv.vk.openvk.preload.dq.kk) noVar).iterator();
                    while (it.hasNext()) {
                        dq(oxVar, it.next());
                    }
                    oxVar.d();
                    return;
                }
                boolean z2 = noVar instanceof com.bykv.vk.openvk.preload.dq.q;
                if (!z2) {
                    throw new IllegalArgumentException("Couldn't write " + noVar.getClass());
                }
                oxVar.ox();
                if (!z2) {
                    throw new IllegalStateException("Not a JSON Object: ".concat(String.valueOf(noVar)));
                }
                for (Map.Entry<String, com.bykv.vk.openvk.preload.dq.no> entry : ((com.bykv.vk.openvk.preload.dq.q) noVar).dq.entrySet()) {
                    oxVar.dq(entry.getKey());
                    dq(oxVar, entry.getValue());
                }
                oxVar.p();
            }
        };
        ds = rVar16;
        vw = d(com.bykv.vk.openvk.preload.dq.no.class, rVar16);
        ha = new i() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.q.17
            @Override // com.bykv.vk.openvk.preload.dq.i
            public final <T> r<T> dq(com.bykv.vk.openvk.preload.dq.iw iwVar, com.bykv.vk.openvk.preload.dq.ox.dq<T> dqVar) {
                Class<? super T> cls3 = dqVar.dq;
                if (!Enum.class.isAssignableFrom(cls3) || cls3 == Enum.class) {
                    return null;
                }
                if (!cls3.isEnum()) {
                    cls3 = cls3.getSuperclass();
                }
                return new dq(cls3);
            }
        };
    }

    private static <T1> i d(final Class<T1> cls, final r<T1> rVar) {
        return new i() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.q.22
            @Override // com.bykv.vk.openvk.preload.dq.i
            public final <T2> r<T2> dq(com.bykv.vk.openvk.preload.dq.iw iwVar, com.bykv.vk.openvk.preload.dq.ox.dq<T2> dqVar) {
                final Class<? super T2> cls2 = dqVar.dq;
                if (cls.isAssignableFrom(cls2)) {
                    return (r<T2>) new r<T1>() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.q.22.1
                        @Override // com.bykv.vk.openvk.preload.dq.r
                        public final T1 dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar2) throws IOException {
                            T1 t1 = (T1) rVar.dq(dqVar2);
                            if (t1 == null || cls2.isInstance(t1)) {
                                return t1;
                            }
                            throw new cd("Expected a " + cls2.getName() + " but was " + t1.getClass().getName());
                        }

                        @Override // com.bykv.vk.openvk.preload.dq.r
                        public final void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, T1 t1) throws IOException {
                            rVar.dq(oxVar, t1);
                        }
                    };
                }
                return null;
            }

            public final String toString() {
                return "Factory[typeHierarchy=" + cls.getName() + ",adapter=" + rVar + "]";
            }
        };
    }

    public static <TT> i dq(final com.bykv.vk.openvk.preload.dq.ox.dq<TT> dqVar, final r<TT> rVar) {
        return new i() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.q.18
            @Override // com.bykv.vk.openvk.preload.dq.i
            public final <T> r<T> dq(com.bykv.vk.openvk.preload.dq.iw iwVar, com.bykv.vk.openvk.preload.dq.ox.dq<T> dqVar2) {
                if (dqVar2.equals(com.bykv.vk.openvk.preload.dq.ox.dq.this)) {
                    return rVar;
                }
                return null;
            }
        };
    }

    public static <TT> i dq(final Class<TT> cls, final r<TT> rVar) {
        return new i() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.q.19
            @Override // com.bykv.vk.openvk.preload.dq.i
            public final <T> r<T> dq(com.bykv.vk.openvk.preload.dq.iw iwVar, com.bykv.vk.openvk.preload.dq.ox.dq<T> dqVar) {
                if (dqVar.dq == cls) {
                    return rVar;
                }
                return null;
            }

            public final String toString() {
                return "Factory[type=" + cls.getName() + ",adapter=" + rVar + "]";
            }
        };
    }

    public static <TT> i dq(final Class<TT> cls, final Class<TT> cls2, final r<? super TT> rVar) {
        return new i() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.q.20
            @Override // com.bykv.vk.openvk.preload.dq.i
            public final <T> r<T> dq(com.bykv.vk.openvk.preload.dq.iw iwVar, com.bykv.vk.openvk.preload.dq.ox.dq<T> dqVar) {
                Class<? super T> cls3 = dqVar.dq;
                if (cls3 == cls || cls3 == cls2) {
                    return rVar;
                }
                return null;
            }

            public final String toString() {
                return "Factory[type=" + cls2.getName() + "+" + cls.getName() + ",adapter=" + rVar + "]";
            }
        };
    }
}
