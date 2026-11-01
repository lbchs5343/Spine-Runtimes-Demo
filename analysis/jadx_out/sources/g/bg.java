package g;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class bg {

    /* renamed from: a, reason: collision with root package name */
    public final List f11493a;

    /* renamed from: b, reason: collision with root package name */
    public final String f11494b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f11495c;

    /* renamed from: d, reason: collision with root package name */
    public final List f11496d;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.Object, java.util.Collection, java.util.List] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.util.ArrayList] */
    public bg(String str, boolean z, List list, List list2) {
        bff.p(list, "columns");
        bff.p(list2, "orders");
        this.f11494b = str;
        this.f11495c = z;
        this.f11496d = list;
        this.f11493a = list2;
        if (list2.isEmpty()) {
            int size = list.size();
            list2 = new ArrayList(size);
            for (int i = 0; i < size; i++) {
                list2.add(cfn.ASC.name());
            }
        }
        this.f11493a = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof bg) {
            bg bgVar = (bg) obj;
            boolean z = bgVar.f11495c;
            String str = bgVar.f11494b;
            if (this.f11495c == z && bff.n(this.f11496d, bgVar.f11496d) && bff.n(this.f11493a, bgVar.f11493a)) {
                String str2 = this.f11494b;
                return dmc.bw(str2, "index_", false) ? dmc.bw(str, "index_", false) : str2.equals(str);
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f11494b;
        return this.f11493a.hashCode() + ((this.f11496d.hashCode() + ((((dmc.bw(str, "index_", false) ? -1184239155 : str.hashCode()) * 31) + (this.f11495c ? 1 : 0)) * 31)) * 31);
    }

    public final String toString() {
        return "Index{name='" + this.f11494b + "', unique=" + this.f11495c + ", columns=" + this.f11496d + ", orders=" + this.f11493a + "'}";
    }
}
