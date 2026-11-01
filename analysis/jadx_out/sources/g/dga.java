package g;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class dga implements axn {
    public volatile btb k;
    public final aqt l;
    public final gba m;
    public volatile boolean n;
    public final dpe o;
    public final ug p;
    public static final List j = erq.i("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade", ":method", ":path", ":scheme", ":authority");
    public static final List i = erq.i("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade");

    public dga(fys fysVar, gba gbaVar, dpe dpeVar, ug ugVar) {
        bff.p(ugVar, "http2Connection");
        this.m = gbaVar;
        this.o = dpeVar;
        this.p = ugVar;
        List list = fysVar.o;
        aqt aqtVar = aqt.H2_PRIOR_KNOWLEDGE;
        this.l = list.contains(aqtVar) ? aqtVar : aqt.HTTP_2;
    }

    @Override // g.axn
    public final cpv a(enb enbVar) {
        btb btbVar = this.k;
        bff.d(btbVar);
        return btbVar.j;
    }

    @Override // g.axn
    public final gba b() {
        return this.m;
    }

    @Override // g.axn
    public final void c() {
        this.p.flush();
    }

    @Override // g.axn
    public final void cancel() {
        this.n = true;
        btb btbVar = this.k;
        if (btbVar != null) {
            btbVar.r(amc.CANCEL);
        }
    }

    @Override // g.axn
    public final void d() {
        btb btbVar = this.k;
        bff.d(btbVar);
        btbVar.y().close();
    }

    @Override // g.axn
    public final void e(daw dawVar) {
        int i2;
        btb btbVar;
        boolean z;
        if (this.k != null) {
            return;
        }
        boolean z2 = ((sz) dawVar.f13883b) != null;
        dvq dvqVar = (dvq) dawVar.f13882a;
        ArrayList arrayList = new ArrayList(dvqVar.size() + 4);
        arrayList.add(new heb(heb.f19328d, (String) dawVar.f13887f));
        gei geiVar = heb.f19330f;
        eyn eynVar = (eyn) dawVar.f13886e;
        bff.p(eynVar, abn.EXTRA_URL);
        String q = eynVar.q();
        String m = eynVar.m();
        if (m != null) {
            q = q + '?' + m;
        }
        arrayList.add(new heb(geiVar, q));
        String c2 = ((dvq) dawVar.f13882a).c("Host");
        if (c2 != null) {
            arrayList.add(new heb(heb.f19329e, c2));
        }
        arrayList.add(new heb(heb.f19325a, eynVar.f16375e));
        int size = dvqVar.size();
        for (int i3 = 0; i3 < size; i3++) {
            String e2 = dvqVar.e(i3);
            Locale locale = Locale.US;
            bff.e(locale, "US");
            String lowerCase = e2.toLowerCase(locale);
            bff.e(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            if (!j.contains(lowerCase) || (lowerCase.equals("te") && bff.n(dvqVar.b(i3), "trailers"))) {
                arrayList.add(new heb(lowerCase, dvqVar.b(i3)));
            }
        }
        ug ugVar = this.p;
        ugVar.getClass();
        boolean z3 = !z2;
        synchronized (ugVar.w) {
            synchronized (ugVar) {
                try {
                    if (ugVar.p > 1073741823) {
                        ugVar.aj(amc.REFUSED_STREAM);
                    }
                    if (ugVar.z) {
                        throw new fhb();
                    }
                    i2 = ugVar.p;
                    ugVar.p = i2 + 2;
                    btbVar = new btb(i2, ugVar, z3, false, null);
                    z = !z2 || ugVar.f20091d >= ugVar.m || btbVar.f12172f >= btbVar.h;
                    if (btbVar.u()) {
                        ugVar.u.put(Integer.valueOf(i2), btbVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            ugVar.w.j(z3, i2, arrayList);
        }
        if (z) {
            ugVar.w.flush();
        }
        this.k = btbVar;
        if (this.n) {
            btb btbVar2 = this.k;
            bff.d(btbVar2);
            btbVar2.r(amc.CANCEL);
            throw new IOException("Canceled");
        }
        btb btbVar3 = this.k;
        bff.d(btbVar3);
        vz vzVar = btbVar3.f12168b;
        long j2 = this.o.i;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        vzVar._av(j2);
        btb btbVar4 = this.k;
        bff.d(btbVar4);
        btbVar4.f12171e._av(this.o.f14581a);
    }

    @Override // g.axn
    public final long f(enb enbVar) {
        if (fyd.a(enbVar)) {
            return erq.z(enbVar);
        }
        return 0L;
    }

    @Override // g.axn
    public final hdt g(boolean z) {
        dvq dvqVar;
        btb btbVar = this.k;
        if (btbVar == null) {
            throw new IOException("stream wasn't created");
        }
        synchronized (btbVar) {
            btbVar.f12168b.l();
            while (btbVar.n.isEmpty() && btbVar.i == null) {
                try {
                    try {
                        btbVar.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        throw new InterruptedIOException();
                    }
                } catch (Throwable th) {
                    btbVar.f12168b.b();
                    throw th;
                }
            }
            btbVar.f12168b.b();
            if (btbVar.n.isEmpty()) {
                IOException iOException = btbVar.f12169c;
                if (iOException != null) {
                    throw iOException;
                }
                amc amcVar = btbVar.i;
                bff.d(amcVar);
                throw new gts(amcVar);
            }
            Object removeFirst = btbVar.n.removeFirst();
            bff.e(removeFirst, "headersQueue.removeFirst()");
            dvqVar = (dvq) removeFirst;
        }
        aqt aqtVar = this.l;
        bff.p(aqtVar, "protocol");
        ArrayList arrayList = new ArrayList(20);
        int size = dvqVar.size();
        dsg dsgVar = null;
        for (int i2 = 0; i2 < size; i2++) {
            String e2 = dvqVar.e(i2);
            String b2 = dvqVar.b(i2);
            if (bff.n(e2, ":status")) {
                dsgVar = awt.x("HTTP/1.1 " + b2);
            } else if (!i.contains(e2)) {
                bff.p(e2, abn.EXTRA_UA_APP_NAME);
                bff.p(b2, "value");
                arrayList.add(e2);
                arrayList.add(dcv.bk(b2).toString());
            }
        }
        if (dsgVar == null) {
            throw new ProtocolException("Expected ':status' header not present");
        }
        hdt hdtVar = new hdt();
        hdtVar.j = aqtVar;
        hdtVar.l = dsgVar.f14707d;
        hdtVar.f19295c = (String) dsgVar.f14705b;
        hdtVar.p(new dvq((String[]) arrayList.toArray(new String[0])));
        if (z && hdtVar.l == 100) {
            return null;
        }
        return hdtVar;
    }

    @Override // g.axn
    public final evq h(daw dawVar, long j2) {
        btb btbVar = this.k;
        bff.d(btbVar);
        return btbVar.y();
    }
}
