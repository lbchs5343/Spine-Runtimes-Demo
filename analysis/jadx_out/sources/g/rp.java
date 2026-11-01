package g;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class rp extends axr implements cvw {
    final /* synthetic */ gba this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rp(gba gbaVar) {
        super(0);
        this.this$0 = gbaVar;
    }

    @Override // g.cvw
    public final Object invoke() {
        czl czlVar = this.this$0.j;
        bff.d(czlVar);
        List<Certificate> e2 = czlVar.e();
        ArrayList arrayList = new ArrayList(bkk.a(e2));
        for (Certificate certificate : e2) {
            bff.ag(certificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
            arrayList.add((X509Certificate) certificate);
        }
        return arrayList;
    }
}
