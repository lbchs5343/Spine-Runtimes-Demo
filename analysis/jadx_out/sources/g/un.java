package g;

import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes3.dex */
public final class un {

    /* renamed from: a, reason: collision with root package name */
    public static final String f20102a;

    /* renamed from: b, reason: collision with root package name */
    public static final String f20103b;

    /* renamed from: c, reason: collision with root package name */
    public final czl f20104c;

    /* renamed from: d, reason: collision with root package name */
    public final aqt f20105d;

    /* renamed from: e, reason: collision with root package name */
    public final int f20106e;

    /* renamed from: f, reason: collision with root package name */
    public final eyn f20107f;

    /* renamed from: g, reason: collision with root package name */
    public final String f20108g;
    public final long h;
    public final dvq i;
    public final long j;
    public final String k;
    public final dvq l;

    static {
        bop bopVar = bop.h;
        bop.h.getClass();
        f20102a = "OkHttp-Sent-Millis";
        bop.h.getClass();
        f20103b = "OkHttp-Received-Millis";
    }

    public un(cpv cpvVar) {
        eyn eynVar;
        gdk gdkVar;
        bff.p(cpvVar, "rawSource");
        try {
            deb ai = baf.ai(cpvVar);
            String s = ai.s(Long.MAX_VALUE);
            try {
                ke keVar = new ke(1);
                keVar.m(null, s);
                eynVar = keVar.n();
            } catch (IllegalArgumentException unused) {
                eynVar = null;
            }
            if (eynVar == null) {
                IOException iOException = new IOException("Cache corruption for ".concat(s));
                bop bopVar = bop.h;
                bop.h.getClass();
                bop.j(5, "cache corruption", iOException);
                throw iOException;
            }
            this.f20107f = eynVar;
            this.k = ai.s(Long.MAX_VALUE);
            ais aisVar = new ais(0);
            int ad = buj.ad(ai);
            for (int i = 0; i < ad; i++) {
                aisVar.g(ai.s(Long.MAX_VALUE));
            }
            this.i = aisVar.d();
            dsg x = awt.x(ai.s(Long.MAX_VALUE));
            this.f20105d = (aqt) x.f14704a;
            this.f20106e = x.f14707d;
            this.f20108g = (String) x.f14705b;
            ais aisVar2 = new ais(0);
            int ad2 = buj.ad(ai);
            for (int i2 = 0; i2 < ad2; i2++) {
                aisVar2.g(ai.s(Long.MAX_VALUE));
            }
            String str = f20102a;
            String i3 = aisVar2.i(str);
            String str2 = f20103b;
            String i4 = aisVar2.i(str2);
            aisVar2.b(str);
            aisVar2.b(str2);
            this.h = i3 != null ? Long.parseLong(i3) : 0L;
            this.j = i4 != null ? Long.parseLong(i4) : 0L;
            this.l = aisVar2.d();
            if (bff.n(this.f20107f.f16375e, "https")) {
                String s2 = ai.s(Long.MAX_VALUE);
                if (s2.length() > 0) {
                    throw new IOException("expected \"\" but was \"" + s2 + '\"');
                }
                bos al = bos.m.al(ai.s(Long.MAX_VALUE));
                List m = m(ai);
                List m2 = m(ai);
                if (ai.i()) {
                    gdkVar = gdk.SSL_3_0;
                } else {
                    bap bapVar = gdk.Companion;
                    String s3 = ai.s(Long.MAX_VALUE);
                    bapVar.getClass();
                    gdkVar = bap.a(s3);
                }
                bff.p(gdkVar, "tlsVersion");
                this.f20104c = new czl(gdkVar, al, erq.s(m2), new acz(erq.s(m)));
            } else {
                this.f20104c = null;
            }
            cpvVar.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                ckd.n(cpvVar, th);
                throw th2;
            }
        }
    }

    public un(enb enbVar) {
        dvq dvqVar;
        daw dawVar = enbVar.i;
        this.f20107f = (eyn) dawVar.f13886e;
        enb enbVar2 = enbVar.f15834a;
        bff.d(enbVar2);
        dvq dvqVar2 = (dvq) enbVar2.i.f13882a;
        dvq dvqVar3 = enbVar.n;
        Set o = buj.o(dvqVar3);
        if (o.isEmpty()) {
            dvqVar = erq.f16045e;
        } else {
            ArrayList arrayList = new ArrayList(20);
            int size = dvqVar2.size();
            for (int i = 0; i < size; i++) {
                String e2 = dvqVar2.e(i);
                if (o.contains(e2)) {
                    String b2 = dvqVar2.b(i);
                    bff.p(e2, abn.EXTRA_UA_APP_NAME);
                    bff.p(b2, "value");
                    dyd.bn(e2);
                    dyd.al(b2, e2);
                    arrayList.add(e2);
                    arrayList.add(dcv.bk(b2).toString());
                }
            }
            dvqVar = new dvq((String[]) arrayList.toArray(new String[0]));
        }
        this.i = dvqVar;
        this.k = (String) dawVar.f13887f;
        this.f20105d = enbVar.k;
        this.f20106e = enbVar.f15840g;
        this.f20108g = enbVar.f15837d;
        this.l = dvqVar3;
        this.f20104c = enbVar.h;
        this.h = enbVar.f15839f;
        this.j = enbVar.f15838e;
    }

    public static List m(deb debVar) {
        int ad = buj.ad(debVar);
        if (ad == -1) {
            return fai.f16469a;
        }
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            ArrayList arrayList = new ArrayList(ad);
            for (int i = 0; i < ad; i++) {
                String s = debVar.s(Long.MAX_VALUE);
                clq clqVar = new clq();
                gei geiVar = gei.n;
                gei ad2 = dwm.ad(s);
                if (ad2 == null) {
                    throw new IOException("Corrupt certificate in cache entry");
                }
                clqVar.o(ad2);
                arrayList.add(certificateFactory.generateCertificate(new wd(clqVar, 0)));
            }
            return arrayList;
        } catch (CertificateException e2) {
            throw new IOException(e2.getMessage());
        }
    }

    public static void n(ago agoVar, List list) {
        try {
            agoVar.l(list.size());
            agoVar.writeByte(10);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                byte[] encoded = ((Certificate) it.next()).getEncoded();
                gei geiVar = gei.n;
                bff.e(encoded, "bytes");
                agoVar.j(dwm.ae(encoded).g());
                agoVar.writeByte(10);
            }
        } catch (CertificateEncodingException e2) {
            throw new IOException(e2.getMessage());
        }
    }

    public final void o(abv abvVar) {
        eyn eynVar = this.f20107f;
        czl czlVar = this.f20104c;
        dvq dvqVar = this.l;
        dvq dvqVar2 = this.i;
        ago w = baf.w(abvVar.e(0));
        try {
            w.j(eynVar.f16377g);
            w.writeByte(10);
            w.j(this.k);
            w.writeByte(10);
            w.l(dvqVar2.size());
            w.writeByte(10);
            int size = dvqVar2.size();
            for (int i = 0; i < size; i++) {
                w.j(dvqVar2.e(i));
                w.j(": ");
                w.j(dvqVar2.b(i));
                w.writeByte(10);
            }
            aqt aqtVar = this.f20105d;
            int i2 = this.f20106e;
            String str = this.f20108g;
            bff.p(aqtVar, "protocol");
            bff.p(str, "message");
            StringBuilder sb = new StringBuilder();
            if (aqtVar == aqt.HTTP_1_0) {
                sb.append("HTTP/1.0");
            } else {
                sb.append("HTTP/1.1");
            }
            sb.append(' ');
            sb.append(i2);
            sb.append(' ');
            sb.append(str);
            String sb2 = sb.toString();
            bff.e(sb2, "StringBuilder().apply(builderAction).toString()");
            w.j(sb2);
            w.writeByte(10);
            w.l(dvqVar.size() + 2);
            w.writeByte(10);
            int size2 = dvqVar.size();
            for (int i3 = 0; i3 < size2; i3++) {
                w.j(dvqVar.e(i3));
                w.j(": ");
                w.j(dvqVar.b(i3));
                w.writeByte(10);
            }
            w.j(f20102a);
            w.j(": ");
            w.l(this.h);
            w.writeByte(10);
            w.j(f20103b);
            w.j(": ");
            w.l(this.j);
            w.writeByte(10);
            if (bff.n(eynVar.f16375e, "https")) {
                w.writeByte(10);
                bff.d(czlVar);
                w.j(czlVar.f13811c.t);
                w.writeByte(10);
                n(w, czlVar.e());
                n(w, czlVar.f13812d);
                w.j(czlVar.f13810b.b());
                w.writeByte(10);
            }
            w.close();
        } finally {
        }
    }
}
