package g;

import java.security.cert.Certificate;
import java.util.List;

/* loaded from: classes3.dex */
public final class acz extends axr implements cvw {
    final /* synthetic */ List<Certificate> $peerCertificatesCopy;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public acz(List list) {
        super(0);
        this.$peerCertificatesCopy = list;
    }

    @Override // g.cvw
    public final Object invoke() {
        return this.$peerCertificatesCopy;
    }
}
