package g;

import j$.util.Objects;
import java.util.HashSet;
import java.util.List;

/* loaded from: classes.dex */
public final class ema {

    /* renamed from: a, reason: collision with root package name */
    public final List f15790a;

    public ema(List list) {
        bff.p(list, "topics");
        this.f15790a = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ema)) {
            return false;
        }
        List list = this.f15790a;
        ema emaVar = (ema) obj;
        if (list.size() != emaVar.f15790a.size()) {
            return false;
        }
        return new HashSet(list).equals(new HashSet(emaVar.f15790a));
    }

    public final int hashCode() {
        return Objects.hash(this.f15790a);
    }

    public final String toString() {
        return "Topics=" + this.f15790a;
    }
}
