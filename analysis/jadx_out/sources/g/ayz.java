package g;

import java.text.DateFormat;
import java.util.Date;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class ayz {

    /* renamed from: e, reason: collision with root package name */
    public final boolean f11093e;

    /* renamed from: f, reason: collision with root package name */
    public final String f11094f;

    /* renamed from: g, reason: collision with root package name */
    public final String f11095g;
    public final String h;
    public final boolean i;
    public final boolean j;
    public final String k;
    public final long l;
    public final boolean m;

    /* renamed from: d, reason: collision with root package name */
    public static final Pattern f11092d = Pattern.compile("(\\d{2,4})[^\\d]*");

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f11089a = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");

    /* renamed from: b, reason: collision with root package name */
    public static final Pattern f11090b = Pattern.compile("(\\d{1,2})[^\\d]*");

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f11091c = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    public ayz(String str, String str2, long j, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4) {
        this.h = str;
        this.k = str2;
        this.l = j;
        this.f11094f = str3;
        this.f11095g = str4;
        this.i = z;
        this.m = z2;
        this.f11093e = z3;
        this.j = z4;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ayz)) {
            return false;
        }
        ayz ayzVar = (ayz) obj;
        return bff.n(ayzVar.h, this.h) && bff.n(ayzVar.k, this.k) && ayzVar.l == this.l && bff.n(ayzVar.f11094f, this.f11094f) && bff.n(ayzVar.f11095g, this.f11095g) && ayzVar.i == this.i && ayzVar.m == this.m && ayzVar.f11093e == this.f11093e && ayzVar.j == this.j;
    }

    public final int hashCode() {
        int k = tn.k(tn.k(527, 31, this.h), 31, this.k);
        long j = this.l;
        return ((((((tn.k(tn.k((k + ((int) (j ^ (j >>> 32)))) * 31, 31, this.f11094f), 31, this.f11095g) + (this.i ? 1231 : 1237)) * 31) + (this.m ? 1231 : 1237)) * 31) + (this.f11093e ? 1231 : 1237)) * 31) + (this.j ? 1231 : 1237);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.h);
        sb.append('=');
        sb.append(this.k);
        if (this.f11093e) {
            long j = this.l;
            if (j == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                String format = ((DateFormat) eli.f15755a.get()).format(new Date(j));
                bff.e(format, "STANDARD_DATE_FORMAT.get().format(this)");
                sb.append(format);
            }
        }
        if (!this.j) {
            sb.append("; domain=");
            sb.append(this.f11094f);
        }
        sb.append("; path=");
        sb.append(this.f11095g);
        if (this.i) {
            sb.append("; secure");
        }
        if (this.m) {
            sb.append("; httponly");
        }
        String sb2 = sb.toString();
        bff.e(sb2, "toString()");
        return sb2;
    }
}
