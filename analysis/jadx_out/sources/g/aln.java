package g;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class aln extends axr implements cvw {
    final /* synthetic */ String $hostname;
    final /* synthetic */ List<Certificate> $peerCertificates;
    final /* synthetic */ bws this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aln(bws bwsVar, List list, String str) {
        super(0);
        this.this$0 = bwsVar;
        this.$peerCertificates = list;
        this.$hostname = str;
    }

    @Override // g.cvw
    public final Object invoke() {
        aky akyVar = this.this$0.f12338c;
        List<Certificate> ap = akyVar != null ? akyVar.ap(this.$hostname, this.$peerCertificates) : this.$peerCertificates;
        ArrayList arrayList = new ArrayList(bkk.a(ap));
        for (Certificate certificate : ap) {
            bff.ag(certificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
            arrayList.add((X509Certificate) certificate);
        }
        return arrayList;
    }
}
