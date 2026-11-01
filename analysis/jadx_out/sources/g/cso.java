package g;

import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class cso extends sz {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f13442a;

    /* renamed from: b, reason: collision with root package name */
    public static final dpd f13443b;

    /* renamed from: f, reason: collision with root package name */
    public static final dpd f13444f;

    /* renamed from: g, reason: collision with root package name */
    public static final byte[] f13445g;
    public static final byte[] h;
    public long i;
    public final gei j;
    public final List k;
    public final dpd l;

    static {
        Pattern pattern = dpd.f14576a;
        f13443b = acr.bb("multipart/mixed");
        acr.bb("multipart/alternative");
        acr.bb("multipart/digest");
        acr.bb("multipart/parallel");
        f13444f = acr.bb("multipart/form-data");
        h = new byte[]{58, 32};
        f13442a = new byte[]{13, 10};
        f13445g = new byte[]{45, 45};
    }

    public cso(gei geiVar, dpd dpdVar, List list) {
        bff.p(geiVar, "boundaryByteString");
        bff.p(dpdVar, "type");
        this.j = geiVar;
        this.k = list;
        Pattern pattern = dpd.f14576a;
        this.l = acr.bb(dpdVar + "; boundary=" + geiVar.q());
        this.i = -1L;
    }

    @Override // g.sz
    public final long c() {
        long j = this.i;
        if (j != -1) {
            return j;
        }
        long m = m(null, true);
        this.i = m;
        return m;
    }

    @Override // g.sz
    public final dpd d() {
        return this.l;
    }

    @Override // g.sz
    public final void e(cbs cbsVar) {
        m(cbsVar, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long m(cbs cbsVar, boolean z) {
        clq clqVar;
        cbs cbsVar2;
        if (z) {
            cbsVar2 = new clq();
            clqVar = cbsVar2;
        } else {
            clqVar = 0;
            cbsVar2 = cbsVar;
        }
        List list = this.k;
        int size = list.size();
        long j = 0;
        int i = 0;
        while (true) {
            gei geiVar = this.j;
            byte[] bArr = f13445g;
            byte[] bArr2 = f13442a;
            if (i >= size) {
                bff.d(cbsVar2);
                cbsVar2.write(bArr);
                cbsVar2.g(geiVar);
                cbsVar2.write(bArr);
                cbsVar2.write(bArr2);
                if (!z) {
                    return j;
                }
                bff.d(clqVar);
                long j2 = j + clqVar.f13080b;
                clqVar.aa();
                return j2;
            }
            bmb bmbVar = (bmb) list.get(i);
            dvq dvqVar = bmbVar.f11815a;
            sz szVar = bmbVar.f11816b;
            bff.d(cbsVar2);
            cbsVar2.write(bArr);
            cbsVar2.g(geiVar);
            cbsVar2.write(bArr2);
            int size2 = dvqVar.size();
            for (int i2 = 0; i2 < size2; i2++) {
                cbsVar2.j(dvqVar.e(i2)).write(h).j(dvqVar.b(i2)).write(bArr2);
            }
            dpd d2 = szVar.d();
            if (d2 != null) {
                cbsVar2.j("Content-Type: ").j(d2.f14578c).write(bArr2);
            }
            long c2 = szVar.c();
            if (c2 != -1) {
                cbsVar2.j("Content-Length: ").l(c2).write(bArr2);
            } else if (z) {
                bff.d(clqVar);
                clqVar.aa();
                return -1L;
            }
            cbsVar2.write(bArr2);
            if (z) {
                j += c2;
            } else {
                szVar.e(cbsVar2);
            }
            cbsVar2.write(bArr2);
            i++;
        }
    }
}
