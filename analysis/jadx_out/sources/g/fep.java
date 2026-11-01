package g;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class fep {

    /* renamed from: a, reason: collision with root package name */
    public final cih f16670a;

    /* renamed from: b, reason: collision with root package name */
    public final eek f16671b;

    public fep(cih cihVar, eek eekVar) {
        this.f16670a = cihVar;
        this.f16671b = eekVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fep)) {
            return false;
        }
        fep fepVar = (fep) obj;
        return this.f16670a.equals(fepVar.f16670a) && this.f16671b.equals(fepVar.f16671b);
    }

    public final int hashCode() {
        return Objects.hash(this.f16670a, this.f16671b);
    }

    public final String toString() {
        return "BlockInsnPair{" + this.f16670a + ": " + this.f16671b + '}';
    }
}
