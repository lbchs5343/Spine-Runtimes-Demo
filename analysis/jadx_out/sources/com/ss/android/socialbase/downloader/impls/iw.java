package com.ss.android.socialbase.downloader.impls;

import g.abn;
import g.ais;
import g.bff;
import g.dnw;
import g.enb;
import g.fys;
import g.fzn;
import g.ib;
import java.io.IOException;
import java.util.List;

/* loaded from: classes.dex */
public class iw implements com.ss.android.socialbase.downloader.network.ia {
    @Override // com.ss.android.socialbase.downloader.network.ia
    public com.ss.android.socialbase.downloader.network.mn dq(String str, List<com.ss.android.socialbase.downloader.model.ox> list) throws IOException {
        fys gh = com.ss.android.socialbase.downloader.downloader.ox.gh();
        if (gh == null) {
            throw new IOException("can't get httpClient");
        }
        fzn fznVar = new fzn(7);
        fznVar.z(str);
        fznVar.w("HEAD", null);
        if (list != null && list.size() > 0) {
            for (com.ss.android.socialbase.downloader.model.ox oxVar : list) {
                String dq = oxVar.dq();
                String mn = com.ss.android.socialbase.downloader.kk.iw.mn(oxVar.d());
                bff.p(dq, abn.EXTRA_UA_APP_NAME);
                bff.p(mn, "value");
                ((ais) fznVar.f17730e).e(dq, mn);
            }
        }
        final ib ibVar = new ib(gh, fznVar.x());
        final enb t = ibVar.t();
        if (com.ss.android.socialbase.downloader.kk.dq.dq(2097152)) {
            t.close();
        }
        return new com.ss.android.socialbase.downloader.network.mn() { // from class: com.ss.android.socialbase.downloader.impls.iw.1
            @Override // com.ss.android.socialbase.downloader.network.mn
            public int d() throws IOException {
                return t.f15840g;
            }

            @Override // com.ss.android.socialbase.downloader.network.mn
            public String dq(String str2) {
                enb enbVar = t;
                enbVar.getClass();
                bff.p(str2, abn.EXTRA_UA_APP_NAME);
                return enb.o(str2, enbVar);
            }

            @Override // com.ss.android.socialbase.downloader.network.mn
            public void ox() {
                dnw dnwVar = ibVar;
                if (dnwVar == null || ((ib) dnwVar).n) {
                    return;
                }
                ((ib) ibVar).cancel();
            }
        };
    }
}
