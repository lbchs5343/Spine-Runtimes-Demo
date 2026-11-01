package com.ss.android.socialbase.downloader.impls;

import android.net.Uri;
import android.text.TextUtils;
import com.ss.android.socialbase.downloader.network.IDownloadHttpService;
import g.abn;
import g.ais;
import g.bff;
import g.dfw;
import g.dnw;
import g.ehi;
import g.enb;
import g.fys;
import g.fzn;
import g.gjb;
import g.ib;
import java.io.IOException;
import java.io.InputStream;
import java.net.UnknownHostException;
import java.util.List;
import java.util.zip.GZIPInputStream;

/* loaded from: classes.dex */
public class mn implements IDownloadHttpService {
    private final com.ss.android.socialbase.downloader.kk.ia<String, fys> dq = new com.ss.android.socialbase.downloader.kk.ia<>(4, 8);

    private fys dq(String str, final String str2) {
        try {
            final String host = Uri.parse(str).getHost();
            if (!TextUtils.isEmpty(host) && !TextUtils.isEmpty(str2)) {
                String str3 = host + "_" + str2;
                synchronized (this.dq) {
                    try {
                        fys fysVar = this.dq.get(str3);
                        if (fysVar != null) {
                            return fysVar;
                        }
                        gjb i = com.ss.android.socialbase.downloader.downloader.ox.i();
                        dfw dfwVar = new dfw() { // from class: com.ss.android.socialbase.downloader.impls.mn.2
                            @Override // g.dfw
                            public abstract /* synthetic */ List lookup(String str4) throws UnknownHostException;
                        };
                        i.getClass();
                        i.f18236f = dfwVar;
                        fys fysVar2 = new fys(i);
                        synchronized (this.dq) {
                            this.dq.put(str3, fysVar2);
                        }
                        return fysVar2;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return com.ss.android.socialbase.downloader.downloader.ox.gh();
    }

    @Override // com.ss.android.socialbase.downloader.network.IDownloadHttpService
    public com.ss.android.socialbase.downloader.network.kk downloadWithConnection(int i, String str, List<com.ss.android.socialbase.downloader.model.ox> list) throws IOException {
        String str2;
        fzn fznVar = new fzn(7);
        fznVar.z(str);
        if (list == null || list.size() <= 0) {
            str2 = null;
        } else {
            str2 = null;
            for (com.ss.android.socialbase.downloader.model.ox oxVar : list) {
                String dq = oxVar.dq();
                if (str2 == null && "ss_d_request_host_ip_114".equals(dq)) {
                    str2 = oxVar.d();
                } else {
                    String mn = com.ss.android.socialbase.downloader.kk.iw.mn(oxVar.d());
                    bff.p(dq, abn.EXTRA_UA_APP_NAME);
                    bff.p(mn, "value");
                    ((ais) fznVar.f17730e).e(dq, mn);
                }
            }
        }
        fys dq2 = !TextUtils.isEmpty(str2) ? dq(str, str2) : com.ss.android.socialbase.downloader.downloader.ox.gh();
        if (dq2 == null) {
            throw new IOException("can't get httpClient");
        }
        final ib ibVar = new ib(dq2, fznVar.x());
        final enb t = ibVar.t();
        final ehi ehiVar = t.f15835b;
        if (ehiVar == null) {
            return null;
        }
        InputStream m = ehiVar.c().m();
        String o = enb.o("Content-Encoding", t);
        final InputStream gZIPInputStream = (o == null || !"gzip".equalsIgnoreCase(o) || (m instanceof GZIPInputStream)) ? m : new GZIPInputStream(m);
        return new com.ss.android.socialbase.downloader.network.s() { // from class: com.ss.android.socialbase.downloader.impls.mn.1
            @Override // com.ss.android.socialbase.downloader.network.mn
            public int d() throws IOException {
                return t.f15840g;
            }

            @Override // com.ss.android.socialbase.downloader.network.kk
            public InputStream dq() throws IOException {
                return gZIPInputStream;
            }

            @Override // com.ss.android.socialbase.downloader.network.mn
            public String dq(String str3) {
                enb enbVar = t;
                enbVar.getClass();
                bff.p(str3, abn.EXTRA_UA_APP_NAME);
                return enb.o(str3, enbVar);
            }

            @Override // com.ss.android.socialbase.downloader.network.mn
            public void ox() {
                dnw dnwVar = ibVar;
                if (dnwVar == null || ((ib) dnwVar).n) {
                    return;
                }
                ((ib) ibVar).cancel();
            }

            @Override // com.ss.android.socialbase.downloader.network.kk
            public void p() {
                try {
                    ehi ehiVar2 = ehiVar;
                    if (ehiVar2 != null) {
                        ehiVar2.close();
                    }
                    dnw dnwVar = ibVar;
                    if (dnwVar == null || ((ib) dnwVar).n) {
                        return;
                    }
                    ((ib) ibVar).cancel();
                } catch (Throwable unused) {
                }
            }

            @Override // com.ss.android.socialbase.downloader.network.dq
            public String s() {
                return "";
            }
        };
    }
}
