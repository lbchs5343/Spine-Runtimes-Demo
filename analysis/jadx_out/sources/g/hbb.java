package g;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class hbb extends ccm implements awj, cfr, Comparable {

    /* renamed from: c, reason: collision with root package name */
    public final gxr f19155c;

    /* renamed from: e, reason: collision with root package name */
    public final dwg f19157e;

    /* renamed from: f, reason: collision with root package name */
    public final gxr f19158f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f19159g = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f19156d = new ArrayList();

    public hbb(dwg dwgVar, hbb hbbVar, gxr gxrVar) {
        this.f19157e = dwgVar;
        this.f19158f = gxrVar;
        this.f19155c = gxrVar;
    }

    public static hbb h(dwg dwgVar, String str) {
        hbb hbbVar = (hbb) dwgVar.f14932d.get(str);
        if (hbbVar != null) {
            return hbbVar;
        }
        gxr d2 = gxr.d(dwgVar, str);
        gxr gxrVar = d2.f18968a;
        hbb h = gxrVar == null ? null : h(dwgVar, gxrVar.f18969b);
        hbb hbbVar2 = new hbb(dwgVar, h, d2);
        if (h != null) {
            h.f19159g.add(hbbVar2);
        }
        dwgVar.f14932d.put(hbbVar2.f19158f.f18969b, hbbVar2);
        dwgVar.m.add(hbbVar2);
        return hbbVar2;
    }

    @Override // g.awj
    public final String _by() {
        return "";
    }

    @Override // g.awj
    public final dwg a() {
        return this.f19157e;
    }

    @Override // g.cdv
    public final pk b() {
        return pk.PKG;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f19158f.f18969b.compareTo(((hbb) obj).f19158f.f18969b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hbb)) {
            return false;
        }
        return this.f19158f.equals(((hbb) obj).f19158f);
    }

    public final int hashCode() {
        return this.f19158f.f18969b.hashCode();
    }

    public final String toString() {
        return this.f19158f.f18969b;
    }

    @Override // g.awj
    public final String typeName() {
        return "package";
    }
}
