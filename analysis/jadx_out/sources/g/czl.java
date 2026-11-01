package g;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class czl {

    /* renamed from: a, reason: collision with root package name */
    public final esn f13809a;

    /* renamed from: b, reason: collision with root package name */
    public final gdk f13810b;

    /* renamed from: c, reason: collision with root package name */
    public final bos f13811c;

    /* renamed from: d, reason: collision with root package name */
    public final List f13812d;

    public czl(gdk gdkVar, bos bosVar, List list, cvw cvwVar) {
        bff.p(gdkVar, "tlsVersion");
        this.f13810b = gdkVar;
        this.f13811c = bosVar;
        this.f13812d = list;
        this.f13809a = new esn(new guc(cvwVar));
    }

    public final List e() {
        return (List) this.f13809a.a();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof czl)) {
            return false;
        }
        czl czlVar = (czl) obj;
        return czlVar.f13810b == this.f13810b && bff.n(czlVar.f13811c, this.f13811c) && bff.n(czlVar.e(), e()) && bff.n(czlVar.f13812d, this.f13812d);
    }

    public final int hashCode() {
        return this.f13812d.hashCode() + ((e().hashCode() + ((this.f13811c.hashCode() + ((this.f13810b.hashCode() + 527) * 31)) * 31)) * 31);
    }

    public final String toString() {
        String type;
        String type2;
        List<Certificate> e2 = e();
        ArrayList arrayList = new ArrayList(bkk.a(e2));
        for (Certificate certificate : e2) {
            if (certificate instanceof X509Certificate) {
                type2 = ((X509Certificate) certificate).getSubjectDN().toString();
            } else {
                type2 = certificate.getType();
                bff.e(type2, "type");
            }
            arrayList.add(type2);
        }
        String obj = arrayList.toString();
        StringBuilder sb = new StringBuilder("Handshake{tlsVersion=");
        sb.append(this.f13810b);
        sb.append(" cipherSuite=");
        sb.append(this.f13811c);
        sb.append(" peerCertificates=");
        sb.append(obj);
        sb.append(" localCertificates=");
        List<Certificate> list = this.f13812d;
        ArrayList arrayList2 = new ArrayList(bkk.a(list));
        for (Certificate certificate2 : list) {
            if (certificate2 instanceof X509Certificate) {
                type = ((X509Certificate) certificate2).getSubjectDN().toString();
            } else {
                type = certificate2.getType();
                bff.e(type, "type");
            }
            arrayList2.add(type);
        }
        sb.append(arrayList2);
        sb.append('}');
        return sb.toString();
    }
}
