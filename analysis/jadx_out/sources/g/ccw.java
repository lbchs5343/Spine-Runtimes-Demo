package g;

import java.io.Closeable;
import java.lang.reflect.Type;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;

/* loaded from: classes.dex */
public final class ccw implements Closeable {

    /* renamed from: b, reason: collision with root package name */
    public fpd[] f12657b;

    /* renamed from: g, reason: collision with root package name */
    public SimpleDateFormat f12662g;
    public final fzg h;
    public final gqc i;
    public ArrayList j;
    public final mh k;
    public fpd l;

    /* renamed from: d, reason: collision with root package name */
    public final String f12659d = ex.f16308b;

    /* renamed from: a, reason: collision with root package name */
    public int f12656a = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f12658c = 0;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f12661f = null;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f12660e = null;

    public ccw(fzg fzgVar, mh mhVar) {
        this.h = fzgVar;
        this.k = mhVar;
        this.i = mhVar.f19644c;
        char c2 = fzgVar.l;
        String str = fzgVar.k;
        int i = fzgVar.j;
        if (c2 == '{') {
            int i2 = fzgVar.n + 1;
            fzgVar.n = i2;
            fzgVar.l = i2 < i ? str.charAt(i2) : (char) 26;
            fzgVar.o = 12;
            return;
        }
        if (c2 != '[') {
            fzgVar.az();
            return;
        }
        int i3 = fzgVar.n + 1;
        fzgVar.n = i3;
        fzgVar.l = i3 < i ? str.charAt(i3) : (char) 26;
        fzgVar.o = 14;
    }

    public final void aa(Type type, Collection collection, Object obj) {
        cma d2;
        String str;
        eyg eygVar = eyg.f16367e;
        fzg fzgVar = this.h;
        int i = fzgVar.o;
        if (i == 21 || i == 22) {
            fzgVar.az();
        }
        if (fzgVar.o != 14) {
            throw new bfj("exepct '[', but " + gs.h(fzgVar.o) + ", " + fzgVar.ac());
        }
        Class cls = Integer.TYPE;
        if (cls == type) {
            fzgVar.bg(2);
            d2 = eygVar;
        } else if (String.class == type) {
            d2 = eyg.f16368f;
            fzgVar.bg(4);
        } else {
            d2 = this.k.d(type);
            fzgVar.bg(12);
        }
        fpd fpdVar = this.l;
        if (!fzgVar.v) {
            y(fpdVar, collection, obj);
        }
        int i2 = 0;
        while (true) {
            try {
                if ((fzgVar.w & cbj.AllowArbitraryCommas.mask) != 0) {
                    while (fzgVar.o == 16) {
                        fzgVar.az();
                    }
                }
                int i3 = fzgVar.o;
                if (i3 == 15) {
                    this.l = fpdVar;
                    fzgVar.bg(16);
                    return;
                }
                Object obj2 = null;
                String obj3 = null;
                if (cls == type) {
                    collection.add(eygVar.g(this, null, null));
                } else if (String.class == type) {
                    if (i3 == 4) {
                        str = fzgVar.bj();
                        fzgVar.bg(16);
                    } else {
                        Object x = x(null);
                        if (x != null) {
                            obj3 = x.toString();
                        }
                        str = obj3;
                    }
                    collection.add(str);
                } else {
                    if (i3 == 8) {
                        fzgVar.az();
                    } else {
                        obj2 = d2.g(this, type, Integer.valueOf(i2));
                    }
                    collection.add(obj2);
                    if (this.f12658c == 1) {
                        n(collection);
                    }
                }
                if (fzgVar.o == 16) {
                    fzgVar.az();
                }
                i2++;
            } catch (Throwable th) {
                this.l = fpdVar;
                throw th;
            }
        }
    }

