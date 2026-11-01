package g;

import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;

/* loaded from: classes3.dex */
public final class guc extends axr implements cvw {
    final /* synthetic */ cvw $peerCertificatesFn;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public guc(cvw cvwVar) {
        super(0);
        this.$peerCertificatesFn = cvwVar;
    }

    @Override // g.cvw
    public final Object invoke() {
        try {
            return (List) this.$peerCertificatesFn.invoke();
        } catch (SSLPeerUnverifiedException unused) {
            return fai.f16469a;
        }
    }
}
