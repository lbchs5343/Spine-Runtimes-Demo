package com.bytedance.sdk.component.ox.d.dq.kk;

import java.security.cert.X509Certificate;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import javax.security.auth.x500.X500Principal;

/* loaded from: classes.dex */
public final class d implements iw {
    private final Map<X500Principal, Set<X509Certificate>> dq = new LinkedHashMap();

    public d(X509Certificate... x509CertificateArr) {
        for (X509Certificate x509Certificate : x509CertificateArr) {
            X500Principal subjectX500Principal = x509Certificate.getSubjectX500Principal();
            Set<X509Certificate> set = this.dq.get(subjectX500Principal);
            if (set == null) {
                set = new LinkedHashSet<>(1);
                this.dq.put(subjectX500Principal, set);
            }
            set.add(x509Certificate);
        }
    }

    @Override // com.bytedance.sdk.component.ox.d.dq.kk.iw
    public X509Certificate dq(X509Certificate x509Certificate) {
        Set<X509Certificate> set = this.dq.get(x509Certificate.getIssuerX500Principal());
        if (set == null) {
            return null;
        }
        for (X509Certificate x509Certificate2 : set) {
            try {
                x509Certificate.verify(x509Certificate2.getPublicKey());
                return x509Certificate2;
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof d) && ((d) obj).dq.equals(this.dq);
    }

    public int hashCode() {
        return this.dq.hashCode();
    }
}
