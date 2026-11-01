package g;

import android.util.Log;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* loaded from: classes3.dex */
public final class gmf {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ dqg f18395a;

    /* renamed from: b, reason: collision with root package name */
    public Boolean f18396b;

    /* renamed from: c, reason: collision with root package name */
    public Long f18397c;

    /* renamed from: d, reason: collision with root package name */
    public final String f18398d;

    /* renamed from: e, reason: collision with root package name */
    public Long f18399e;

    /* renamed from: f, reason: collision with root package name */
    public final cys f18400f;

    /* renamed from: g, reason: collision with root package name */
    public final int f18401g;
    public Boolean h;
    public final /* synthetic */ int i;

    public gmf(dqg dqgVar, String str, int i, cys cysVar, int i2) {
        this.i = i2;
        this.f18395a = dqgVar;
        this.f18398d = str;
        this.f18401g = i;
        this.f18400f = cysVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static Boolean j(String str, fuj fujVar, bgm bgmVar) {
        List c2;
        ckd.k(fujVar);
        if (str != null && fujVar.f() && fujVar.i() != 1 && (fujVar.i() != 7 ? fujVar.j() : fujVar.e() != 0)) {
            int i = fujVar.i();
            boolean g2 = fujVar.g();
            String d2 = (g2 || i == 2 || i == 7) ? fujVar.d() : fujVar.d().toUpperCase(Locale.ENGLISH);
            if (fujVar.e() == 0) {
                c2 = null;
            } else {
                c2 = fujVar.c();
                if (!g2) {
                    ArrayList arrayList = new ArrayList(c2.size());
                    Iterator it = c2.iterator();
                    while (it.hasNext()) {
                        arrayList.add(((String) it.next()).toUpperCase(Locale.ENGLISH));
                    }
                    c2 = Collections.unmodifiableList(arrayList);
                }
            }
            String str2 = i == 2 ? d2 : null;
            if (i != 7 ? d2 != null : c2 != null && !c2.isEmpty()) {
                if (!g2 && i != 2) {
                    str = str.toUpperCase(Locale.ENGLISH);
                }
                switch (i - 1) {
                    case 1:
                        if (str2 != null) {
                            try {
                                return Boolean.valueOf(Pattern.compile(str2, true != g2 ? 66 : 0).matcher(str).matches());
                            } catch (PatternSyntaxException unused) {
                                if (bgmVar != null) {
                                    bgmVar.f11520g.i(str2, "Invalid regular expression in REGEXP audience filter. expression");
                                    break;
                                }
                            }
                        }
                        break;
                    case 2:
                        return Boolean.valueOf(str.startsWith(d2));
                    case 3:
                        return Boolean.valueOf(str.endsWith(d2));
                    case 4:
                        return Boolean.valueOf(str.contains(d2));
                    case 5:
                        return Boolean.valueOf(str.equals(d2));
                    case 6:
                        if (c2 != null) {
                            return Boolean.valueOf(c2.contains(str));
                        }
                        break;
                }
            }
        }
        return null;
    }

    public static Boolean k(Boolean bool, boolean z) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() != z);
    }

    public static Boolean l(BigDecimal bigDecimal, cjx cjxVar, double d2) {
        BigDecimal bigDecimal2;
        BigDecimal bigDecimal3;
        BigDecimal bigDecimal4;
        ckd.k(cjxVar);
        if (cjxVar.j()) {
            if (cjxVar.f() != 1 && (cjxVar.f() != 5 ? cjxVar.l() : cjxVar.e() && cjxVar.k())) {
                int f2 = cjxVar.f();
                try {
                    if (cjxVar.f() == 5) {
                        if (fit.s(cjxVar.c()) && fit.s(cjxVar.d())) {
                            BigDecimal bigDecimal5 = new BigDecimal(cjxVar.c());
                            bigDecimal4 = new BigDecimal(cjxVar.d());
                            bigDecimal3 = bigDecimal5;
                            bigDecimal2 = null;
                        }
                    } else if (fit.s(cjxVar.i())) {
                        bigDecimal2 = new BigDecimal(cjxVar.i());
                        bigDecimal3 = null;
                        bigDecimal4 = null;
                    }
                    if (f2 != 5 ? bigDecimal2 != null : bigDecimal3 != null) {
                        int i = f2 - 1;
                        if (i != 1) {
                            if (i != 2) {
                                if (i != 3) {
                                    if (i == 4 && bigDecimal3 != null) {
                                        return Boolean.valueOf(bigDecimal.compareTo(bigDecimal3) >= 0 && bigDecimal.compareTo(bigDecimal4) <= 0);
                                    }
                                } else if (bigDecimal2 != null) {
                                    if (d2 != 0.0d) {
                                        return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2.subtract(new BigDecimal(d2).multiply(new BigDecimal(2)))) > 0 && bigDecimal.compareTo(bigDecimal2.add(new BigDecimal(d2).multiply(new BigDecimal(2)))) < 0);
                                    }
                                    return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) == 0);
                                }
                            } else if (bigDecimal2 != null) {
                                return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) > 0);
                            }
                        } else if (bigDecimal2 != null) {
                            return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) < 0);
                        }
                    }
                } catch (NumberFormatException unused) {
                }
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x03eb  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x03f6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x03f7  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x03ee  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean m(Long l, Long l2, kk kkVar, long j, bwz bwzVar, boolean z) {
        boolean z2;
        Boolean bool;
        Boolean l3;
        Boolean bool2;
        Boolean bool3;
        Boolean bool4;
        fdd.c();
        dqg dqgVar = this.f18395a;
        cyg cygVar = (cyg) dqgVar.z;
        dsd dsdVar = cygVar.f13747e;
        tw twVar = gad.aj;
        String str = this.f18398d;
        boolean g2 = dsdVar.g(str, twVar);
        azv azvVar = (azv) this.f18400f;
        long j2 = azvVar.k() ? bwzVar.f12352d : j;
        bgm bgmVar = cygVar.z;
        cyg.ak(bgmVar);
        boolean isLoggable = Log.isLoggable(bgmVar.al(), 2);
        int i = this.f18401g;
        if (isLoggable) {
            bgm bgmVar2 = cygVar.z;
            cyg.ak(bgmVar2);
            bgmVar2.f11519c.f("Evaluating filter. audience, filter, event", Integer.valueOf(i), azvVar.g() ? Integer.valueOf(azvVar.m()) : null, cygVar.af.f(azvVar.n()));
            bgm bgmVar3 = cygVar.z;
            cyg.ak(bgmVar3);
            dvb dvbVar = bgmVar3.f11519c;
            fit fitVar = dqgVar.f10133a.f12159e;
            bsz.ag(fitVar);
            StringBuilder sb = new StringBuilder();
            sb.append("\nevent_filter {\n");
            if (azvVar.g()) {
                fit.o(sb, 0, "filter_id", Integer.valueOf(azvVar.m()));
            }
            fit.o(sb, 0, "event_name", ((cyg) fitVar.z).af.f(azvVar.n()));
            String c2 = fit.c(azvVar.i(), azvVar.j(), azvVar.k());
            if (!c2.isEmpty()) {
                fit.o(sb, 0, "filter_type", c2);
            }
            if (azvVar.o()) {
                fit.r(sb, 1, "event_count_filter", azvVar.l());
            }
            if (azvVar.h() > 0) {
                sb.append("  filters {\n");
                Iterator it = azvVar.p().iterator();
                while (it.hasNext()) {
                    fitVar.ax(sb, 2, (cth) it.next());
                }
            }
            fit.h(sb, 1);
            sb.append("}\n}\n");
            dvbVar.i(sb.toString(), "Filter definition");
        }
        if (!azvVar.g() || azvVar.m() > 256) {
            bgm bgmVar4 = cygVar.z;
            cyg.ak(bgmVar4);
            bgmVar4.f11520g.e(bgm.t(str), "Invalid event filter ID. appId, id", String.valueOf(azvVar.g() ? Integer.valueOf(azvVar.m()) : null));
            return false;
        }
        boolean z3 = azvVar.i() || azvVar.j() || azvVar.k();
        if (z && !z3) {
            bgm bgmVar5 = cygVar.z;
            cyg.ak(bgmVar5);
            bgmVar5.f11519c.e(Integer.valueOf(i), "Event filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID", azvVar.g() ? Integer.valueOf(azvVar.m()) : null);
            return true;
        }
        String u = kkVar.u();
        if (azvVar.o()) {
            try {
                bool4 = l(new BigDecimal(j2), azvVar.l(), 0.0d);
            } catch (NumberFormatException unused) {
                bool4 = null;
            }
            if (bool4 != null) {
                if (!bool4.booleanValue()) {
                    bool = Boolean.FALSE;
                    z2 = false;
                    bgm bgmVar6 = cygVar.z;
                    cyg.ak(bgmVar6);
                    bgmVar6.f11519c.i(bool == null ? "null" : bool, "Event filter result");
                    if (bool == null) {
                        return z2;
                    }
                    Boolean bool5 = Boolean.TRUE;
                    this.h = bool5;
                    if (bool.booleanValue()) {
                        this.f18396b = bool5;
                        if (z3 && kkVar.o()) {
                            Long valueOf = Long.valueOf(kkVar.k());
                            if (azvVar.j()) {
                                if (g2 && azvVar.o()) {
                                    valueOf = l;
                                }
                                this.f18399e = valueOf;
                            } else {
                                if (g2 && azvVar.o()) {
                                    valueOf = l2;
                                }
                                this.f18397c = valueOf;
                            }
                        }
                    }
                    return true;
                }
            }
            z2 = false;
            bool = null;
            bgm bgmVar62 = cygVar.z;
            cyg.ak(bgmVar62);
            bgmVar62.f11519c.i(bool == null ? "null" : bool, "Event filter result");
            if (bool == null) {
            }
        }
        HashSet hashSet = new HashSet();
        Iterator it2 = azvVar.p().iterator();
        while (true) {
            if (!it2.hasNext()) {
                tl tlVar = new tl(0);
                Iterator it3 = kkVar.q().iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        Iterator it4 = azvVar.p().iterator();
                        while (true) {
                            if (!it4.hasNext()) {
                                z2 = false;
                                bool = Boolean.TRUE;
                                break;
                            }
                            cth cthVar = (cth) it4.next();
                            boolean z4 = cthVar.k() && cthVar.i();
                            String d2 = cthVar.d();
                            if (d2.isEmpty()) {
                                bgm bgmVar7 = cygVar.z;
                                cyg.ak(bgmVar7);
                                bgmVar7.f11520g.i(cygVar.af.f(u), "Event has empty param name. event");
                                break;
                            }
                            Object obj = tlVar.get(d2);
                            z2 = false;
                            if (obj instanceof Long) {
                                if (!cthVar.g()) {
                                    bgm bgmVar8 = cygVar.z;
                                    cyg.ak(bgmVar8);
                                    bgmVar8.f11520g.e(cygVar.af.f(u), "No number filter for long param. event, param", cygVar.af.g(d2));
                                    break;
                                }
                                try {
                                    bool3 = l(new BigDecimal(((Long) obj).longValue()), cthVar.h(), 0.0d);
                                } catch (NumberFormatException unused2) {
                                    bool3 = null;
                                }
                                if (bool3 == null) {
                                    break;
                                }
                                if (bool3.booleanValue() == z4) {
                                    bool = Boolean.FALSE;
                                    break;
                                }
                            } else if (obj instanceof Double) {
                                if (!cthVar.g()) {
                                    bgm bgmVar9 = cygVar.z;
                                    cyg.ak(bgmVar9);
                                    bgmVar9.f11520g.e(cygVar.af.f(u), "No number filter for double param. event, param", cygVar.af.g(d2));
                                    break;
                                }
                                double doubleValue = ((Double) obj).doubleValue();
                                try {
                                    bool2 = l(new BigDecimal(doubleValue), cthVar.h(), Math.ulp(doubleValue));
                                } catch (NumberFormatException unused3) {
                                    bool2 = null;
                                }
                                if (bool2 == null) {
                                    break;
                                }
                                if (bool2.booleanValue() == z4) {
                                    bool = Boolean.FALSE;
                                    break;
                                }
                            } else if (obj instanceof String) {
                                if (!cthVar.f()) {
                                    if (!cthVar.g()) {
                                        bgm bgmVar10 = cygVar.z;
                                        cyg.ak(bgmVar10);
                                        bgmVar10.f11520g.e(cygVar.af.f(u), "No filter for String param. event, param", cygVar.af.g(d2));
                                        break;
                                    }
                                    String str2 = (String) obj;
                                    if (!fit.s(str2)) {
                                        bgm bgmVar11 = cygVar.z;
                                        cyg.ak(bgmVar11);
                                        bgmVar11.f11520g.e(cygVar.af.f(u), "Invalid param value for number filter. event, param", cygVar.af.g(d2));
                                        break;
                                    }
                                    cjx h = cthVar.h();
                                    if (fit.s(str2)) {
                                        try {
                                            l3 = l(new BigDecimal(str2), h, 0.0d);
                                        } catch (NumberFormatException unused4) {
                                        }
                                    }
                                    l3 = null;
                                } else {
                                    fuj e2 = cthVar.e();
                                    bgm bgmVar12 = cygVar.z;
                                    cyg.ak(bgmVar12);
                                    l3 = j((String) obj, e2, bgmVar12);
                                }
                                if (l3 == null) {
                                    break;
                                }
                                if (l3.booleanValue() == z4) {
                                    bool = Boolean.FALSE;
                                    break;
                                }
                            } else if (obj == null) {
                                bgm bgmVar13 = cygVar.z;
                                cyg.ak(bgmVar13);
                                bgmVar13.f11519c.e(cygVar.af.f(u), "Missing param for filter. event, param", cygVar.af.g(d2));
                                bool = Boolean.FALSE;
                            } else {
                                bgm bgmVar14 = cygVar.z;
                                cyg.ak(bgmVar14);
                                bgmVar14.f11520g.e(cygVar.af.f(u), "Unknown param type. event, param", cygVar.af.g(d2));
                            }
                        }
                    } else {
                        asm asmVar = (asm) it3.next();
                        if (hashSet.contains(asmVar.u())) {
                            if (!asmVar.v()) {
                                if (!asmVar.r()) {
                                    if (!asmVar.m()) {
                                        bgm bgmVar15 = cygVar.z;
                                        cyg.ak(bgmVar15);
                                        bgmVar15.f11520g.e(cygVar.af.f(u), "Unknown value for param. event, param", cygVar.af.g(asmVar.u()));
                                        break;
                                    }
                                    tlVar.put(asmVar.u(), asmVar.x());
                                } else {
                                    tlVar.put(asmVar.u(), asmVar.r() ? Double.valueOf(asmVar.q()) : null);
                                }
                            } else {
                                tlVar.put(asmVar.u(), asmVar.v() ? Long.valueOf(asmVar.n()) : null);
                            }
                        }
                    }
                }
            } else {
                cth cthVar2 = (cth) it2.next();
                if (cthVar2.d().isEmpty()) {
                    bgm bgmVar16 = cygVar.z;
                    cyg.ak(bgmVar16);
                    bgmVar16.f11520g.i(cygVar.af.f(u), "null or empty param name in filter. event");
                    break;
                }
                hashSet.add(cthVar2.d());
            }
        }
        bgm bgmVar622 = cygVar.z;
        cyg.ak(bgmVar622);
        bgmVar622.f11519c.i(bool == null ? "null" : bool, "Event filter result");
        if (bool == null) {
        }
    }

    public boolean n(Long l, Long l2, ne neVar, boolean z) {
        fdd.c();
        cyg cygVar = (cyg) this.f18395a.z;
        boolean g2 = cygVar.f13747e.g(this.f18398d, gad.y);
        dfx dfxVar = (dfx) this.f18400f;
        boolean i = dfxVar.i();
        boolean k = dfxVar.k();
        boolean g3 = dfxVar.g();
        boolean z2 = i || k || g3;
        Boolean bool = null;
        r5 = null;
        Boolean bool2 = null;
        Boolean bool3 = null;
        bool = null;
        bool = null;
        bool = null;
        Boolean l3 = null;
        bool = null;
        if (z && !z2) {
            bgm bgmVar = cygVar.z;
            cyg.ak(bgmVar);
            bgmVar.f11519c.e(Integer.valueOf(this.f18401g), "Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID", dfxVar.j() ? Integer.valueOf(dfxVar.e()) : null);
            return true;
        }
        cth h = dfxVar.h();
        boolean i2 = h.i();
        if (neVar.s()) {
            if (h.g()) {
                try {
                    bool3 = l(new BigDecimal(neVar.q()), h.h(), 0.0d);
                } catch (NumberFormatException unused) {
                }
                bool = k(bool3, i2);
            } else {
                bgm bgmVar2 = cygVar.z;
                cyg.ak(bgmVar2);
                bgmVar2.f11520g.i(cygVar.af.i(neVar.p()), "No number filter for long property. property");
            }
        } else if (neVar.k()) {
            if (h.g()) {
                double n = neVar.n();
                try {
                    bool2 = l(new BigDecimal(n), h.h(), Math.ulp(n));
                } catch (NumberFormatException unused2) {
                }
                bool = k(bool2, i2);
            } else {
                bgm bgmVar3 = cygVar.z;
                cyg.ak(bgmVar3);
                bgmVar3.f11520g.i(cygVar.af.i(neVar.p()), "No number filter for double property. property");
            }
        } else if (!neVar.o()) {
            bgm bgmVar4 = cygVar.z;
            cyg.ak(bgmVar4);
            bgmVar4.f11520g.i(cygVar.af.i(neVar.p()), "User property has no value, property");
        } else if (h.f()) {
            String r = neVar.r();
            fuj e2 = h.e();
            bgm bgmVar5 = cygVar.z;
            cyg.ak(bgmVar5);
            bool = k(j(r, e2, bgmVar5), i2);
        } else if (!h.g()) {
            bgm bgmVar6 = cygVar.z;
            cyg.ak(bgmVar6);
            bgmVar6.f11520g.i(cygVar.af.i(neVar.p()), "No string or number filter defined. property");
        } else if (fit.s(neVar.r())) {
            String r2 = neVar.r();
            cjx h2 = h.h();
            if (fit.s(r2)) {
                try {
                    l3 = l(new BigDecimal(r2), h2, 0.0d);
                } catch (NumberFormatException unused3) {
                }
            }
            bool = k(l3, i2);
        } else {
            bgm bgmVar7 = cygVar.z;
            cyg.ak(bgmVar7);
            bgmVar7.f11520g.e(cygVar.af.i(neVar.p()), "Invalid user property value for Numeric number filter. property, value", neVar.r());
        }
        bgm bgmVar8 = cygVar.z;
        cyg.ak(bgmVar8);
        bgmVar8.f11519c.i(bool == null ? "null" : bool, "Property filter result");
        if (bool == null) {
            return false;
        }
        this.h = Boolean.TRUE;
        if (!g3 || bool.booleanValue()) {
            if (!z || dfxVar.i()) {
                this.f18396b = bool;
            }
            if (bool.booleanValue() && z2 && neVar.m()) {
                long l4 = neVar.l();
                if (l != null) {
                    l4 = l.longValue();
                }
                if (g2 && dfxVar.i() && !dfxVar.k() && l2 != null) {
                    l4 = l2.longValue();
                }
                if (dfxVar.k()) {
                    this.f18399e = Long.valueOf(l4);
                } else {
                    this.f18397c = Long.valueOf(l4);
                }
            }
        }
        return true;
    }
}
