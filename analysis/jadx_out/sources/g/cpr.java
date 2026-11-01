package g;

import java.io.IOException;
import java.net.Socket;
import java.util.ArrayList;
import java.util.NoSuchElementException;
import java.util.concurrent.ConcurrentLinkedQueue;

/* loaded from: classes3.dex */
public final class cpr {

    /* renamed from: a, reason: collision with root package name */
    public int f13288a;

    /* renamed from: b, reason: collision with root package name */
    public gqc f13289b;

    /* renamed from: c, reason: collision with root package name */
    public efg f13290c;

    /* renamed from: d, reason: collision with root package name */
    public final dhh f13291d;

    /* renamed from: e, reason: collision with root package name */
    public int f13292e;

    /* renamed from: f, reason: collision with root package name */
    public ego f13293f;

    /* renamed from: g, reason: collision with root package name */
    public final cbm f13294g;
    public final ib h;
    public int i;

    public cpr(dhh dhhVar, cbm cbmVar, ib ibVar) {
        bff.p(dhhVar, "connectionPool");
        this.f13291d = dhhVar;
        this.f13294g = cbmVar;
        this.h = ibVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0151 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0128  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final gba j(int i, int i2, int i3, boolean z, boolean z2) {
        ArrayList arrayList;
        boolean z3;
        Socket u;
        while (!this.h.n) {
            gba gbaVar = this.h.f19405a;
            if (gbaVar != null) {
                synchronized (gbaVar) {
                    try {
                        if (!gbaVar.p && k(gbaVar.o.f15500a.f12590a)) {
                            u = null;
                        }
                        u = this.h.u();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (this.h.f19405a != null) {
                    if (u != null) {
                        throw new IllegalStateException("Check failed.");
                    }
                    z3 = z2;
                    if (gbaVar.ab(z3)) {
                        return gbaVar;
                    }
                    gbaVar.w();
                    if (this.f13293f == null) {
                        gqc gqcVar = this.f13289b;
                        if (gqcVar != null ? gqcVar.au() : true) {
                            continue;
                        } else {
                            efg efgVar = this.f13290c;
                            if (!(efgVar != null ? efgVar.g() : true)) {
                                throw new IOException("exhausted all routes");
                            }
                        }
                    }
                } else if (u != null) {
                    erq.o(u);
                }
            }
            this.f13292e = 0;
            this.i = 0;
            this.f13288a = 0;
            if (this.f13291d.h(this.f13294g, this.h, null, false)) {
                gbaVar = this.h.f19405a;
                bff.d(gbaVar);
            } else {
                ego egoVar = this.f13293f;
                try {
                    if (egoVar != null) {
                        this.f13293f = null;
                    } else {
                        gqc gqcVar2 = this.f13289b;
                        if (gqcVar2 == null || !gqcVar2.au()) {
                            efg efgVar2 = this.f13290c;
                            if (efgVar2 == null) {
                                cbm cbmVar = this.f13294g;
                                ib ibVar = this.h;
                                efgVar2 = new efg(cbmVar, ibVar.j.t, ibVar);
                                this.f13290c = efgVar2;
                            }
                            gqc h = efgVar2.h();
                            this.f13289b = h;
                            arrayList = (ArrayList) h.z;
                            if (this.h.n) {
                                throw new IOException("Canceled");
                            }
                            if (this.f13291d.h(this.f13294g, this.h, arrayList, false)) {
                                gbaVar = this.h.f19405a;
                                bff.d(gbaVar);
                            } else {
                                if (!h.au()) {
                                    throw new NoSuchElementException();
                                }
                                ArrayList arrayList2 = (ArrayList) h.z;
                                int i4 = h.f18566ab;
                                h.f18566ab = i4 + 1;
                                egoVar = (ego) arrayList2.get(i4);
                                gba gbaVar2 = new gba(this.f13291d, egoVar);
                                this.h.f19407c = gbaVar2;
                                gbaVar2.ac(i, i2, i3, z, this.h);
                                this.h.f19407c = null;
                                this.h.j.t.y(egoVar);
                                if (this.f13291d.h(this.f13294g, this.h, arrayList, true)) {
                                    synchronized (gbaVar2) {
                                        dhh dhhVar = this.f13291d;
                                        dhhVar.getClass();
                                        byte[] bArr = erq.f16043c;
                                        ((ConcurrentLinkedQueue) dhhVar.f14174b).add(gbaVar2);
                                        ((gfw) dhhVar.f14177e).l((lm) dhhVar.f14173a, 0L);
                                        this.h.s(gbaVar2);
                                    }
                                    z3 = z2;
                                    gbaVar = gbaVar2;
                                    if (gbaVar.ab(z3)) {
                                    }
                                } else {
                                    gbaVar = this.h.f19405a;
                                    bff.d(gbaVar);
                                    this.f13293f = egoVar;
                                    Socket socket = gbaVar2.h;
                                    bff.d(socket);
                                    erq.o(socket);
                                }
                            }
                        } else {
                            gqc gqcVar3 = this.f13289b;
                            bff.d(gqcVar3);
                            if (!gqcVar3.au()) {
                                throw new NoSuchElementException();
                            }
                            ArrayList arrayList3 = (ArrayList) gqcVar3.z;
                            int i5 = gqcVar3.f18566ab;
                            gqcVar3.f18566ab = i5 + 1;
                            egoVar = (ego) arrayList3.get(i5);
                        }
                    }
                    gbaVar2.ac(i, i2, i3, z, this.h);
                    this.h.f19407c = null;
                    this.h.j.t.y(egoVar);
                    if (this.f13291d.h(this.f13294g, this.h, arrayList, true)) {
                    }
                } catch (Throwable th2) {
                    this.h.f19407c = null;
                    throw th2;
                }
                arrayList = null;
                gba gbaVar22 = new gba(this.f13291d, egoVar);
                this.h.f19407c = gbaVar22;
            }
            z3 = z2;
            if (gbaVar.ab(z3)) {
            }
        }
        throw new IOException("Canceled");
    }

    public final boolean k(eyn eynVar) {
        bff.p(eynVar, abn.EXTRA_URL);
        eyn eynVar2 = this.f13294g.f12590a;
        return eynVar.f16374d == eynVar2.f16374d && bff.n(eynVar.f16373c, eynVar2.f16373c);
    }

    public final void l(IOException iOException) {
        bff.p(iOException, "e");
        this.f13293f = null;
        if ((iOException instanceof gts) && ((gts) iOException).errorCode == amc.REFUSED_STREAM) {
            this.f13292e++;
        } else if (iOException instanceof fhb) {
            this.i++;
        } else {
            this.f13288a++;
        }
    }
}
