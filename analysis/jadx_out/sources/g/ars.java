package g;

import java.security.cert.X509Certificate;

/* loaded from: classes3.dex */
public final class ars extends bit {
    private final byte[] zza;

    public ars(X509Certificate x509Certificate, byte[] bArr) {
        super(x509Certificate);
        this.zza = bArr;
    }

    @Override // java.security.cert.Certificate
    public final byte[] getEncoded() {
        return this.zza;
    }
}
