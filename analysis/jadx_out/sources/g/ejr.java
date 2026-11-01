package g;

import j$.util.Objects;

/* loaded from: classes3.dex */
public final class ejr {

    /* renamed from: a, reason: collision with root package name */
    public final Class f15675a;

    /* renamed from: b, reason: collision with root package name */
    public final Class f15676b;

    public /* synthetic */ ejr(Class cls, Class cls2) {
        this.f15675a = cls;
        this.f15676b = cls2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ejr)) {
            return false;
        }
        ejr ejrVar = (ejr) obj;
        return ejrVar.f15675a.equals(this.f15675a) && ejrVar.f15676b.equals(this.f15676b);
    }

    public final int hashCode() {
        return Objects.hash(this.f15675a, this.f15676b);
    }

    public final String toString() {
        return awf.i(this.f15675a.getSimpleName(), " with primitive type: ", this.f15676b.getSimpleName());
    }
}
