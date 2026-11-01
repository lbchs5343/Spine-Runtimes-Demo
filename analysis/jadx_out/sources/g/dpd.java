package g;

import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class dpd {

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f14576a = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");

    /* renamed from: b, reason: collision with root package name */
    public static final Pattern f14577b = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    /* renamed from: c, reason: collision with root package name */
    public final String f14578c;

    /* renamed from: d, reason: collision with root package name */
    public final String f14579d;

    /* renamed from: e, reason: collision with root package name */
    public final String[] f14580e;

    public dpd(String str, String str2, String[] strArr) {
        this.f14578c = str;
        this.f14579d = str2;
        this.f14580e = strArr;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof dpd) && bff.n(((dpd) obj).f14578c, this.f14578c);
    }

    public final int hashCode() {
        return this.f14578c.hashCode();
    }

    public final String toString() {
        return this.f14578c;
    }
}
