package g;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

/* loaded from: classes3.dex */
public final class sf implements GenericArrayType {

    /* renamed from: a, reason: collision with root package name */
    public final Type f19964a;

    public sf(Type type) {
        this.f19964a = type;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof GenericArrayType) && aky.ae(this, (GenericArrayType) obj);
    }

    @Override // java.lang.reflect.GenericArrayType
    public final Type getGenericComponentType() {
        return this.f19964a;
    }

    public final int hashCode() {
        return this.f19964a.hashCode();
    }

    public final String toString() {
        return aky.s(this.f19964a) + "[]";
    }
}
