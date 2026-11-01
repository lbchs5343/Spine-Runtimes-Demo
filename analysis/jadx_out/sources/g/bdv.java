package g;

import java.util.List;

/* loaded from: classes.dex */
public final class bdv {

    /* renamed from: a, reason: collision with root package name */
    public final List f11350a;

    /* renamed from: b, reason: collision with root package name */
    public final List f11351b;

    /* renamed from: c, reason: collision with root package name */
    public final String f11352c;

    /* renamed from: d, reason: collision with root package name */
    public final String f11353d;

    /* renamed from: e, reason: collision with root package name */
    public final String f11354e;

    public bdv(String str, String str2, String str3, List list, List list2) {
        bff.p(list, "columnNames");
        bff.p(list2, "referenceColumnNames");
        this.f11352c = str;
        this.f11353d = str2;
        this.f11354e = str3;
        this.f11350a = list;
        this.f11351b = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bdv)) {
            return false;
        }
        bdv bdvVar = (bdv) obj;
        if (bff.n(this.f11352c, bdvVar.f11352c) && bff.n(this.f11353d, bdvVar.f11353d) && bff.n(this.f11354e, bdvVar.f11354e) && bff.n(this.f11350a, bdvVar.f11350a)) {
            return bff.n(this.f11351b, bdvVar.f11351b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f11351b.hashCode() + ((this.f11350a.hashCode() + tn.k(tn.k(this.f11352c.hashCode() * 31, 31, this.f11353d), 31, this.f11354e)) * 31);
    }

    public final String toString() {
        return "ForeignKey{referenceTable='" + this.f11352c + "', onDelete='" + this.f11353d + " +', onUpdate='" + this.f11354e + "', columnNames=" + this.f11350a + ", referenceColumnNames=" + this.f11351b + '}';
    }
}
