package com.bytedance.sdk.component.ox.d;

import g.tn;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javax.net.ssl.SSLPeerUnverifiedException;

/* loaded from: classes.dex */
public final class mn {
    public static final mn dq = new dq().dq();

    /* renamed from: d, reason: collision with root package name */
    private final Set<d> f2134d;
    private final com.bytedance.sdk.component.ox.d.dq.kk.ox ox;

    public static final class d {

        /* renamed from: d, reason: collision with root package name */
        final String f2135d;
        final String dq;
        final String ox;
        final com.bytedance.sdk.component.ox.dq.iw p;

        public boolean dq(String str) {
            if (!this.dq.startsWith("*.")) {
                return str.equals(this.f2135d);
            }
            int indexOf = str.indexOf(46);
            if ((str.length() - indexOf) - 1 != this.f2135d.length()) {
                return false;
            }
            String str2 = this.f2135d;
            return str.regionMatches(false, indexOf + 1, str2, 0, str2.length());
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return this.dq.equals(dVar.dq) && this.ox.equals(dVar.ox) && this.p.equals(dVar.p);
        }

        public int hashCode() {
            return this.p.hashCode() + tn.k(tn.k(527, 31, this.dq), 31, this.ox);
        }

        public String toString() {
            return this.ox + this.p.d();
        }
    }

    public static final class dq {
        private final List<d> dq = new ArrayList();

        public mn dq() {
            return new mn(new LinkedHashSet(this.dq), null);
        }
    }

    public mn(Set<d> set, com.bytedance.sdk.component.ox.d.dq.kk.ox oxVar) {
        this.f2134d = set;
        this.ox = oxVar;
    }

    public static com.bytedance.sdk.component.ox.dq.iw d(X509Certificate x509Certificate) {
        return com.bytedance.sdk.component.ox.dq.iw.dq(x509Certificate.getPublicKey().getEncoded()).p();
    }

    public static com.bytedance.sdk.component.ox.dq.iw dq(X509Certificate x509Certificate) {
        return com.bytedance.sdk.component.ox.dq.iw.dq(x509Certificate.getPublicKey().getEncoded()).ox();
    }

    public static String dq(Certificate certificate) {
        if (!(certificate instanceof X509Certificate)) {
            throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
        }
        return "sha256/" + d((X509Certificate) certificate).d();
    }

    public mn dq(com.bytedance.sdk.component.ox.d.dq.kk.ox oxVar) {
        return com.bytedance.sdk.component.ox.d.dq.ox.dq(this.ox, oxVar) ? this : new mn(this.f2134d, oxVar);
    }

    public List<d> dq(String str) {
        List<d> list = Collections.EMPTY_LIST;
        for (d dVar : this.f2134d) {
            if (dVar.dq(str)) {
                if (list.isEmpty()) {
                    list = new ArrayList<>();
                }
                list.add(dVar);
            }
        }
        return list;
    }

    public void dq(String str, List<Certificate> list) throws SSLPeerUnverifiedException {
        List<d> dq2 = dq(str);
        if (dq2.isEmpty()) {
            return;
        }
        com.bytedance.sdk.component.ox.d.dq.kk.ox oxVar = this.ox;
        if (oxVar != null) {
            list = oxVar.dq(list, str);
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            X509Certificate x509Certificate = (X509Certificate) list.get(i);
            int size2 = dq2.size();
            com.bytedance.sdk.component.ox.dq.iw iwVar = null;
            com.bytedance.sdk.component.ox.dq.iw iwVar2 = null;
            for (int i2 = 0; i2 < size2; i2++) {
                d dVar = dq2.get(i2);
                if (dVar.ox.equals("sha256/")) {
                    if (iwVar == null) {
                        iwVar = d(x509Certificate);
                    }
                    if (dVar.p.equals(iwVar)) {
                        return;
                    }
                } else {
                    if (!dVar.ox.equals("sha1/")) {
                        throw new AssertionError("unsupported hashAlgorithm: " + dVar.ox);
                    }
                    if (iwVar2 == null) {
                        iwVar2 = dq(x509Certificate);
                    }
                    if (dVar.p.equals(iwVar2)) {
                        return;
                    }
                }
            }
        }
        StringBuilder sb = new StringBuilder("Certificate pinning failure!\n  Peer certificate chain:");
        int size3 = list.size();
        for (int i3 = 0; i3 < size3; i3++) {
            X509Certificate x509Certificate2 = (X509Certificate) list.get(i3);
            sb.append("\n    ");
            sb.append(dq((Certificate) x509Certificate2));
            sb.append(": ");
            sb.append(x509Certificate2.getSubjectDN().getName());
        }
        sb.append("\n  Pinned certificates for ");
        sb.append(str);
        sb.append(":");
        int size4 = dq2.size();
        for (int i4 = 0; i4 < size4; i4++) {
            d dVar2 = dq2.get(i4);
            sb.append("\n    ");
            sb.append(dVar2);
        }
        throw new SSLPeerUnverifiedException(sb.toString());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof mn)) {
            return false;
        }
        mn mnVar = (mn) obj;
        return com.bytedance.sdk.component.ox.d.dq.ox.dq(this.ox, mnVar.ox) && this.f2134d.equals(mnVar.f2134d);
    }

    public int hashCode() {
        com.bytedance.sdk.component.ox.d.dq.kk.ox oxVar = this.ox;
        return this.f2134d.hashCode() + ((oxVar != null ? oxVar.hashCode() : 0) * 31);
    }
}
