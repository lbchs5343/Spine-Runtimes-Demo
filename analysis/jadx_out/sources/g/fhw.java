package g;

import j$.util.Objects;

/* loaded from: classes3.dex */
public final class fhw {

    /* renamed from: a, reason: collision with root package name */
    public final Class f16815a;

    /* renamed from: b, reason: collision with root package name */
    public final Class f16816b;

    public /* synthetic */ fhw(Class cls, Class cls2) {
        this.f16815a = cls;
        this.f16816b = cls2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof fhw)) {
            return false;
        }
        fhw fhwVar = (fhw) obj;
        return fhwVar.f16815a.equals(this.f16815a) && fhwVar.f16816b.equals(this.f16816b);
    }

    public final int hashCode() {
        return Objects.hash(this.f16815a, this.f16816b);
    }

    public final String toString() {
        return awf.i(this.f16815a.getSimpleName(), " with serialization type: ", this.f16816b.getSimpleName());
    }
}
