package g;

import java.net.UnknownServiceException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;

/* loaded from: classes3.dex */
public final class dvb {

    /* renamed from: a, reason: collision with root package name */
    public final Object f14879a;

    /* renamed from: b, reason: collision with root package name */
    public int f14880b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f14881c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f14882d;

    public dvb(bgm bgmVar, int i, boolean z, boolean z2) {
        this.f14879a = bgmVar;
        this.f14880b = i;
        this.f14881c = z;
        this.f14882d = z2;
    }

    public dvb(List list) {
        bff.p(list, "connectionSpecs");
        this.f14879a = list;
    }

    public void e(Object obj, String str, Object obj2) {
        ((bgm) this.f14879a).u(this.f14880b, this.f14881c, this.f14882d, str, obj, obj2, null);
    }

    public void f(String str, Object obj, Object obj2, Object obj3) {
        ((bgm) this.f14879a).u(this.f14880b, this.f14881c, this.f14882d, str, obj, obj2, obj3);
    }

    public ezm g(SSLSocket sSLSocket) {
        ezm ezmVar;
        boolean z;
        boolean z2;
        String[] enabledCipherSuites;
        String[] enabledProtocols;
        int i = this.f14880b;
        List list = (List) this.f14879a;
        int size = list.size();
        while (true) {
            if (i >= size) {
                ezmVar = null;
                break;
            }
            ezmVar = (ezm) list.get(i);
            if (ezmVar.h(sSLSocket)) {
                this.f14880b = i + 1;
                break;
            }
            i++;
        }
        if (ezmVar == null) {
            StringBuilder sb = new StringBuilder("Unable to find acceptable protocols. isFallback=");
            sb.append(this.f14882d);
            sb.append(", modes=");
            sb.append(list);
            sb.append(", supported protocols=");
            String[] enabledProtocols2 = sSLSocket.getEnabledProtocols();
            bff.d(enabledProtocols2);
            String arrays = Arrays.toString(enabledProtocols2);
            bff.e(arrays, "toString(this)");
            sb.append(arrays);
            throw new UnknownServiceException(sb.toString());
        }
        int i2 = this.f14880b;
        int size2 = list.size();
        while (true) {
            z = false;
            if (i2 >= size2) {
                z2 = false;
                break;
            }
            if (((ezm) list.get(i2)).h(sSLSocket)) {
                z2 = true;
                break;
            }
            i2++;
        }
        this.f14881c = z2;
        boolean z3 = this.f14882d;
        String[] strArr = ezmVar.f16417c;
        String[] strArr2 = ezmVar.f16420f;
        if (strArr2 != null) {
            String[] enabledCipherSuites2 = sSLSocket.getEnabledCipherSuites();
            bff.e(enabledCipherSuites2, "sslSocket.enabledCipherSuites");
            enabledCipherSuites = erq.j(bos.q, enabledCipherSuites2, strArr2);
        } else {
            enabledCipherSuites = sSLSocket.getEnabledCipherSuites();
        }
        if (strArr != null) {
            String[] enabledProtocols3 = sSLSocket.getEnabledProtocols();
            bff.e(enabledProtocols3, "sslSocket.enabledProtocols");
            enabledProtocols = erq.j(ejo.f15671b, enabledProtocols3, strArr);
        } else {
            enabledProtocols = sSLSocket.getEnabledProtocols();
        }
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        bff.e(supportedCipherSuites, "supportedCipherSuites");
        aqn aqnVar = bos.q;
        byte[] bArr = erq.f16043c;
        int length = supportedCipherSuites.length;
        int i3 = 0;
        while (true) {
            if (i3 >= length) {
                i3 = -1;
                break;
            }
            if (aqnVar.compare(supportedCipherSuites[i3], "TLS_FALLBACK_SCSV") == 0) {
                break;
            }
            i3++;
        }
        if (z3 && i3 != -1) {
            bff.e(enabledCipherSuites, "cipherSuitesIntersection");
            String str = supportedCipherSuites[i3];
            bff.e(str, "supportedCipherSuites[indexOfFallbackScsv]");
            Object[] copyOf = Arrays.copyOf(enabledCipherSuites, enabledCipherSuites.length + 1);
            bff.e(copyOf, "copyOf(this, newSize)");
            enabledCipherSuites = (String[]) copyOf;
            enabledCipherSuites[enabledCipherSuites.length - 1] = str;
        }
        cxc cxcVar = new cxc(z);
        cxcVar.f13674d = ezmVar.f16418d;
        cxcVar.f13671a = strArr2;
        cxcVar.f13672b = strArr;
        cxcVar.f13675e = ezmVar.f16419e;
        bff.e(enabledCipherSuites, "cipherSuitesIntersection");
        cxcVar.k((String[]) Arrays.copyOf(enabledCipherSuites, enabledCipherSuites.length));
        bff.e(enabledProtocols, "tlsVersionsIntersection");
        cxcVar.i((String[]) Arrays.copyOf(enabledProtocols, enabledProtocols.length));
        ezm j = cxcVar.j();
        if (j.i() != null) {
            sSLSocket.setEnabledProtocols(j.f16417c);
        }
        if (j.g() != null) {
            sSLSocket.setEnabledCipherSuites(j.f16420f);
        }
        return ezmVar;
    }

    public void h(String str) {
        ((bgm) this.f14879a).u(this.f14880b, this.f14881c, this.f14882d, str, null, null, null);
    }

    public void i(Object obj, String str) {
        ((bgm) this.f14879a).u(this.f14880b, this.f14881c, this.f14882d, str, obj, null, null);
    }
}
