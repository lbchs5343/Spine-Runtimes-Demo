package g;

import java.io.Serializable;

/* loaded from: classes.dex */
public final class ger implements Serializable {
    private final Object first;
    private final Object second;

    public ger(Object obj, Object obj2) {
        this.first = obj;
        this.second = obj2;
    }

    public final Object a() {
        return this.second;
    }

    public final Object b() {
        return this.first;
    }

    public final Object c() {
        return this.second;
    }

    public final Object d() {
        return this.first;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ger)) {
            return false;
        }
        ger gerVar = (ger) obj;
        return bff.n(this.first, gerVar.first) && bff.n(this.second, gerVar.second);
    }

    public final int hashCode() {
        Object obj = this.first;
        int hashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        Object obj2 = this.second;
        return hashCode + (obj2 != null ? obj2.hashCode() : 0);
    }

    public final String toString() {
        return "(" + this.first + ", " + this.second + ')';
    }
}
