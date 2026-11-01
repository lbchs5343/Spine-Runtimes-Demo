package g;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;

/* loaded from: classes.dex */
public abstract class cwx {
    public static final gnh aa;

    /* renamed from: ab, reason: collision with root package name */
    public static final aog f13657ab;
    public static final cff ac;
    public static final gnh ad;
    public static final gnh ae;
    public static final gnh af;
    public static final gnh ag;
    public static final gnh ah;
    public static final cff ai;
    public static final aoe aj;
    public static final aog ak;
    public static final aog al;
    public static final cff am;
    public static final cff an;
    public static final cff ao;
    public static final aog ap;
    public static final gnh aq;
    public static final gzg ar;
    public static final gnh as;
    public static final cff at;
    public static final gnh au;
    public static final gnh av;
    public static final aoe aw;
    public static final cff ax;
    public static final aog ay;
    public static final gnh r;
    public static final cff s;
    public static final aog t;
    public static final gnh u;
    public static final aog v;
    public static final gnh w;
    public static final gnh x;
    public static final aog y;
    public static final cff z;
    public int az;

    static {
        bjt bjtVar = bjt.INT;
        an = new cff(bjtVar);
        bjt bjtVar2 = bjt.BOOLEAN;
        at = new cff(bjtVar2);
        bjt bjtVar3 = bjt.BYTE;
        z = new cff(bjtVar3);
        bjt bjtVar4 = bjt.SHORT;
        ac = new cff(bjtVar4);
        bjt bjtVar5 = bjt.CHAR;
        ai = new cff(bjtVar5);
        bjt bjtVar6 = bjt.FLOAT;
        ax = new cff(bjtVar6);
        bjt bjtVar7 = bjt.DOUBLE;
        s = new cff(bjtVar7);
        bjt bjtVar8 = bjt.LONG;
        am = new cff(bjtVar8);
        ao = new cff(bjt.VOID);
        aog aogVar = new aog("java.lang.Object");
        t = aogVar;
        f13657ab = new aog("java.lang.Class");
        al = new aog("java.lang.String");
        y = new aog("java.lang.Enum");
        v = new aog("java.lang.Throwable");
        ak = new aog("java.lang.Error");
        ap = new aog("java.lang.Exception");
        ay = new aog("java.lang.RuntimeException");
        aj = new aoe(aogVar);
        ar = new gzg(aogVar, be.UNBOUND);
        gnh gnhVar = new gnh(bjt.values());
        ad = gnhVar;
        bjt bjtVar9 = bjt.OBJECT;
        bjt bjtVar10 = bjt.ARRAY;
        ag = new gnh(new bjt[]{bjtVar9, bjtVar10});
        ah = new gnh(new bjt[]{bjtVar9});
        aw = new aoe(gnhVar);
        w = new gnh(new bjt[]{bjtVar, bjtVar6, bjtVar2, bjtVar4, bjtVar3, bjtVar5, bjtVar9, bjtVar10});
        r = new gnh(new bjt[]{bjtVar2, bjtVar, bjtVar6, bjtVar4, bjtVar3, bjtVar5});
        aq = new gnh(new bjt[]{bjtVar, bjtVar4, bjtVar3, bjtVar5});
        aa = new gnh(new bjt[]{bjtVar, bjtVar6, bjtVar4, bjtVar3, bjtVar5});
        af = new gnh(new bjt[]{bjtVar, bjtVar4, bjtVar3, bjtVar6});
        ae = new gnh(new bjt[]{bjtVar, bjtVar2, bjtVar4, bjtVar3, bjtVar5});
        av = new gnh(new bjt[]{bjtVar8, bjtVar7});
        as = new gnh(new bjt[]{bjtVar, bjtVar6});
        x = new gnh(new bjt[]{bjtVar, bjtVar2});
        u = new gnh(new bjt[]{bjtVar3, bjtVar2});
        au = new gnh(new bjt[]{bjtVar});
    }

    public static cwx ba(String str) {
        if (str == null || str.isEmpty()) {
            throw new gck(tn.x("Failed to parse type string: ", str));
        }
        char charAt = str.charAt(0);
        if (charAt == 'L') {
            return bf(str);
        }
        if (charAt == 'T') {
            return new btl(str.substring(1, str.length() - 1), Collections.EMPTY_LIST);
        }
        if (charAt == '[') {
            return new aoe(ba(str.substring(1)));
        }
        if (str.length() == 1) {
            return bb(charAt);
        }
        throw new gck("Unknown type string: \"" + str + '\"');
    }

