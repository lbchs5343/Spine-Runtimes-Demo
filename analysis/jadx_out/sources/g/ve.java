package g;

import java.io.File;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class ve implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public String f20146a;

    /* renamed from: b, reason: collision with root package name */
    public String f20147b;

    /* renamed from: c, reason: collision with root package name */
    public ve f20148c;

    /* renamed from: d, reason: collision with root package name */
    public final cwx f20149d;

    /* renamed from: e, reason: collision with root package name */
    public String f20150e;

    public ve(dwg dwgVar, cwx cwxVar, boolean z) {
        this.f20149d = cwxVar;
        k(dwgVar, cwxVar, z);
    }

    public static String f(String str, String str2, ve veVar, boolean z, boolean z2) {
        if (veVar != null) {
            char c2 = z2 ? '$' : '.';
            return (z ? z2 ? f(veVar.t(), veVar.i(), veVar.f20148c, true, true) : veVar.m() : z2 ? veVar.l() : veVar.f20147b) + c2 + str2;
        }
        if (str.isEmpty()) {
            return str2;
        }
        return str + '.' + str2;
    }

    public static ve g(dwg dwgVar, String str) {
        return h(dwgVar, cwx.bf(str));
    }

    public static ve h(dwg dwgVar, cwx cwxVar) {
        if (cwxVar == null) {
            throw new gck("Null class type");
        }
        if (cwxVar instanceof aoe) {
            cwxVar = cwx.t;
        } else {
            if (!cwxVar.m() || (cwxVar instanceof btl)) {
                throw new gck("Not class type: " + cwxVar);
            }
            if (cwxVar.bm()) {
                cwxVar = cwx.bf(cwxVar.l());
            }
        }
        ve veVar = (ve) ((HashMap) dwgVar.h.h).get(cwxVar);
        if (veVar != null) {
            return veVar;
        }
        ve veVar2 = new ve(dwgVar, cwxVar, dwgVar.i.m);
        fzn fznVar = dwgVar.h;
        synchronized (((HashMap) fznVar.h)) {
            ve veVar3 = (ve) ((HashMap) fznVar.h).put(cwxVar, veVar2);
            if (veVar3 != null) {
                veVar2 = veVar3;
            }
        }
        return veVar2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ve)) {
            return false;
        }
        return this.f20149d.equals(((ve) obj).f20149d);
    }

    public final int hashCode() {
        return this.f20149d.az;
    }

    public final String i() {
        return this.f20150e;
    }

    public final boolean j() {
        ve veVar = this.f20148c;
        return veVar != null && veVar.j();
    }

    public final void k(dwg dwgVar, cwx cwxVar, boolean z) {
        String str;
        int lastIndexOf;
        String l = cwxVar.l();
        int lastIndexOf2 = l.lastIndexOf(46);
        boolean z2 = true;
        if (lastIndexOf2 == -1) {
            str = "";
        } else {
            String substring = l.substring(0, lastIndexOf2);
            l = l.substring(lastIndexOf2 + 1);
            str = substring;
        }
        if (!z || (lastIndexOf = l.lastIndexOf(36)) <= 0 || lastIndexOf == l.length() - 1) {
            z2 = false;
        } else {
            String str2 = str + '.' + l.substring(0, lastIndexOf);
            if (str.isEmpty()) {
                str2 = l.substring(0, lastIndexOf);
            }
            this.f20146a = null;
            this.f20148c = g(dwgVar, str2);
            l = l.substring(lastIndexOf + 1);
        }
        if (!z2) {
            this.f20146a = str;
            this.f20148c = null;
        }
        this.f20150e = l;
        this.f20147b = f(this.f20146a, l, this.f20148c, false, false);
    }

    public final String l() {
        return f(this.f20146a, this.f20150e, this.f20148c, false, true);
    }

    public final String m() {
        ve veVar = this.f20148c;
        return (veVar == null || !veVar.j()) ? this.f20147b : f(t(), i(), this.f20148c, true, false);
    }

    public final boolean n() {
        return this.f20148c != null;
    }

    public final String o() {
        StringBuilder sb = new StringBuilder();
        String t = t();
        char c2 = File.separatorChar;
        sb.append(t.replace('.', c2));
        sb.append(c2);
        sb.append(q().replace('.', '_'));
        return sb.toString();
    }

    @Override // java.lang.Comparable
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public final int compareTo(ve veVar) {
        return this.f20149d.l().compareTo(veVar.f20149d.l());
    }

    public final String q() {
        if (this.f20148c == null) {
            return i();
        }
        return this.f20148c.q() + '.' + i();
    }

    public final String r() {
        ve veVar = this.f20148c;
        if (veVar != null) {
            return veVar.r();
        }
        String str = this.f20146a;
        if (str != null) {
            return str;
        }
        throw new gck("Package is null for not inner class");
    }

    public final ve s() {
        ve veVar = this.f20148c;
        if (veVar == null) {
            return null;
        }
        ve s = veVar.s();
        return s != null ? s : this.f20148c;
    }

    public final String t() {
        return n() ? this.f20148c.t() : r();
    }

    public final String toString() {
        return this.f20147b;
    }
}
