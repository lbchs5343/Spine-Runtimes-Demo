package g;

import java.util.Locale;

/* loaded from: classes.dex */
public final class gxa {

    /* renamed from: a, reason: collision with root package name */
    public final int f18918a;

    /* renamed from: b, reason: collision with root package name */
    public final String f18919b;

    /* renamed from: c, reason: collision with root package name */
    public final String f18920c;

    /* renamed from: d, reason: collision with root package name */
    public final int f18921d;

    /* renamed from: e, reason: collision with root package name */
    public final String f18922e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f18923f;

    /* renamed from: g, reason: collision with root package name */
    public final int f18924g;

    public gxa(int i, String str, String str2, String str3, boolean z, int i2) {
        this.f18920c = str;
        this.f18922e = str2;
        this.f18923f = z;
        this.f18918a = i;
        this.f18919b = str3;
        this.f18921d = i2;
        Locale locale = Locale.US;
        bff.e(locale, "US");
        String upperCase = str2.toUpperCase(locale);
        bff.e(upperCase, "this as java.lang.String).toUpperCase(locale)");
        this.f18924g = dcv.bq(upperCase, "INT") ? 3 : (dcv.bq(upperCase, "CHAR") || dcv.bq(upperCase, "CLOB") || dcv.bq(upperCase, "TEXT")) ? 2 : dcv.bq(upperCase, "BLOB") ? 5 : (dcv.bq(upperCase, "REAL") || dcv.bq(upperCase, "FLOA") || dcv.bq(upperCase, "DOUB")) ? 4 : 1;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof gxa)) {
                return false;
            }
            gxa gxaVar = (gxa) obj;
            if (this.f18918a != gxaVar.f18918a) {
                return false;
            }
            String str = gxaVar.f18920c;
            int i = gxaVar.f18921d;
            String str2 = gxaVar.f18919b;
            if (!this.f18920c.equals(str) || this.f18923f != gxaVar.f18923f) {
                return false;
            }
            String str3 = this.f18919b;
            int i2 = this.f18921d;
            if (i2 == 1 && i == 2 && str3 != null && !acr.bf(str3, str2)) {
                return false;
            }
            if (i2 == 2 && i == 1 && str2 != null && !acr.bf(str2, str3)) {
                return false;
            }
            if (i2 != 0 && i2 == i) {
                if (str3 != null) {
                    if (!acr.bf(str3, str2)) {
                        return false;
                    }
                } else if (str2 != null) {
                    return false;
                }
            }
            if (this.f18924g != gxaVar.f18924g) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        return (((((this.f18920c.hashCode() * 31) + this.f18924g) * 31) + (this.f18923f ? 1231 : 1237)) * 31) + this.f18918a;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Column{name='");
        sb.append(this.f18920c);
        sb.append("', type='");
        sb.append(this.f18922e);
        sb.append("', affinity='");
        sb.append(this.f18924g);
        sb.append("', notNull=");
        sb.append(this.f18923f);
        sb.append(", primaryKeyPosition=");
        sb.append(this.f18918a);
        sb.append(", defaultValue='");
        String str = this.f18919b;
        if (str == null) {
            str = "undefined";
        }
        return awf.ad(sb, str, "'}");
    }
}
