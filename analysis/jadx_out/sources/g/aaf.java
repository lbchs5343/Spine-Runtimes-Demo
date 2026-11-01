package g;

import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;

/* loaded from: classes3.dex */
public final class aaf implements WildcardType {

    /* renamed from: a, reason: collision with root package name */
    public final Type f9842a;

    /* renamed from: b, reason: collision with root package name */
    public final Type f9843b;

    public aaf(Type[] typeArr, Type[] typeArr2) {
        if (typeArr2.length > 1) {
            throw new IllegalArgumentException();
        }
        if (typeArr.length != 1) {
            throw new IllegalArgumentException();
        }
        if (typeArr2.length != 1) {
            typeArr[0].getClass();
            aky.aj(typeArr[0]);
            this.f9843b = null;
            this.f9842a = typeArr[0];
            return;
        }
        typeArr2[0].getClass();
        aky.aj(typeArr2[0]);
        if (typeArr[0] != Object.class) {
            throw new IllegalArgumentException();
        }
        this.f9843b = typeArr2[0];
        this.f9842a = Object.class;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof WildcardType) && aky.ae(this, (WildcardType) obj);
    }

    @Override // java.lang.reflect.WildcardType
    public final Type[] getLowerBounds() {
        Type type = this.f9843b;
        return type != null ? new Type[]{type} : aky.f10425e;
    }

    @Override // java.lang.reflect.WildcardType
    public final Type[] getUpperBounds() {
        return new Type[]{this.f9842a};
    }

    public final int hashCode() {
        Type type = this.f9843b;
        return (type != null ? type.hashCode() + 31 : 1) ^ (this.f9842a.hashCode() + 31);
    }

    public final String toString() {
        Type type = this.f9843b;
        if (type != null) {
            return "? super " + aky.s(type);
        }
        Type type2 = this.f9842a;
        if (type2 == Object.class) {
            return "?";
        }
        return "? extends " + aky.s(type2);
    }
}
