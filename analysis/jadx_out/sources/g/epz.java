package g;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class epz {

    /* renamed from: b, reason: collision with root package name */
    public final String f15962b;

    /* renamed from: c, reason: collision with root package name */
    public final int f15963c;

    /* renamed from: d, reason: collision with root package name */
    public int f15964d = -1;

    /* renamed from: a, reason: collision with root package name */
    public int f15961a = 0;

    static {
        dsr.k(epz.class);
    }

    public epz(String str) {
        this.f15962b = str;
        this.f15963c = str.length();
    }

    public static epz e(ebh ebhVar) {
        dfc dfcVar = (dfc) ebhVar.l.k(ao.s);
        String str = dfcVar == null ? null : dfcVar.f14083a;
        if (str == null) {
            return null;
        }
        return new epz(str);
    }

    public final String f() {
        int i = this.f15961a;
        if (i == -1) {
            i = 0;
        }
        int i2 = this.f15964d + 1;
        return i >= i2 ? "" : this.f15962b.substring(i, i2);
    }

    public final cwx g(boolean z) {
        char m;
        int i;
        String replace;
        cwx h;
        gzg gzgVar;
        String f2;
        this.f15961a = this.f15964d;
        do {
            if (!z || !k('.')) {
                m = m();
                if (m != 0) {
                    if (m == '<') {
                        break;
                    }
                } else {
                    return null;
                }
            } else {
                return cwx.bf(f());
            }
        } while (m != ';');
        String str = this.f15962b;
        if (m == ';') {
            if (z) {
                int i2 = this.f15961a;
                i = i2 != -1 ? i2 : 0;
                int i3 = this.f15964d;
                f2 = (i < i3 ? str.substring(i, i3) : "").replace('/', '.');
            } else {
                f2 = f();
            }
            return cwx.bf(f2);
        }
        int i4 = this.f15961a;
        i = i4 != -1 ? i4 : 0;
        int i5 = this.f15964d;
        String substring = i < i5 ? str.substring(i, i5) : "";
        if (z) {
            replace = substring.replace('/', '.');
        } else {
            replace = substring + ';';
        }
        ArrayList arrayList = new ArrayList();
        do {
            if (k('*')) {
                m();
                cff cffVar = cwx.an;
                h = new gzg(cwx.t, be.UNBOUND);
            } else {
                if (k('+')) {
                    m();
                    cwx h2 = h();
                    be beVar = be.EXTENDS;
                    cff cffVar2 = cwx.an;
                    gzgVar = new gzg(h2, beVar);
                } else if (k('-')) {
                    m();
                    cwx h3 = h();
                    be beVar2 = be.SUPER;
                    cff cffVar3 = cwx.an;
                    gzgVar = new gzg(h3, beVar2);
                } else {
                    h = h();
                }
                h = gzgVar;
            }
            if (h != null) {
                arrayList.add(h);
            }
            if (h == null) {
                break;
            }
        } while (!k('>'));
        i('>');
        cff cffVar4 = cwx.an;
        aog aawVar = new aaw(evh.p(replace), arrayList);
        if (!k('.')) {
            i(';');
            return aawVar;
        }
        i('.');
        m();
        cwx g2 = g(true);
        if (g2 == null) {
            throw new gck("No inner type found: " + j());
        }
        while (k('.')) {
            aog gvoVar = new gvo(aawVar, (aog) g2);
            i('.');
            m();
            g2 = g(true);
            if (g2 == null) {
                throw new gck("Unexpected inner type found: " + j());
            }
            aawVar = gvoVar;
        }
        return new gvo(aawVar, (aog) g2);
    }

    public final cwx h() {
        char m = m();
        String str = null;
        if (m == 0) {
            return null;
        }
        if (m == 'L') {
            cwx g2 = g(false);
            if (g2 != null) {
                return g2;
            }
        } else if (m == 'T') {
            m();
            int i = this.f15964d;
            this.f15961a = i;
            while (true) {
                if (k(';')) {
                    str = f();
                    break;
                }
                if (m() == 0) {
                    this.f15964d = i;
                    break;
                }
            }
            if (str != null) {
                i(';');
                if (str.contains(")")) {
                    throw new gck("Bad name for type variable: ".concat(str));
                }
                cff cffVar = cwx.an;
                return new btl(str, Collections.EMPTY_LIST);
            }
        } else {
            if (m == '[') {
                cwx h = h();
                cff cffVar2 = cwx.an;
                return new aoe(h);
            }
            cff bb = cwx.bb(m);
            if (bb != null) {
                return bb;
            }
        }
        throw new gck("Can't parse type: " + j() + ", unexpected: " + m);
    }

    public final void i(char c2) {
        char m = m();
        if (c2 == m) {
            return;
        }
        throw new gck("Consume wrong char: '" + m + "' != '" + c2 + "', sign: " + j());
    }

    public final String j() {
        int i = this.f15964d;
        String str = this.f15962b;
        if (i >= str.length()) {
            return str;
        }
        return str + " at position " + this.f15964d + " ('" + str.charAt(this.f15964d) + "')";
    }

    public final boolean k(char c2) {
        int i = this.f15964d + 1;
        return i < this.f15963c && this.f15962b.charAt(i) == c2;
    }

    public final List l() {
        String f2;
        boolean k;
        if (!k('<')) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList();
        i('<');
        while (!k('>') && m() != 0) {
            int i = this.f15964d;
            this.f15961a = i;
            while (true) {
                if (k(':')) {
                    f2 = f();
                    break;
                }
                if (m() == 0) {
                    this.f15964d = i;
                    f2 = null;
                    break;
                }
            }
            if (f2 == null) {
                throw new gck("Failed to parse generic types map");
            }
            i(':');
            if (k(':')) {
                m();
            }
            List list = Collections.EMPTY_LIST;
            do {
                cwx h = h();
                if (h == null) {
                    throw new gck("Unexpected end of signature");
                }
                if (!h.equals(cwx.t)) {
                    if (list.isEmpty()) {
                        list = new ArrayList();
                    }
                    list.add(h);
                }
                k = k(':');
                if (k) {
                    i(':');
                }
            } while (k);
            arrayList.add(new btl(f2, list));
        }
        i('>');
        return arrayList;
    }

    public final char m() {
        int i = this.f15964d + 1;
        this.f15964d = i;
        if (i >= this.f15963c) {
            return (char) 0;
        }
        return this.f15962b.charAt(i);
    }

    public final List n(int i) {
        i('(');
        if (k(')')) {
            i(')');
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList(i);
        int i2 = i + 10;
        do {
            cwx h = h();
            if (h == null) {
                throw new gck("Unexpected end of signature");
            }
            arrayList.add(h);
            if (arrayList.size() > i2) {
                throw new gck("Arguments count limit reached: " + arrayList.size());
            }
        } while (!k(')'));
        i(')');
        return arrayList;
    }

    public final String toString() {
        int i = this.f15964d;
        String str = this.f15962b;
        if (i == -1) {
            return str;
        }
        return str.substring(0, this.f15961a) + '{' + str.substring(this.f15961a, this.f15964d) + '}' + str.substring(this.f15964d);
    }
}
