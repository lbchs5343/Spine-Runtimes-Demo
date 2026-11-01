package com.bytedance.sdk.component.ox.d.dq.s;

import com.bytedance.sdk.component.ox.d.bl;
import com.bytedance.sdk.component.ox.d.cd;
import com.bytedance.sdk.component.ox.d.k;
import com.bytedance.sdk.component.ox.d.kx;
import com.bytedance.sdk.component.ox.d.n;
import com.bytedance.sdk.component.ox.d.r;
import com.bytedance.sdk.component.ox.d.wp;
import com.bytedance.sdk.component.ox.dq.gh;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class iw implements com.bytedance.sdk.component.ox.d.dq.ox.ox {

    /* renamed from: d, reason: collision with root package name */
    private static final com.bytedance.sdk.component.ox.dq.iw f2088d;
    private static final com.bytedance.sdk.component.ox.dq.iw ia;
    private static final com.bytedance.sdk.component.ox.dq.iw iw;
    private static final com.bytedance.sdk.component.ox.dq.iw kk;
    private static final com.bytedance.sdk.component.ox.dq.iw mn;
    private static final List<com.bytedance.sdk.component.ox.dq.iw> no;
    private static final List<com.bytedance.sdk.component.ox.dq.iw> o;
    private static final com.bytedance.sdk.component.ox.dq.iw ox;
    private static final com.bytedance.sdk.component.ox.dq.iw p;
    private static final com.bytedance.sdk.component.ox.dq.iw s;
    final com.bytedance.sdk.component.ox.d.dq.d.mn dq;
    private final k ig;
    private kk jy;
    private final r.dq mp;
    private final mn q;

    public class dq extends com.bytedance.sdk.component.ox.dq.ia {

        /* renamed from: d, reason: collision with root package name */
        long f2089d;
        boolean dq;

        public dq(gh ghVar) {
            super(ghVar);
            this.dq = false;
            this.f2089d = 0L;
        }

        private void dq(IOException iOException) {
            if (this.dq) {
                return;
            }
            this.dq = true;
            iw iwVar = iw.this;
            iwVar.dq.dq(false, (com.bytedance.sdk.component.ox.d.dq.ox.ox) iwVar, this.f2089d, iOException);
        }

        @Override // com.bytedance.sdk.component.ox.dq.ia, com.bytedance.sdk.component.ox.dq.gh, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            super.close();
            dq(null);
        }

        @Override // com.bytedance.sdk.component.ox.dq.ia, com.bytedance.sdk.component.ox.dq.gh
        public long dq(com.bytedance.sdk.component.ox.dq.ox oxVar, long j) throws IOException {
            try {
                long dq = d().dq(oxVar, j);
                if (dq <= 0) {
                    return dq;
                }
                this.f2089d += dq;
                return dq;
            } catch (IOException e2) {
                dq(e2);
                throw e2;
            }
        }
    }

    static {
        com.bytedance.sdk.component.ox.dq.iw dq2 = com.bytedance.sdk.component.ox.dq.iw.dq("connection");
        f2088d = dq2;
        com.bytedance.sdk.component.ox.dq.iw dq3 = com.bytedance.sdk.component.ox.dq.iw.dq("host");
        ox = dq3;
        com.bytedance.sdk.component.ox.dq.iw dq4 = com.bytedance.sdk.component.ox.dq.iw.dq("keep-alive");
        p = dq4;
        com.bytedance.sdk.component.ox.dq.iw dq5 = com.bytedance.sdk.component.ox.dq.iw.dq("proxy-connection");
        s = dq5;
        com.bytedance.sdk.component.ox.dq.iw dq6 = com.bytedance.sdk.component.ox.dq.iw.dq("transfer-encoding");
        iw = dq6;
        com.bytedance.sdk.component.ox.dq.iw dq7 = com.bytedance.sdk.component.ox.dq.iw.dq("te");
        mn = dq7;
        com.bytedance.sdk.component.ox.dq.iw dq8 = com.bytedance.sdk.component.ox.dq.iw.dq("encoding");
        ia = dq8;
        com.bytedance.sdk.component.ox.dq.iw dq9 = com.bytedance.sdk.component.ox.dq.iw.dq("upgrade");
        kk = dq9;
        o = com.bytedance.sdk.component.ox.d.dq.ox.dq(dq2, dq3, dq4, dq5, dq7, dq6, dq8, dq9, ox.ox, ox.p, ox.s, ox.iw);
        no = com.bytedance.sdk.component.ox.d.dq.ox.dq(dq2, dq3, dq4, dq5, dq7, dq6, dq8, dq9);
    }

    public iw(k kVar, r.dq dqVar, com.bytedance.sdk.component.ox.d.dq.d.mn mnVar, mn mnVar2) {
        this.ig = kVar;
        this.mp = dqVar;
        this.dq = mnVar;
        this.q = mnVar2;
    }

    public static List<ox> d(kx kxVar) {
        cd ox2 = kxVar.ox();
        ArrayList arrayList = new ArrayList(ox2.dq() + 4);
        arrayList.add(new ox(ox.ox, kxVar.d()));
        arrayList.add(new ox(ox.p, com.bytedance.sdk.component.ox.d.dq.ox.kk.dq(kxVar.dq())));
        String dq2 = kxVar.dq("Host");
        if (dq2 != null) {
            arrayList.add(new ox(ox.iw, dq2));
        }
        arrayList.add(new ox(ox.s, kxVar.dq().ox()));
        int dq3 = ox2.dq();
        for (int i = 0; i < dq3; i++) {
            com.bytedance.sdk.component.ox.dq.iw dq4 = com.bytedance.sdk.component.ox.dq.iw.dq(ox2.dq(i).toLowerCase(Locale.US));
            if (!o.contains(dq4)) {
                arrayList.add(new ox(dq4, ox2.d(i)));
            }
        }
        return arrayList;
    }

    public static bl.dq dq(List<ox> list) throws IOException {
        cd.dq dqVar = new cd.dq();
        int size = list.size();
        com.bytedance.sdk.component.ox.d.dq.ox.no noVar = null;
        for (int i = 0; i < size; i++) {
            ox oxVar = list.get(i);
            if (oxVar != null) {
                com.bytedance.sdk.component.ox.dq.iw iwVar = oxVar.mn;
                String dq2 = oxVar.ia.dq();
                if (iwVar.equals(ox.f2100d)) {
                    noVar = com.bytedance.sdk.component.ox.d.dq.ox.no.dq("HTTP/1.1 ".concat(String.valueOf(dq2)));
                } else if (!no.contains(iwVar)) {
                    com.bytedance.sdk.component.ox.d.dq.dq.dq.dq(dqVar, iwVar.dq(), dq2);
                }
            } else if (noVar != null && noVar.f2077d == 100) {
                dqVar = new cd.dq();
                noVar = null;
            }
        }
        if (noVar != null) {
            return new bl.dq().dq(wp.HTTP_2).dq(noVar.f2077d).dq(noVar.ox).dq(dqVar.dq());
        }
        throw new ProtocolException("Expected ':status' header not present");
    }

    @Override // com.bytedance.sdk.component.ox.d.dq.ox.ox
    public void d() throws IOException {
        this.jy.ia().close();
    }

    @Override // com.bytedance.sdk.component.ox.d.dq.ox.ox
    public bl.dq dq(boolean z) throws IOException {
        bl.dq dq2 = dq(this.jy.p());
        if (z && com.bytedance.sdk.component.ox.d.dq.dq.dq.dq(dq2) == 100) {
            return null;
        }
        return dq2;
    }

    @Override // com.bytedance.sdk.component.ox.d.dq.ox.ox
    public n dq(bl blVar) throws IOException {
        return new com.bytedance.sdk.component.ox.d.dq.ox.ia(blVar.dq("Content-Type"), com.bytedance.sdk.component.ox.d.dq.ox.s.dq(blVar), com.bytedance.sdk.component.ox.dq.ig.dq(new dq(this.jy.mn())));
    }

    @Override // com.bytedance.sdk.component.ox.d.dq.ox.ox
    public com.bytedance.sdk.component.ox.dq.cd dq(kx kxVar, long j) {
        return this.jy.ia();
    }

    @Override // com.bytedance.sdk.component.ox.d.dq.ox.ox
    public void dq() throws IOException {
        this.q.d();
    }

    @Override // com.bytedance.sdk.component.ox.d.dq.ox.ox
    public void dq(kx kxVar) throws IOException {
        if (this.jy != null) {
            return;
        }
        kk dq2 = this.q.dq(d(kxVar), kxVar.p() != null);
        this.jy = dq2;
        com.bytedance.sdk.component.ox.dq.r s2 = dq2.s();
        long ox2 = this.mp.ox();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        s2.dq(ox2, timeUnit);
        this.jy.iw().dq(this.mp.p(), timeUnit);
    }

    @Override // com.bytedance.sdk.component.ox.d.dq.ox.ox
    public void ox() {
        kk kkVar = this.jy;
        if (kkVar != null) {
            kkVar.d(d.CANCEL);
        }
    }
}
