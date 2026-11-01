package g;

import java.util.Collections;
import java.util.Map;

/* loaded from: classes3.dex */
public final class cec {

    /* renamed from: a, reason: collision with root package name */
    public final String f12727a;

    /* renamed from: b, reason: collision with root package name */
    public final Map f12728b;

    public cec(String str, Map map) {
        this.f12727a = str;
        this.f12728b = map;
    }

    public static cec c(String str) {
        return new cec(str, Collections.EMPTY_MAP);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cec)) {
            return false;
        }
        cec cecVar = (cec) obj;
        return this.f12727a.equals(cecVar.f12727a) && this.f12728b.equals(cecVar.f12728b);
    }

    public final int hashCode() {
        return this.f12728b.hashCode() + (this.f12727a.hashCode() * 31);
    }

    public final String toString() {
        return "FieldDescriptor{name=" + this.f12727a + ", properties=" + this.f12728b.values() + "}";
    }
}
