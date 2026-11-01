package g;

import j$.util.Objects;
import java.io.Serializable;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;

/* loaded from: classes3.dex */
public final class fkc implements WildcardType, Serializable {
    private static final long serialVersionUID = 0;
    private final Type lowerBound;
    private final Type upperBound;

    public fkc(Type[] typeArr, Type[] typeArr2) {
        ckd.ba(typeArr2.length <= 1);
        ckd.ba(typeArr.length == 1);
        if (typeArr2.length != 1) {
            Objects.requireNonNull(typeArr[0]);
            acr.ab(typeArr[0]);
            this.lowerBound = null;
            this.upperBound = acr.bx(typeArr[0]);
            return;
        }
        Objects.requireNonNull(typeArr2[0]);
        acr.ab(typeArr2[0]);
        ckd.ba(typeArr[0] == Object.class);
        this.lowerBound = acr.bx(typeArr2[0]);
        this.upperBound = Object.class;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof WildcardType) && acr.bd(this, (WildcardType) obj);
    }

    @Override // java.lang.reflect.WildcardType
    public final Type[] getLowerBounds() {
        Type type = this.lowerBound;
        return type != null ? new Type[]{type} : acr.f9990c;
    }

    @Override // java.lang.reflect.WildcardType
    public final Type[] getUpperBounds() {
        return new Type[]{this.upperBound};
    }

    public final int hashCode() {
        Type type = this.lowerBound;
        return (type != null ? type.hashCode() + 31 : 1) ^ (this.upperBound.hashCode() + 31);
    }

    public final String toString() {
        if (this.lowerBound != null) {
            return "? super " + acr.al(this.lowerBound);
        }
        if (this.upperBound == Object.class) {
            return "?";
        }
        return "? extends " + acr.al(this.upperBound);
    }
}
