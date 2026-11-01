package g;

import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;

/* loaded from: classes3.dex */
public final class ezm {

    /* renamed from: a, reason: collision with root package name */
    public static final ezm f16415a;

    /* renamed from: b, reason: collision with root package name */
    public static final ezm f16416b;

    /* renamed from: c, reason: collision with root package name */
    public final String[] f16417c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f16418d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f16419e;

    /* renamed from: f, reason: collision with root package name */
    public final String[] f16420f;

    static {
        bos bosVar = bos.s;
        bos bosVar2 = bos.i;
        bos bosVar3 = bos.p;
        bos bosVar4 = bos.f11928f;
        bos bosVar5 = bos.f11926d;
        bos bosVar6 = bos.k;
        bos bosVar7 = bos.f11925c;
        bos bosVar8 = bos.o;
        bos bosVar9 = bos.j;
        bos[] bosVarArr = {bosVar, bosVar2, bosVar3, bosVar4, bosVar5, bosVar6, bosVar7, bosVar8, bosVar9};
        bos[] bosVarArr2 = {bosVar, bosVar2, bosVar3, bosVar4, bosVar5, bosVar6, bosVar7, bosVar8, bosVar9, bos.n, bos.f11924b, bos.f11923a, bos.l, bos.h, bos.r, bos.f11929g};
        cxc cxcVar = new cxc(1);
        cxcVar.f((bos[]) Arrays.copyOf(bosVarArr, 9));
        gdk gdkVar = gdk.TLS_1_3;
        gdk gdkVar2 = gdk.TLS_1_2;
        cxcVar.l(gdkVar, gdkVar2);
        if (!cxcVar.f13674d) {
            throw new IllegalArgumentException("no TLS extensions for cleartext connections");
        }
        cxcVar.f13675e = true;
        cxcVar.j();
        cxc cxcVar2 = new cxc(1);
        cxcVar2.f((bos[]) Arrays.copyOf(bosVarArr2, 16));
        cxcVar2.l(gdkVar, gdkVar2);
        if (!cxcVar2.f13674d) {
            throw new IllegalArgumentException("no TLS extensions for cleartext connections");
        }
        cxcVar2.f13675e = true;
        f16415a = cxcVar2.j();
        cxc cxcVar3 = new cxc(1);
        cxcVar3.f((bos[]) Arrays.copyOf(bosVarArr2, 16));
        cxcVar3.l(gdkVar, gdkVar2, gdk.TLS_1_1, gdk.TLS_1_0);
        if (!cxcVar3.f13674d) {
            throw new IllegalArgumentException("no TLS extensions for cleartext connections");
        }
        cxcVar3.f13675e = true;
        cxcVar3.j();
        f16416b = new ezm(false, false, null, null);
    }

    public ezm(boolean z, boolean z2, String[] strArr, String[] strArr2) {
        this.f16418d = z;
        this.f16419e = z2;
        this.f16420f = strArr;
        this.f16417c = strArr2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ezm)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        ezm ezmVar = (ezm) obj;
        boolean z = ezmVar.f16418d;
        boolean z2 = this.f16418d;
        if (z2 != z) {
            return false;
        }
        if (z2) {
            return Arrays.equals(this.f16420f, ezmVar.f16420f) && Arrays.equals(this.f16417c, ezmVar.f16417c) && this.f16419e == ezmVar.f16419e;
        }
        return true;
    }

    public final List g() {
        String[] strArr = this.f16420f;
        if (strArr == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(bos.m.al(str));
        }
        return gsv.bf(arrayList);
    }

    public final boolean h(SSLSocket sSLSocket) {
        if (!this.f16418d) {
            return false;
        }
        String[] strArr = this.f16417c;
        if (strArr != null) {
            if (!erq.x(ejo.f15671b, strArr, sSLSocket.getEnabledProtocols())) {
                return false;
            }
        }
        String[] strArr2 = this.f16420f;
        if (strArr2 != null) {
            return erq.x(bos.q, strArr2, sSLSocket.getEnabledCipherSuites());
        }
        return true;
    }

    public final int hashCode() {
        if (!this.f16418d) {
            return 17;
        }
        String[] strArr = this.f16420f;
        int hashCode = (527 + (strArr != null ? Arrays.hashCode(strArr) : 0)) * 31;
        String[] strArr2 = this.f16417c;
        return ((hashCode + (strArr2 != null ? Arrays.hashCode(strArr2) : 0)) * 31) + (!this.f16419e ? 1 : 0);
    }

    public final List i() {
        String[] strArr = this.f16417c;
        if (strArr == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            gdk.Companion.getClass();
            arrayList.add(bap.a(str));
        }
        return gsv.bf(arrayList);
    }

    public final String toString() {
        if (!this.f16418d) {
            return "ConnectionSpec()";
        }
        return "ConnectionSpec(cipherSuites=" + Objects.toString(g(), "[all enabled]") + ", tlsVersions=" + Objects.toString(i(), "[all enabled]") + ", supportsTlsExtensions=" + this.f16419e + ')';
    }
}
