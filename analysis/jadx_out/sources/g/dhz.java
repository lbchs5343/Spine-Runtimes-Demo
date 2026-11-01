package g;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* loaded from: classes3.dex */
public abstract class dhz {

    /* renamed from: a, reason: collision with root package name */
    public static final Charset f14209a;

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f14210b;

    static {
        Charset.forName("US-ASCII");
        f14209a = Charset.forName("UTF-8");
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f14210b = bArr;
        ByteBuffer.wrap(bArr);
    }

    public static int c(long j) {
        return (int) (j ^ (j >>> 32));
    }

    public static cys d(Object obj, Object obj2) {
        cys cysVar = (cys) ((cir) obj);
        crf crfVar = (crf) cysVar.a(5);
        crfVar.l(cysVar);
        cir cirVar = (cir) obj2;
        if (!crfVar.j.getClass().isInstance(cirVar)) {
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }
        crfVar.l((cys) cirVar);
        return crfVar.q();
    }
}
