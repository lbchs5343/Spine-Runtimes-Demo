package g;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class fiq implements fog {

    /* renamed from: a, reason: collision with root package name */
    public final au f16852a;

    /* renamed from: b, reason: collision with root package name */
    public final cwx f16853b;

    public fiq(au auVar, cwx cwxVar, int i) {
        this.f16852a = auVar;
        this.f16853b = cwxVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && fiq.class == obj.getClass()) {
            fiq fiqVar = (fiq) obj;
            if (this.f16852a == fiqVar.f16852a && Objects.equals(this.f16853b, fiqVar.f16853b)) {
                return true;
            }
        }
        return false;
    }

    @Override // g.fog
    public final au f() {
        return this.f16852a;
    }

    @Override // g.fog
    public final cwx getType() {
        return this.f16853b;
    }

    public final int hashCode() {
        return Objects.hash(this.f16852a, this.f16853b);
    }

    public final String toString() {
        return "{" + this.f16852a + ": " + this.f16853b + '}';
    }
}
