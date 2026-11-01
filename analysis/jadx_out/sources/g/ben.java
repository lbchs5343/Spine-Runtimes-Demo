package g;

import j$.util.Objects;
import java.util.List;

/* loaded from: classes.dex */
public final class ben {

    /* renamed from: a, reason: collision with root package name */
    public String f11393a;

    /* renamed from: b, reason: collision with root package name */
    public String f11394b;

    /* renamed from: c, reason: collision with root package name */
    public List f11395c;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ben)) {
            return false;
        }
        ben benVar = (ben) obj;
        return Objects.equals(this.f11393a, benVar.f11393a) && Objects.equals(this.f11394b, benVar.f11394b) && Objects.equals(this.f11395c, benVar.f11395c);
    }

    public final int hashCode() {
        return Objects.hash(this.f11393a, this.f11394b, this.f11395c);
    }
}
