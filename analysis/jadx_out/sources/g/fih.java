package g;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class fih implements eue {

    /* renamed from: a, reason: collision with root package name */
    public final cwx f16833a;

    /* renamed from: b, reason: collision with root package name */
    public final String f16834b;

    public fih(String str, cwx cwxVar) {
        this.f16833a = cwxVar;
        this.f16834b = str;
    }

    @Override // g.eue
    public final String c() {
        return toString();
    }

    @Override // g.eue
    public final /* bridge */ /* synthetic */ fky d() {
        return acq.s;
    }

    @Override // g.eue
    public final /* synthetic */ boolean e() {
        return false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && fih.class == obj.getClass()) {
            fih fihVar = (fih) obj;
            if (Objects.equals(this.f16833a, fihVar.f16833a) && Objects.equals(this.f16834b, fihVar.f16834b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f16833a, this.f16834b);
    }

    public final String toString() {
        return "D('" + this.f16834b + "' " + this.f16833a + ')';
    }
}
