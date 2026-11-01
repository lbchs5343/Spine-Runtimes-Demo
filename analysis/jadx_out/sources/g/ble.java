package g;

import j$.util.Objects;
import java.io.Serializable;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

/* loaded from: classes3.dex */
public final class ble implements GenericArrayType, Serializable {
    private static final long serialVersionUID = 0;
    private final Type componentType;

    public ble(Type type) {
        Objects.requireNonNull(type);
        this.componentType = acr.bx(type);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof GenericArrayType) && acr.bd(this, (GenericArrayType) obj);
    }

    @Override // java.lang.reflect.GenericArrayType
    public final Type getGenericComponentType() {
        return this.componentType;
    }

    public final int hashCode() {
        return this.componentType.hashCode();
    }

    public final String toString() {
        return acr.al(this.componentType) + "[]";
    }
}
