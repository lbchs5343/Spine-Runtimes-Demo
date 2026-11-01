package g;

/* loaded from: classes3.dex */
public final class bap {
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static gdk a(String str) {
        bff.p(str, "javaName");
        int hashCode = str.hashCode();
        if (hashCode != 79201641) {
            if (hashCode != 79923350) {
                switch (hashCode) {
                    case -503070503:
                        if (str.equals("TLSv1.1")) {
                            return gdk.TLS_1_1;
                        }
                        break;
                    case -503070502:
                        if (str.equals("TLSv1.2")) {
                            return gdk.TLS_1_2;
                        }
                        break;
                    case -503070501:
                        if (str.equals("TLSv1.3")) {
                            return gdk.TLS_1_3;
                        }
                        break;
                }
            } else if (str.equals("TLSv1")) {
                return gdk.TLS_1_0;
            }
        } else if (str.equals("SSLv3")) {
            return gdk.SSL_3_0;
        }
        throw new IllegalArgumentException("Unexpected TLS version: ".concat(str));
    }
}
