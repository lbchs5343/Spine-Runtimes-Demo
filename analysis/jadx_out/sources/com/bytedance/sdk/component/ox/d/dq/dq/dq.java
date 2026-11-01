package com.bytedance.sdk.component.ox.d.dq.dq;

import com.bytedance.sdk.component.ox.d.bl;
import com.bytedance.sdk.component.ox.d.cd;
import com.bytedance.sdk.component.ox.d.dq.dq.ox;
import com.bytedance.sdk.component.ox.d.dq.ox.ia;
import com.bytedance.sdk.component.ox.d.kx;
import com.bytedance.sdk.component.ox.d.n;
import com.bytedance.sdk.component.ox.d.r;
import com.bytedance.sdk.component.ox.d.wp;
import com.bytedance.sdk.component.ox.dq.cd;
import com.bytedance.sdk.component.ox.dq.gh;
import com.bytedance.sdk.component.ox.dq.ig;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class dq implements r {
    final iw dq;

    public dq(iw iwVar) {
        this.dq = iwVar;
    }

    private static bl dq(bl blVar) {
        return (blVar == null || blVar.ia() == null) ? blVar : blVar.kk().dq((n) null).dq();
    }

    private bl dq(final d dVar, bl blVar) throws IOException {
        cd dq;
        if (dVar == null || (dq = dVar.dq()) == null) {
            return blVar;
        }
        final com.bytedance.sdk.component.ox.dq.s ox = blVar.ia().ox();
        final com.bytedance.sdk.component.ox.dq.p dq2 = ig.dq(dq);
        return blVar.kk().dq(new ia(blVar.dq("Content-Type"), blVar.ia().d(), ig.dq(new gh() { // from class: com.bytedance.sdk.component.ox.d.dq.dq.dq.1
            boolean dq;

            @Override // com.bytedance.sdk.component.ox.dq.gh, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                if (!this.dq && !com.bytedance.sdk.component.ox.d.dq.ox.dq(this, 100, TimeUnit.MILLISECONDS)) {
                    this.dq = true;
                }
                ox.close();
            }

            @Override // com.bytedance.sdk.component.ox.dq.gh
            public long dq(com.bytedance.sdk.component.ox.dq.ox oxVar, long j) throws IOException {
                try {
                    long dq3 = ox.dq(oxVar, j);
                    if (dq3 != -1) {
                        oxVar.dq(dq2.ox(), oxVar.d() - dq3, dq3);
                        dq2.i();
                        return dq3;
                    }
                    if (!this.dq) {
                        this.dq = true;
                        dq2.close();
                    }
                    return -1L;
                } catch (IOException e2) {
                    if (this.dq) {
                        throw e2;
                    }
                    this.dq = true;
                    throw e2;
                }
            }

            @Override // com.bytedance.sdk.component.ox.dq.gh
            public com.bytedance.sdk.component.ox.dq.r dq() {
                return ox.dq();
            }
        }))).dq();
    }

    private static com.bytedance.sdk.component.ox.d.cd dq(com.bytedance.sdk.component.ox.d.cd cdVar, com.bytedance.sdk.component.ox.d.cd cdVar2) {
        cd.dq dqVar = new cd.dq();
        int dq = cdVar.dq();
        for (int i = 0; i < dq; i++) {
            String dq2 = cdVar.dq(i);
            String d2 = cdVar.d(i);
            if ((!"Warning".equalsIgnoreCase(dq2) || !d2.startsWith("1")) && (!dq(dq2) || cdVar2.dq(dq2) == null)) {
                com.bytedance.sdk.component.ox.d.dq.dq.dq.dq(dqVar, dq2, d2);
            }
        }
        int dq3 = cdVar2.dq();
        for (int i2 = 0; i2 < dq3; i2++) {
            String dq4 = cdVar2.dq(i2);
            if (!"Content-Length".equalsIgnoreCase(dq4) && dq(dq4)) {
                com.bytedance.sdk.component.ox.d.dq.dq.dq.dq(dqVar, dq4, cdVar2.d(i2));
            }
        }
        return dqVar.dq();
    }

    public static boolean dq(String str) {
        return ("Connection".equalsIgnoreCase(str) || "Keep-Alive".equalsIgnoreCase(str) || "Proxy-Authenticate".equalsIgnoreCase(str) || "Proxy-Authorization".equalsIgnoreCase(str) || "TE".equalsIgnoreCase(str) || "Trailers".equalsIgnoreCase(str) || "Transfer-Encoding".equalsIgnoreCase(str) || "Upgrade".equalsIgnoreCase(str)) ? false : true;
    }

    @Override // com.bytedance.sdk.component.ox.d.r
    public bl dq(r.dq dqVar) throws IOException {
        iw iwVar = this.dq;
        bl dq = iwVar != null ? iwVar.dq(dqVar.dq()) : null;
        ox dq2 = new ox.dq(System.currentTimeMillis(), dqVar.dq(), dq).dq();
        kx kxVar = dq2.dq;
        bl blVar = dq2.f2053d;
        if (dq != null && blVar == null) {
            com.bytedance.sdk.component.ox.d.dq.ox.dq(dq.ia());
        }
        if (kxVar == null && blVar == null) {
            return new bl.dq().dq(dqVar.dq()).dq(wp.HTTP_1_1).dq(504).dq("Unsatisfiable Request (only-if-cached)").dq(com.bytedance.sdk.component.ox.d.dq.ox.ox).dq(-1L).d(System.currentTimeMillis()).dq();
        }
        if (kxVar == null) {
            return blVar.kk().d(dq(blVar)).dq();
        }
        try {
            bl dq3 = dqVar.dq(kxVar);
            if (dq3 == null && dq != null) {
            }
            if (blVar != null) {
                if (dq3.ox() == 304) {
                    bl dq4 = blVar.kk().dq(dq(blVar.mn(), dq3.mn())).dq(dq3.mp()).d(dq3.q()).d(dq(blVar)).dq(dq(dq3)).dq();
                    dq3.ia().close();
                    this.dq.update(blVar, dq4);
                    return dq4;
                }
                com.bytedance.sdk.component.ox.d.dq.ox.dq(blVar.ia());
            }
            bl dq5 = dq3.kk().d(dq(blVar)).dq(dq(dq3)).dq();
            if (this.dq != null) {
                if (com.bytedance.sdk.component.ox.d.dq.ox.s.ox(dq5) && ox.dq(dq5, kxVar)) {
                    return dq(this.dq.dq(dq5), dq5);
                }
                com.bytedance.sdk.component.ox.d.dq.ox.iw.dq(kxVar.d());
            }
            return dq5;
        } finally {
            if (dq != null) {
                com.bytedance.sdk.component.ox.d.dq.ox.dq(dq.ia());
            }
        }
    }
}
