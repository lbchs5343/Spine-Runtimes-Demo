package g;

/* loaded from: classes3.dex */
public enum gdk {
    TLS_1_3("TLSv1.3"),
    TLS_1_2("TLSv1.2"),
    TLS_1_1("TLSv1.1"),
    TLS_1_0("TLSv1"),
    SSL_3_0("SSLv3");

    public static final bap Companion = new bap();
    private final String javaName;

    gdk(String str) {
        this.javaName = str;
    }

    public final String b() {
        return this.javaName;
    }
}
