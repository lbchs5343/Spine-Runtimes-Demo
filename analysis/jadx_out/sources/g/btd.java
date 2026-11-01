package g;

/* loaded from: classes3.dex */
public final class btd {

    /* renamed from: a, reason: collision with root package name */
    public static final btd f12174a = new btd("", "", false);

    /* renamed from: b, reason: collision with root package name */
    public static final btd f12175b = new btd("\n", "  ", true);

    /* renamed from: c, reason: collision with root package name */
    public final String f12176c;

    /* renamed from: d, reason: collision with root package name */
    public final String f12177d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f12178e;

    public btd(String str, String str2, boolean z) {
        if (!str.matches("[\r\n]*")) {
            throw new IllegalArgumentException("Only combinations of \\n and \\r are allowed in newline.");
        }
        if (!str2.matches("[ \t]*")) {
            throw new IllegalArgumentException("Only combinations of spaces and tabs are allowed in indent.");
        }
        this.f12176c = str;
        this.f12177d = str2;
        this.f12178e = z;
    }
}
