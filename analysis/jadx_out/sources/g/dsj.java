package g;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class dsj implements chf {

    /* renamed from: a, reason: collision with root package name */
    public final cwx f14709a;

    /* renamed from: b, reason: collision with root package name */
    public String f14710b;

    /* renamed from: d, reason: collision with root package name */
    public final ve f14711d;

    /* renamed from: e, reason: collision with root package name */
    public final String f14712e;

    public dsj(ve veVar, String str, cwx cwxVar) {
        this.f14711d = veVar;
        this.f14712e = str;
        this.f14709a = cwxVar;
        this.f14710b = str;
    }

    public static dsj f(dwg dwgVar, cba cbaVar) {
        return dwgVar.h.s(new dsj(ve.g(dwgVar, cbaVar.d()), cbaVar.getName(), cwx.ba(cbaVar.getType())));
    }

    @Override // g.chf
    public final dsj c() {
        return this;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && dsj.class == obj.getClass()) {
            dsj dsjVar = (dsj) obj;
            if (this.f14712e.equals(dsjVar.f14712e) && this.f14709a.equals(dsjVar.f14709a) && this.f14711d.equals(dsjVar.f14711d)) {
                return true;
            }
        }
        return false;
    }

    public final boolean g() {
        return !Objects.equals(this.f14712e, this.f14710b);
    }

    public final int hashCode() {
        return (((this.f14712e.hashCode() * 31) + this.f14709a.az) * 31) + this.f14711d.f20149d.az;
    }

    public final String toString() {
        return this.f14711d + "." + this.f14712e + ' ' + this.f14709a;
    }
}
