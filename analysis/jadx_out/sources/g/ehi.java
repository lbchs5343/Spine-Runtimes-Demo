package g;

import java.io.Closeable;
import java.nio.charset.Charset;

/* loaded from: classes3.dex */
public abstract class ehi implements Closeable {
    public abstract dsy c();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        erq.m(c());
    }

    public abstract long d();

    public abstract dpd e();

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0037, code lost:
    
        if (r2 == null) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0031 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String h() {
        Charset charset;
        String str;
        dsy c2 = c();
        try {
            dpd e2 = e();
            if (e2 != null) {
                charset = ejm.f15667a;
                String[] strArr = e2.f14580e;
                int i = 0;
                int bf = ffb.bf(0, strArr.length - 1, 2);
                if (bf >= 0) {
                    while (!dmc.bx(strArr[i], "charset")) {
                        if (i != bf) {
                            i += 2;
                        }
                    }
                    str = strArr[i + 1];
                    if (str != null) {
                        try {
                            charset = Charset.forName(str);
                        } catch (IllegalArgumentException unused) {
                        }
                    }
                }
                str = null;
                if (str != null) {
                }
            }
            charset = ejm.f15667a;
            String ad = c2.ad(erq.af(c2, charset));
            c2.close();
            return ad;
        } finally {
        }
    }
}
