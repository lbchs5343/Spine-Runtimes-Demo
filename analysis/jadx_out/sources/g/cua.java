package g;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* loaded from: classes3.dex */
public abstract class cua {

    /* renamed from: a, reason: collision with root package name */
    public static final Charset f13515a;

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f13516b;

    static {
        Charset.forName("US-ASCII");
        f13515a = Charset.forName("UTF-8");
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f13516b = bArr;
        ByteBuffer.wrap(bArr);
    }
}