    public final void ab() {
        ArrayList arrayList = this.j;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ggl gglVar = (ggl) this.j.get(i);
            bgf bgfVar = gglVar.f18103d;
            if (bgfVar != null) {
                fpd fpdVar = gglVar.f18100a;
                Object obj = null;
                Object obj2 = fpdVar != null ? fpdVar.f17190f : null;
                String str = gglVar.f18102c;
                if (str.startsWith("$")) {
                    for (int i2 = 0; i2 < this.f12656a; i2++) {
                        if (str.equals(this.f12657b[i2].toString())) {
                            obj = this.f12657b[i2].f17190f;
                        }
                    }
                } else {
                    obj = gglVar.f18101b.f17190f;
                }
                bgfVar.ag(obj2, obj);
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        fzg fzgVar = this.h;
        try {
            if ((fzgVar.w & cbj.AutoCloseSource.mask) != 0 && fzgVar.o != 20) {
                throw new bfj("not close json text, token : ".concat(gs.h(fzgVar.o)));
            }
        } finally {
            fzgVar.aw();
        }
    }

    public final Object m() {
        return x(null);
    }

    public final void n(Collection collection) {
        if (collection instanceof List) {
            ggl t = t();
            t.f18103d = new cne(this, (List) collection, collection.size() - 1);
            t.f18100a = this.l;
            this.f12658c = 0;
            return;
        }
        ggl t2 = t();
        t2.f18103d = new cne(collection);
        t2.f18100a = this.l;
        this.f12658c = 0;
    }

    public final void o(Object obj, Map map) {
        cne cneVar = new cne(obj, map);
        ggl t = t();
        t.f18103d = cneVar;
        t.f18100a = this.l;
        this.f12658c = 0;
    }

    public final Object p(String str, Type type) {
        fzg fzgVar = this.h;
        int i = fzgVar.o;
        if (i == 8) {
            fzgVar.az();
            return null;
        }
        if (i == 4) {
            if (type == byte[].class) {
                byte[] ao = fzgVar.ao();
                fzgVar.az();
                return ao;
            }
            if (type == char[].class) {
                String bj = fzgVar.bj();
                fzgVar.az();
                return bj.toCharArray();
            }
        }
        try {
            return this.k.d(type).g(this, type, str);
        } catch (bfj e2) {
            throw e2;
        } catch (Exception e3) {
            throw new bfj(e3.getMessage(), (Throwable) e3);
        }
    }

    public final String q() {
        fzg fzgVar = this.h;
        int i = fzgVar.o;
        if (i != 4) {
            if (i == 2) {
                String ay = fzgVar.ay();
                fzgVar.bg(16);
                return ay;
            }
            Object m = m();
            if (m == null) {
                return null;
            }
            return m.toString();
        }
        String bj = fzgVar.bj();
        char c2 = fzgVar.l;
        if (c2 == ',') {
            int i2 = fzgVar.n + 1;
            fzgVar.n = i2;
            fzgVar.l = i2 < fzgVar.j ? fzgVar.k.charAt(i2) : (char) 26;
            fzgVar.o = 16;
            return bj;
        }
        if (c2 == ']') {
            int i3 = fzgVar.n + 1;
            fzgVar.n = i3;
            fzgVar.l = i3 < fzgVar.j ? fzgVar.k.charAt(i3) : (char) 26;
            fzgVar.o = 15;
            return bj;
        }
        if (c2 != '}') {
            fzgVar.az();
            return bj;
        }
        int i4 = fzgVar.n + 1;
        fzgVar.n = i4;
        fzgVar.l = i4 < fzgVar.j ? fzgVar.k.charAt(i4) : (char) 26;
        fzgVar.o = 13;
        return bj;
    }

    public final void r(Object obj) {
        Object g2;
        eyg eygVar = eyg.f16367e;
        Class<?> cls = obj.getClass();
        mh mhVar = this.k;
        cma d2 = mhVar.d(cls);
        dhm dhmVar = d2 instanceof dhm ? (dhm) d2 : null;
        fzg fzgVar = this.h;
        int i = fzgVar.o;
        if (i != 12 && i != 16) {
            throw new bfj("syntax error, expect {, actual ".concat(gs.h(fzgVar.o)));
        }
        while (true) {
            String bl = fzgVar.bl(this.i);
            if (bl == null) {
                int i2 = fzgVar.o;
                if (i2 == 13) {
                    fzgVar.bg(16);
                    return;
                } else if (i2 == 16 && (fzgVar.w & cbj.AllowArbitraryCommas.mask) != 0) {
                }
            }
            bgf f2 = dhmVar != null ? dhmVar.f(bl) : null;
            if (f2 != null) {
                bnu bnuVar = (bnu) f2.z;
                Class cls2 = bnuVar.f11884b;
                Type type = bnuVar.f11883a;
                if (cls2 == Integer.TYPE) {
                    fzgVar.bp();
                    g2 = eygVar.g(this, type, null);
                } else if (cls2 == String.class) {
                    fzgVar.bp();
                    g2 = q();
                } else if (cls2 == Long.TYPE) {
                    fzgVar.bp();
                    g2 = eygVar.g(this, type, null);
                } else {
                    cma e2 = mhVar.e(type, cls2);
                    fzgVar.bp();
                    g2 = e2.g(this, type, null);
                }
                f2.ag(obj, g2);
                int i3 = fzgVar.o;
                if (i3 != 16 && i3 == 13) {
                    fzgVar.bg(16);
                    return;
                }
            } else {
                if ((fzgVar.w & cbj.IgnoreNotMatch.mask) == 0) {
                    throw new bfj("setter not found, class " + cls.getName() + ", property " + bl);
                }
                fzgVar.bp();
                x(null);
                if (fzgVar.o == 13) {
                    fzgVar.az();
                    return;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x02ea, code lost:
    
        if ((r24 instanceof java.lang.Integer) != false) goto L177;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x02ec, code lost:
    
        r23.l = (g.fpd) r3.f17187c;
        r3 = r23.f12657b;
        r5 = r23.f12656a - 1;
        r3[r5] = r17;
        r23.f12656a = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0302, code lost:
    
        if (r25.size() <= 0) goto L183;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0304, code lost:
    
        r0 = g.dtu.j(r25, r10, r4);
        r(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x030b, code lost:
    
        if (r22 != false) goto L182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x030d, code lost:
    
        r23.l = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x030f, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0310, code lost:
    
        r0 = r4.d(r10).g(r23, r10, r24);
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0318, code lost:
    
        if (r22 != false) goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x031a, code lost:
    
        r23.l = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x031c, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x0611, code lost:
    
        return r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x027c, code lost:
    
        r7 = r5.ax(r14, '\"');
        r4.getClass();
        r10 = g.dtu.m(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0289, code lost:
    
        if (r10 != null) goto L405;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0298, code lost:
    
        r5.bg(16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x02a1, code lost:
    
        if (r5.o != 13) goto L172;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x02a3, code lost:
    
        r5.bg(16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x02a6, code lost:
    
        r0 = r4.d(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x02ac, code lost:
    
        if ((r0 instanceof g.dhm) == false) goto L158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x02ae, code lost:
    
        r0 = ((g.dhm) r0).j(r23, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x02b9, code lost:
    
        if (r0 != null) goto L167;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x02bd, code lost:
    
        if (r10 != java.lang.Cloneable.class) goto L163;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x02bf, code lost:
    
        r0 = new java.util.HashMap();
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x02cb, code lost:
    
        if ("java.util.Collections$EmptyMap".equals(r7) == false) goto L166;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x02cd, code lost:
    
        r0 = java.util.Collections.EMPTY_MAP;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x02d0, code lost:
    
        r0 = r10.newInstance();
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x02d4, code lost:
    
        if (r22 != false) goto L169;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x02d6, code lost:
    
        r23.l = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x02d8, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x02b7, code lost:
    
        r0 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x02b5, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x02e0, code lost:
    
        throw new g.bfj("create instance error", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x02e1, code lost:
    
        r23.f12658c = 2;
        r3 = r23.l;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x02e6, code lost:
    
        if (r3 == null) goto L177;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v70, types: [java.util.Date] */
    /* JADX WARN: Type inference failed for: r23v0, types: [g.ccw] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object s(Object obj, Map map) {
        Map map2;
        fpd fpdVar;
        boolean z;
        boolean z2;
        int i;
        boolean z3;
        Object m;
        boolean z4;
        char c2;
        Object obj2;
        Object obj3;
        String ax;
        mh mhVar = this.k;
        fzg fzgVar = this.h;
        int i2 = fzgVar.o;
        int i3 = fzgVar.w;
        int i4 = fzgVar.j;
        String str = fzgVar.k;
        if (i2 == 8) {
            fzgVar.az();
            return null;
        }
        if (i2 != 12 && i2 != 16) {
            throw new bfj("syntax error, expect {, actual " + fzgVar.bb() + ", " + fzgVar.ac());
        }
        if (map instanceof cof) {
            map2 = ((cof) map).k();
            fpdVar = null;
            z = true;
        } else {
            map2 = null;
            fpdVar = null;
            z = false;
        }
        boolean z5 = (cbj.AllowISO8601DateFormat.mask & i3) != 0;
        boolean z6 = fzgVar.v;
        fpd fpdVar2 = this.l;
        boolean z7 = false;
        while (true) {
            while (true) {
                try {
                    char c3 = fzgVar.l;
                    if (c3 != '\"' && c3 != '}') {
                        fzgVar.aj();
                        c3 = fzgVar.l;
                    }
                    while (c3 == ',' && (cbj.AllowArbitraryCommas.mask & i3) != 0) {
                        fzgVar.ag();
                        fzgVar.aj();
                        c3 = fzgVar.l;
                    }
                    gqc gqcVar = this.i;
                    i = i3;
                    z3 = z5;
                    if (c3 == '\"') {
                        String ax2 = fzgVar.ax(gqcVar, '\"');
                        z2 = z6;
                        m = ax2;
                        if (fzgVar.l != ':') {
                            try {
                                fzgVar.aj();
                                if (fzgVar.l != ':') {
                                    throw new bfj("expect ':' at " + fzgVar.t + ", name " + ((Object) ax2));
                                }
                                m = ax2;
                            } catch (Throwable th) {
                                th = th;
                                if (!z2) {
                                    this.l = fpdVar2;
                                }
                                throw th;
                            }
                        }
                        z4 = false;
                    } else {
                        z2 = z6;
                        if (c3 == '}') {
                            int i5 = fzgVar.n + 1;
                            fzgVar.n = i5;
                            fzgVar.l = i5 >= i4 ? (char) 26 : str.charAt(i5);
                            fzgVar.x = 0;
                            fzgVar.bg(16);
                            if (!z2) {
                                this.l = fpdVar2;
                                return map;
                            }
                        } else {
                            if (c3 == '\'') {
                                if ((i & cbj.AllowSingleQuotes.mask) == 0) {
                                    throw new bfj("syntax error, " + fzgVar.ac());
                                }
                                String ax3 = fzgVar.ax(gqcVar, '\'');
                                if (fzgVar.l != ':') {
                                    fzgVar.aj();
                                }
                                if (fzgVar.l != ':') {
                                    throw new bfj("expect ':' at " + fzgVar.t);
                                }
                                m = ax3;
                            } else {
                                if (c3 == 26) {
                                    throw new bfj("syntax error, " + fzgVar.ac());
                                }
                                if (c3 == ',') {
                                    throw new bfj("syntax error, " + fzgVar.ac());
                                }
                                if ((c3 < '0' || c3 > '9') && c3 != '-') {
                                    if (c3 != '{' && c3 != '[') {
                                        if ((i & cbj.AllowUnQuotedFieldNames.mask) == 0) {
                                            throw new bfj("syntax error, " + fzgVar.ac());
                                        }
                                        String at = fzgVar.at(gqcVar);
                                        fzgVar.aj();
                                        char c4 = fzgVar.l;
                                        m = at;
                                        if (c4 != ':') {
                                            throw new bfj("expect ':' at " + fzgVar.n + ", actual " + c4);
                                        }
                                        if (z) {
                                            m = at.toString();
                                        }
                                    }
                                    fzgVar.az();
                                    m = m();
                                    if (z) {
                                        m = m.toString();
                                    }
                                    z4 = true;
                                }
                                fzgVar.x = 0;
                                fzgVar.bm();
                                try {
                                    Object bf = fzgVar.o == 2 ? fzgVar.bf() : fzgVar.bo(true);
                                    if (z) {
                                        bf = bf.toString();
                                    }
                                    m = bf;
                                    if (fzgVar.l != ':') {
                                        throw new bfj("parse number key error, " + fzgVar.ac());
                                    }
                                } catch (NumberFormatException unused) {
                                    throw new bfj("parse number key error, " + fzgVar.ac());
                                }
                            }
                            z4 = false;
                        }
                    }
                    if (z4) {
                        c2 = fzgVar.l;
                    } else {
                        int i6 = fzgVar.n + 1;
                        fzgVar.n = i6;
                        c2 = i6 >= i4 ? (char) 26 : str.charAt(i6);
                        fzgVar.l = c2;
                        while (c2 <= ' ') {
                            if (c2 != ' ' && c2 != '\n' && c2 != '\r' && c2 != '\t' && c2 != '\f') {
                                if (c2 != '\b') {
                                    break;
                                }
                            }
                            fzgVar.ag();
                            c2 = fzgVar.l;
                        }
                    }
                    fzgVar.x = 0;
                    if (m == "@type" && !fzgVar.an(cbj.DisableSpecialKeyDetect)) {
                        break;
                    }
                    if (m == "$ref" && !fzgVar.an(cbj.DisableSpecialKeyDetect)) {
                        fzgVar.bg(4);
                        if (fzgVar.o != 4) {
                            throw new bfj("illegal ref, " + gs.h(fzgVar.o));
                        }
                        String bj = fzgVar.bj();
                        fzgVar.bg(13);
                        if ("@".equals(bj)) {
                            fpd fpdVar3 = this.l;
                            if (fpdVar3 != null) {
                                obj3 = fpdVar3.f17190f;
                                if (!(obj3 instanceof Object[]) && !(obj3 instanceof Collection)) {
                                    fpd fpdVar4 = (fpd) fpdVar3.f17187c;
                                    if (fpdVar4 != null) {
                                        obj2 = fpdVar4.f17190f;
                                    }
                                }
                                obj2 = obj3;
                            }
                            obj2 = fpdVar;
                        } else {
                            if ("..".equals(bj)) {
                                obj3 = fpdVar2.f17190f;
                                if (obj3 == null) {
                                    z(new ggl(fpdVar2, bj));
                                    this.f12658c = 1;
                                }
                                obj2 = obj3;
                            } else if ("$".equals(bj)) {
                                fpd fpdVar5 = fpdVar2;
                                while (true) {
                                    fpd fpdVar6 = (fpd) fpdVar5.f17187c;
                                    if (fpdVar6 == null) {
                                        break;
                                    }
                                    fpdVar5 = fpdVar6;
                                }
                                Object obj4 = fpdVar5.f17190f;
                                if (obj4 != null) {
                                    obj2 = obj4;
                                } else {
                                    z(new ggl(fpdVar5, bj));
                                    this.f12658c = 1;
                                }
                            } else {
                                z(new ggl(fpdVar2, bj));
                                this.f12658c = 1;
                            }
                            obj2 = fpdVar;
                        }
                        if (fzgVar.o == 13) {
                            fzgVar.bg(16);
                            if (!z2) {
                                this.l = fpdVar2;
                            }
                            return obj2;
                        }
                        throw new bfj("syntax error, " + fzgVar.ac());
                    }
                    if (!z2 && !z7) {
                        fpd y = y(this.l, map, obj);
                        if (fpdVar2 == null) {
                            fpdVar2 = y;
                        }
                        z7 = true;
                    }
                    if (c2 == '\"') {
                        String ae = fzgVar.ae();
                        String str2 = ae;
                        if (z3) {
                            fzg fzgVar2 = new fzg(ae);
                            String str3 = ae;
                            if (fzgVar2.am(true)) {
                                str3 = fzgVar2.m.getTime();
                            }
                            fzgVar2.aw();
                            str2 = str3;
                        }
                        if (map2 != null) {
                            map2.put(m, str2);
                        } else {
                            map.put(m, str2);
                        }
                    } else if ((c2 < '0' || c2 > '9') && c2 != '-') {
                        if (c2 == '[') {
                            fzgVar.o = 14;
                            int i7 = fzgVar.n + 1;
                            fzgVar.n = i7;
                            fzgVar.l = i7 >= i4 ? (char) 26 : str.charAt(i7);
                            ArrayList arrayList = new ArrayList();
                            u(arrayList, m);
                            grv grvVar = new grv(arrayList);
                            if (map2 != null) {
                                map2.put(m, grvVar);
                            } else {
                                map.put(m, grvVar);
                            }
                            int i8 = fzgVar.o;
                            if (i8 == 13) {
                                fzgVar.bg(16);
                                if (!z2) {
                                    this.l = fpdVar2;
                                    return map;
                                }
                            } else if (i8 != 16) {
                                throw new bfj("syntax error, " + fzgVar.ac());
                            }
                        } else if (c2 == '{') {
                            int i9 = fzgVar.n + 1;
                            fzgVar.n = i9;
                            fzgVar.l = i9 >= i4 ? (char) 26 : str.charAt(i9);
                            fzgVar.o = 12;
                            boolean z8 = obj instanceof Integer;
                            cof cofVar = (i & cbj.OrderedField.mask) != 0 ? new cof(new LinkedHashMap()) : new cof();
                            fpd y2 = (z2 || z8) ? fpdVar : y(fpdVar2, cofVar, m);
                            Object s = s(m, cofVar);
                            if (y2 != null && cofVar != s) {
                                y2.f17190f = map;
                            }
                            if (this.f12658c == 1) {
                                o(m.toString(), map);
                            }
                            if (map2 != null) {
                                map2.put(m, s);
                            } else {
                                map.put(m, s);
                            }
                            if (z8) {
                                y(fpdVar2, s, m);
                            }
                            int i10 = fzgVar.o;
                            if (i10 == 13) {
                                fzgVar.bg(16);
                                if (!z2) {
                                    this.l = fpdVar2;
                                }
                                if (!z2) {
                                    this.l = fpdVar2;
                                    return map;
                                }
                            } else if (i10 != 16) {
                                throw new bfj("syntax error, " + fzgVar.ac());
                            }
                        } else if (c2 == 't') {
                            if (str.startsWith("true", fzgVar.n)) {
                                fzgVar.n += 3;
                                fzgVar.ag();
                                map.put(m, Boolean.TRUE);
                            }
                        } else if (c2 != 'f') {
                            fzgVar.az();
                            Object m2 = m();
                            if (map.getClass() == cof.class) {
                                m = m.toString();
                            }
                            map.put(m, m2);
                            int i11 = fzgVar.o;
                            if (i11 == 13) {
                                fzgVar.bg(16);
                                if (!z2) {
                                    this.l = fpdVar2;
                                }
                                return map;
                            }
                            if (i11 != 16) {
                                throw new bfj("syntax error, " + fzgVar.ac());
                            }
                        } else if (str.startsWith("false", fzgVar.n)) {
                            fzgVar.n += 4;
                            fzgVar.ag();
                            map.put(m, Boolean.FALSE);
                        }
                        i3 = i;
                        z5 = z3;
                        z6 = z2;
                    } else {
                        map.put(m, fzgVar.bi());
                    }
                    char c5 = fzgVar.l;
                    if (c5 != ',' && c5 != '}') {
                        fzgVar.aj();
                        c5 = fzgVar.l;
                    }
                    if (c5 == ',') {
                        int i12 = fzgVar.n + 1;
                        fzgVar.n = i12;
                        fzgVar.l = i12 >= i4 ? (char) 26 : str.charAt(i12);
                        i3 = i;
                        z5 = z3;
                        z6 = z2;
                    } else {
                        if (c5 != '}') {
                            throw new bfj("syntax error, " + fzgVar.ac());
                        }
                        int i13 = fzgVar.n + 1;
                        fzgVar.n = i13;
                        char charAt = i13 >= i4 ? (char) 26 : str.charAt(i13);
                        fzgVar.l = charAt;
                        fzgVar.x = 0;
                        if (charAt == ',') {
                            int i14 = fzgVar.n + 1;
                            fzgVar.n = i14;
                            fzgVar.l = i14 >= i4 ? (char) 26 : str.charAt(i14);
                            fzgVar.o = 16;
                        } else if (charAt == '}') {
                            int i15 = fzgVar.n + 1;
                            fzgVar.n = i15;
                            fzgVar.l = i15 >= i4 ? (char) 26 : str.charAt(i15);
                            fzgVar.o = 13;
                        } else if (charAt == ']') {
                            int i16 = fzgVar.n + 1;
                            fzgVar.n = i16;
                            fzgVar.l = i16 >= i4 ? (char) 26 : str.charAt(i16);
                            fzgVar.o = 15;
                        } else {
                            fzgVar.az();
                        }
                        if (!z2) {
                            y(this.l, map, obj);
                        }
                        if (!z2) {
                            this.l = fpdVar2;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    z2 = z6;
                }
            }
            map.put("@type", ax);
            i3 = i;
            z5 = z3;
            z6 = z2;
        }
    }

    public final ggl t() {
        return (ggl) this.j.get(r0.size() - 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:144:0x01bb A[Catch: all -> 0x0045, TryCatch #0 {all -> 0x0045, blocks: (B:11:0x0028, B:14:0x003a, B:21:0x004a, B:24:0x0058, B:28:0x0074, B:30:0x0078, B:32:0x0082, B:35:0x0090, B:37:0x0099, B:43:0x00a5, B:44:0x008c, B:48:0x00ac, B:51:0x00ba, B:53:0x00c3, B:54:0x00c6, B:59:0x00b6, B:46:0x00ce, B:60:0x00d1, B:62:0x00d5, B:64:0x00de, B:88:0x010c, B:90:0x01c5, B:92:0x01cc, B:93:0x01cf, B:95:0x01d3, B:97:0x01d7, B:102:0x01e8, B:105:0x01f5, B:108:0x0207, B:110:0x0203, B:111:0x020a, B:114:0x0113, B:119:0x011b, B:120:0x0128, B:122:0x012f, B:123:0x0136, B:124:0x0137, B:126:0x0142, B:127:0x0153, B:128:0x014d, B:129:0x015c, B:130:0x0163, B:131:0x016c, B:132:0x0175, B:134:0x0188, B:136:0x0193, B:137:0x019a, B:138:0x019f, B:140:0x01aa, B:142:0x01b7, B:143:0x01b1, B:144:0x01bb, B:146:0x0054, B:147:0x005d, B:148:0x0062, B:151:0x006d), top: B:10:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0082 A[Catch: all -> 0x0045, TryCatch #0 {all -> 0x0045, blocks: (B:11:0x0028, B:14:0x003a, B:21:0x004a, B:24:0x0058, B:28:0x0074, B:30:0x0078, B:32:0x0082, B:35:0x0090, B:37:0x0099, B:43:0x00a5, B:44:0x008c, B:48:0x00ac, B:51:0x00ba, B:53:0x00c3, B:54:0x00c6, B:59:0x00b6, B:46:0x00ce, B:60:0x00d1, B:62:0x00d5, B:64:0x00de, B:88:0x010c, B:90:0x01c5, B:92:0x01cc, B:93:0x01cf, B:95:0x01d3, B:97:0x01d7, B:102:0x01e8, B:105:0x01f5, B:108:0x0207, B:110:0x0203, B:111:0x020a, B:114:0x0113, B:119:0x011b, B:120:0x0128, B:122:0x012f, B:123:0x0136, B:124:0x0137, B:126:0x0142, B:127:0x0153, B:128:0x014d, B:129:0x015c, B:130:0x0163, B:131:0x016c, B:132:0x0175, B:134:0x0188, B:136:0x0193, B:137:0x019a, B:138:0x019f, B:140:0x01aa, B:142:0x01b7, B:143:0x01b1, B:144:0x01bb, B:146:0x0054, B:147:0x005d, B:148:0x0062, B:151:0x006d), top: B:10:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01cc A[Catch: all -> 0x0045, TryCatch #0 {all -> 0x0045, blocks: (B:11:0x0028, B:14:0x003a, B:21:0x004a, B:24:0x0058, B:28:0x0074, B:30:0x0078, B:32:0x0082, B:35:0x0090, B:37:0x0099, B:43:0x00a5, B:44:0x008c, B:48:0x00ac, B:51:0x00ba, B:53:0x00c3, B:54:0x00c6, B:59:0x00b6, B:46:0x00ce, B:60:0x00d1, B:62:0x00d5, B:64:0x00de, B:88:0x010c, B:90:0x01c5, B:92:0x01cc, B:93:0x01cf, B:95:0x01d3, B:97:0x01d7, B:102:0x01e8, B:105:0x01f5, B:108:0x0207, B:110:0x0203, B:111:0x020a, B:114:0x0113, B:119:0x011b, B:120:0x0128, B:122:0x012f, B:123:0x0136, B:124:0x0137, B:126:0x0142, B:127:0x0153, B:128:0x014d, B:129:0x015c, B:130:0x0163, B:131:0x016c, B:132:0x0175, B:134:0x0188, B:136:0x0193, B:137:0x019a, B:138:0x019f, B:140:0x01aa, B:142:0x01b7, B:143:0x01b1, B:144:0x01bb, B:146:0x0054, B:147:0x005d, B:148:0x0062, B:151:0x006d), top: B:10:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01d3 A[Catch: all -> 0x0045, TryCatch #0 {all -> 0x0045, blocks: (B:11:0x0028, B:14:0x003a, B:21:0x004a, B:24:0x0058, B:28:0x0074, B:30:0x0078, B:32:0x0082, B:35:0x0090, B:37:0x0099, B:43:0x00a5, B:44:0x008c, B:48:0x00ac, B:51:0x00ba, B:53:0x00c3, B:54:0x00c6, B:59:0x00b6, B:46:0x00ce, B:60:0x00d1, B:62:0x00d5, B:64:0x00de, B:88:0x010c, B:90:0x01c5, B:92:0x01cc, B:93:0x01cf, B:95:0x01d3, B:97:0x01d7, B:102:0x01e8, B:105:0x01f5, B:108:0x0207, B:110:0x0203, B:111:0x020a, B:114:0x0113, B:119:0x011b, B:120:0x0128, B:122:0x012f, B:123:0x0136, B:124:0x0137, B:126:0x0142, B:127:0x0153, B:128:0x014d, B:129:0x015c, B:130:0x0163, B:131:0x016c, B:132:0x0175, B:134:0x0188, B:136:0x0193, B:137:0x019a, B:138:0x019f, B:140:0x01aa, B:142:0x01b7, B:143:0x01b1, B:144:0x01bb, B:146:0x0054, B:147:0x005d, B:148:0x0062, B:151:0x006d), top: B:10:0x0028 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void u(Collection collection, Object obj) {
        boolean z;
        int i;
        int i2;
        Object obj2;
        Object obj3;
        char c2;
        fzg fzgVar = this.h;
        int i3 = fzgVar.o;
        String str = fzgVar.k;
        int i4 = fzgVar.j;
        if (i3 == 21 || i3 == 22) {
            fzgVar.az();
            i3 = fzgVar.o;
        }
        if (i3 != 14) {
            throw new bfj("syntax error, expect [, actual " + gs.h(i3) + ", pos " + fzgVar.t);
        }
        boolean z2 = fzgVar.v;
        fpd fpdVar = this.l;
        if (!z2) {
            y(fpdVar, collection, obj);
        }
        try {
            char c3 = fzgVar.l;
            char c4 = ']';
            if (c3 != '\"') {
                if (c3 == ']') {
                    fzgVar.ag();
                    fzgVar.bg(16);
                    if (z2) {
                        return;
                    } else {
                        return;
                    }
                } else if (c3 == '{') {
                    int i5 = fzgVar.n + 1;
                    fzgVar.n = i5;
                    fzgVar.l = i5 >= i4 ? (char) 26 : str.charAt(i5);
                    fzgVar.o = 12;
                } else {
                    fzgVar.bg(12);
                }
            } else if ((fzgVar.w & cbj.AllowISO8601DateFormat.mask) == 0) {
                z = true;
                i = 0;
                while (true) {
                    if (z && fzgVar.l == '\"') {
                        String ae = fzgVar.ae();
                        c2 = fzgVar.l;
                        if (c2 != ',') {
                            int i6 = fzgVar.n + 1;
                            fzgVar.n = i6;
                            char charAt = i6 >= i4 ? (char) 26 : str.charAt(i6);
                            fzgVar.l = charAt;
                            collection.add(ae);
                            if (this.f12658c == 1) {
                                n(collection);
                            }
                            if (charAt == '\"') {
                                i++;
                                c4 = ']';
                            } else {
                                fzgVar.az();
                                z = false;
                            }
                        } else {
                            if (c2 == c4) {
                                int i7 = fzgVar.n + 1;
                                fzgVar.n = i7;
                                fzgVar.l = i7 >= i4 ? (char) 26 : str.charAt(i7);
                                collection.add(ae);
                                if (this.f12658c == 1) {
                                    n(collection);
                                }
                                fzgVar.bg(16);
                                if (z2) {
                                    return;
                                }
                                this.l = fpdVar;
                                return;
                            }
                            fzgVar.az();
                        }
                    }
                    i2 = fzgVar.o;
                    while (i2 == 16 && (fzgVar.w & cbj.AllowArbitraryCommas.mask) != 0) {
                        fzgVar.az();
                        i2 = fzgVar.o;
                    }
                    if (i2 != 2) {
                        Number bf = fzgVar.bf();
                        fzgVar.bg(16);
                        obj2 = bf;
                    } else if (i2 != 3) {
                        if (i2 == 4) {
                            String bj = fzgVar.bj();
                            fzgVar.bg(16);
                            obj3 = bj;
                            if ((cbj.AllowISO8601DateFormat.mask & fzgVar.w) != 0) {
                                fzg fzgVar2 = new fzg(bj);
                                Object obj4 = bj;
                                if (fzgVar2.am(true)) {
                                    obj4 = fzgVar2.m.getTime();
                                }
                                fzgVar2.aw();
                                obj3 = obj4;
                            }
                        } else if (i2 == 6) {
                            Boolean bool = Boolean.TRUE;
                            fzgVar.bg(16);
                            obj3 = bool;
                        } else if (i2 != 7) {
                            obj3 = null;
                            obj3 = null;
                            if (i2 == 8) {
                                fzgVar.bg(4);
                            } else if (i2 == 12) {
                                obj3 = s(Integer.valueOf(i), (fzgVar.w & cbj.OrderedField.mask) != 0 ? new cof(new LinkedHashMap()) : new cof(false));
                            } else {
                                if (i2 == 20) {
                                    throw new bfj("unclosed jsonArray");
                                }
                                if (i2 == 23) {
                                    fzgVar.bg(4);
                                } else if (i2 == 14) {
                                    grv grvVar = new grv();
                                    u(grvVar, Integer.valueOf(i));
                                    obj3 = grvVar;
                                } else {
                                    if (i2 == 15) {
                                        fzgVar.bg(16);
                                        if (z2) {
                                            return;
                                        }
                                        this.l = fpdVar;
                                        return;
                                    }
                                    obj3 = x(null);
                                }
                            }
                        } else {
                            Boolean bool2 = Boolean.FALSE;
                            fzgVar.bg(16);
                            obj3 = bool2;
                        }
                        obj2 = obj3;
                    } else {
                        obj2 = (fzgVar.w & cbj.UseBigDecimal.mask) != 0 ? fzgVar.bo(true) : fzgVar.bo(false);
                        fzgVar.bg(16);
                    }
                    collection.add(obj2);
                    if (this.f12658c == 1) {
                        n(collection);
                    }
                    if (fzgVar.o == 16) {
                        char c5 = fzgVar.l;
                        if (c5 == '\"') {
                            fzgVar.t = fzgVar.n;
                            fzgVar.ak();
                        } else if (c5 < '0' || c5 > '9') {
                            if (c5 == '{') {
                                fzgVar.o = 12;
                                int i8 = fzgVar.n + 1;
                                fzgVar.n = i8;
                                fzgVar.l = i8 >= i4 ? (char) 26 : str.charAt(i8);
                            } else {
                                fzgVar.az();
                            }
                            i++;
                            c4 = ']';
                        } else {
                            fzgVar.t = fzgVar.n;
                            fzgVar.bm();
                        }
                    }
                    i++;
                    c4 = ']';
                }
            } else {
                fzgVar.bg(4);
            }
            z = false;
            i = 0;
            while (true) {
                if (z) {
                    String ae2 = fzgVar.ae();
                    c2 = fzgVar.l;
                    if (c2 != ',') {
                    }
                }
                i2 = fzgVar.o;
                while (i2 == 16) {
                    fzgVar.az();
                    i2 = fzgVar.o;
                }
                if (i2 != 2) {
                }
                collection.add(obj2);
                if (this.f12658c == 1) {
                }
                if (fzgVar.o == 16) {
                }
                i++;
                c4 = ']';
            }
        } finally {
            if (!z2) {
                this.l = fpdVar;
            }
        }
    }

    public final void v(fpd fpdVar) {
        if (this.h.v) {
            return;
        }
        this.l = fpdVar;
    }

    public final void w(int i) {
        fzg fzgVar = this.h;
        if (fzgVar.o == i) {
            fzgVar.az();
            return;
        }
        throw new bfj("syntax error, expect " + gs.h(i) + ", actual " + gs.h(fzgVar.o));
    }

    public final Object x(Object obj) {
        fzg fzgVar = this.h;
        int i = fzgVar.o;
        if (i == 2) {
            Number bf = fzgVar.bf();
            fzgVar.az();
            return bf;
        }
        if (i == 3) {
            Number bo = fzgVar.bo((fzgVar.w & cbj.UseBigDecimal.mask) != 0);
            fzgVar.az();
            return bo;
        }
        if (i == 4) {
            String bj = fzgVar.bj();
            fzgVar.bg(16);
            if ((fzgVar.w & cbj.AllowISO8601DateFormat.mask) == 0) {
                return bj;
            }
            fzg fzgVar2 = new fzg(bj);
            try {
                return fzgVar2.am(true) ? fzgVar2.m.getTime() : bj;
            } finally {
                fzgVar2.aw();
            }
        }
        if (i == 12) {
            return s(obj, (fzgVar.w & cbj.OrderedField.mask) != 0 ? new cof(new LinkedHashMap()) : new cof(false));
        }
        if (i == 14) {
            grv grvVar = new grv();
            u(grvVar, obj);
            return grvVar;
        }
        switch (i) {
            case 6:
                fzgVar.bg(16);
                return Boolean.TRUE;
            case 7:
                fzgVar.bg(16);
                return Boolean.FALSE;
            case 8:
                break;
            case 9:
                fzgVar.bg(18);
                if (fzgVar.o != 18) {
                    throw new bfj("syntax error, " + fzgVar.ac());
                }
                fzgVar.bg(10);
                w(10);
                long longValue = fzgVar.bf().longValue();
                w(2);
                w(11);
                return new Date(longValue);
            default:
                switch (i) {
                    case 20:
                        if (fzgVar.ad()) {
                            return null;
                        }
                        throw new bfj("syntax error, " + fzgVar.ac());
                    case 21:
                        fzgVar.az();
                        HashSet hashSet = new HashSet();
                        u(hashSet, obj);
                        return hashSet;
                    case 22:
                        fzgVar.az();
                        TreeSet treeSet = new TreeSet();
                        u(treeSet, obj);
                        return treeSet;
                    case 23:
                        break;
                    default:
                        throw new bfj("syntax error, " + fzgVar.ac());
                }
        }
        fzgVar.az();
        return null;
    }

    public final fpd y(fpd fpdVar, Object obj, Object obj2) {
        if (this.h.v) {
            return null;
        }
        this.l = new fpd((Object) fpdVar, obj, obj2, 8, (byte) 0);
        int i = this.f12656a;
        this.f12656a = i + 1;
        fpd[] fpdVarArr = this.f12657b;
        if (fpdVarArr == null) {
            this.f12657b = new fpd[8];
        } else if (i >= fpdVarArr.length) {
            fpd[] fpdVarArr2 = new fpd[(fpdVarArr.length * 3) / 2];
            System.arraycopy(fpdVarArr, 0, fpdVarArr2, 0, fpdVarArr.length);
            this.f12657b = fpdVarArr2;
        }
        fpd[] fpdVarArr3 = this.f12657b;
        fpd fpdVar2 = this.l;
        fpdVarArr3[i] = fpdVar2;
        return fpdVar2;
    }

    public final void z(ggl gglVar) {
        if (this.j == null) {
            this.j = new ArrayList(2);
        }
        this.j.add(gglVar);
    }
}
