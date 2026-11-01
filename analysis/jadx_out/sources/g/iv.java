package g;

import j$.util.Objects;

/* loaded from: classes3.dex */
public final class iv {

    /* renamed from: a, reason: collision with root package name */
    public final Object f19443a;

    public iv(Object obj) {
        this.f19443a = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && iv.class == obj.getClass() && this.f19443a.equals(((iv) obj).f19443a);
    }

    public final int hashCode() {
        return Objects.hash(this.f19443a, null);
    }
}
