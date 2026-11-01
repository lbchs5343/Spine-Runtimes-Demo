package g;

import java.security.GeneralSecurityException;
import java.security.cert.X509Certificate;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;

/* loaded from: classes3.dex */
public final class etu extends aky {
    public final bom aq;

    public etu(bom bomVar) {
        bff.p(bomVar, "trustRootIndex");
        this.aq = bomVar;
    }

    @Override // g.aky
    public final List ap(String str, List list) {
        bff.p(list, "chain");
        bff.p(str, "hostname");
        ArrayDeque arrayDeque = new ArrayDeque(list);
        ArrayList arrayList = new ArrayList();
        Object removeFirst = arrayDeque.removeFirst();
        bff.e(removeFirst, "queue.removeFirst()");
        arrayList.add(removeFirst);
        boolean z = false;
        for (int i = 0; i < 9; i++) {
            Object obj = arrayList.get(arrayList.size() - 1);
            bff.ag(obj, "null cannot be cast to non-null type java.security.cert.X509Certificate");
            X509Certificate x509Certificate = (X509Certificate) obj;
            X509Certificate c2 = this.aq.c(x509Certificate);
            if (c2 == null) {
                Iterator it = arrayDeque.iterator();
                bff.e(it, "queue.iterator()");
                while (it.hasNext()) {
                    Object next = it.next();
                    bff.ag(next, "null cannot be cast to non-null type java.security.cert.X509Certificate");
                    X509Certificate x509Certificate2 = (X509Certificate) next;
                    if (bff.n(x509Certificate.getIssuerDN(), x509Certificate2.getSubjectDN())) {
                        try {
                            x509Certificate.verify(x509Certificate2.getPublicKey());
                            it.remove();
                            arrayList.add(x509Certificate2);
                        } catch (GeneralSecurityException unused) {
                        }
                    }
                }
                if (!z) {
                    throw new SSLPeerUnverifiedException("Failed to find a trusted cert that signed " + x509Certificate);
                }
                return arrayList;
            }
            if (arrayList.size() > 1 || !x509Certificate.equals(c2)) {
                arrayList.add(c2);
            }
            if (bff.n(c2.getIssuerDN(), c2.getSubjectDN())) {
                try {
                    c2.verify(c2.getPublicKey());
                    return arrayList;
                } catch (GeneralSecurityException unused2) {
                }
            }
            z = true;
        }
        throw new SSLPeerUnverifiedException("Certificate chain too long: " + arrayList);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof etu) && bff.n(((etu) obj).aq, this.aq);
    }

    public final int hashCode() {
        return this.aq.hashCode();
    }
}