    public static cff bb(char c2) {
        if (c2 == 'F') {
            return ax;
        }
        if (c2 == 'S') {
            return ac;
        }
        if (c2 == 'V') {
            return ao;
        }
        if (c2 == 'Z') {
            return at;
        }
        if (c2 == 'I') {
            return an;
        }
        if (c2 == 'J') {
            return am;
        }
        switch (c2) {
            case 'B':
                return z;
            case 'C':
                return ai;
            case 'D':
                return s;
            default:
                throw new gck("Unknown type char: '" + c2 + "' (0x" + Integer.toHexString(c2) + ')');
        }
    }

    public static bcx bc(bjt bjtVar) {
        switch (ezb.f16399a[bjtVar.ordinal()]) {
            case 1:
                return at;
            case 2:
                return ai;
            case 3:
                return z;
            case 4:
                return ac;
            case 5:
                return an;
            case 6:
                return ax;
            case 7:
                return am;
            case 8:
                return s;
            case 9:
            default:
                return t;
            case 10:
                return aj;
            case 11:
                return ao;
        }
    }

    public static aaw bd(cwx cwxVar, List list) {
        if (cwxVar.m()) {
            return new aaw(cwxVar.l(), list);
        }
        throw new IllegalArgumentException("Expected Object as ArgType, got: " + cwxVar);
    }

    public static boolean be(dwg dwgVar, cwx cwxVar, cwx cwxVar2) {
        if (cwxVar.equals(cwxVar2)) {
            return true;
        }
        if (!cwxVar.m() || !cwxVar2.m()) {
            return false;
        }
        cut cutVar = dwgVar.l;
        String l = cwxVar.l();
        return cutVar.g(l).contains(cwxVar2.l());
    }

    public static cwx bf(String str) {
        String p;
        p = evh.p(str);
        p.getClass();
        switch (p) {
            case "java.lang.Class":
                return f13657ab;
            case "java.lang.Exception":
                return ap;
            case "java.lang.Object":
                return t;
            case "java.lang.String":
                return al;
            case "java.lang.Throwable":
                return v;
            default:
                return new aog(p);
        }
    }

    public abstract boolean b(Object obj);

    public cwx bg() {
        return null;
    }

    public final Object bh(Function function) {
        List c2;
        Object bh;
        cwx cwxVar;
        Object apply = function.apply(this);
        if (apply != null) {
            return apply;
        }
        if ((this instanceof aoe) && (cwxVar = ((aoe) this).f10562d) != null) {
            return cwxVar.bh(function);
        }
        cwx bo = bo();
        if (bo != null && (bh = bo.bh(function)) != null) {
            return bh;
        }
        if (!bm() || (c2 = c()) == null) {
            return null;
        }
        Iterator it = c2.iterator();
        while (it.hasNext()) {
            Object bh2 = ((cwx) it.next()).bh(function);
            if (bh2 != null) {
                return bh2;
            }
        }
        return null;
    }

    public final int bi() {
        if (!(this instanceof cff)) {
            return !h() ? 0 : 1;
        }
        bjt f2 = f();
        return (f2 == bjt.LONG || f2 == bjt.DOUBLE) ? 2 : 1;
    }

    public cwx bj() {
        return null;
    }

    public final boolean bk() {
        cwx cwxVar;
        if (bm() || (this instanceof btl)) {
            return true;
        }
        if (!(this instanceof aoe) || (cwxVar = ((aoe) this).f10562d) == null) {
            return false;
        }
        return cwxVar.bk();
    }

    public be bl() {
        return null;
    }

    public boolean bm() {
        return this instanceof aaw;
    }

    public final boolean bn() {
        cwx cwxVar;
        if (this instanceof btl) {
            return true;
        }
        cwx bo = bo();
        if (bo != null) {
            return bo.bn();
        }
        if (!bm()) {
            if (!(this instanceof aoe) || (cwxVar = ((aoe) this).f10562d) == null) {
                return false;
            }
            return cwxVar.bn();
        }
        List c2 = c();
        if (c2 != null) {
            Iterator it = c2.iterator();
            while (it.hasNext()) {
                if (((cwx) it.next()).bn()) {
                    return true;
                }
            }
        }
        cwx bj = bj();
        if (bj != null) {
            return bj.bn();
        }
        return false;
    }

    public cwx bo() {
        return null;
    }

    public List c() {
        return null;
    }

    public cwx e() {
        return this;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && this.az == obj.hashCode() && getClass() == obj.getClass()) {
            return b(obj);
        }
        return false;
    }

    public bjt f() {
        return null;
    }

    public abstract bjt[] g();

    public abstract boolean h();

    public final int hashCode() {
        return this.az;
    }

    public int i() {
        return 0;
    }

    public abstract cwx j();

    public cwx k() {
        return null;
    }

    public String l() {
        throw new UnsupportedOperationException("ArgType.getObject(), call class: " + getClass());
    }

    public boolean m() {
        return false;
    }

    public abstract boolean o(bjt bjtVar);

    public void p(List list) {
    }

    public List q() {
        return Collections.EMPTY_LIST;
    }

    public abstract String toString();
}
