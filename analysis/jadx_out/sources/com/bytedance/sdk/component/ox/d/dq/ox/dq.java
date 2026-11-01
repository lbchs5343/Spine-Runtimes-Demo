package com.bytedance.sdk.component.ox.d.dq.ox;

import com.bytedance.sdk.component.ox.d.bl;
import com.bytedance.sdk.component.ox.d.h;
import com.bytedance.sdk.component.ox.d.i;
import com.bytedance.sdk.component.ox.d.kx;
import com.bytedance.sdk.component.ox.d.mp;
import com.bytedance.sdk.component.ox.d.r;
import java.io.IOException;
import java.util.List;

/* loaded from: classes.dex */
public final class dq implements r {
    private final mp dq;

    public dq(mp mpVar) {
        this.dq = mpVar;
    }

    private String dq(List<com.bytedance.sdk.component.ox.d.ig> list) {
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                sb.append("; ");
            }
            com.bytedance.sdk.component.ox.d.ig igVar = list.get(i);
            sb.append(igVar.dq());
            sb.append('=');
            sb.append(igVar.d());
        }
        return sb.toString();
    }

    @Override // com.bytedance.sdk.component.ox.d.r
    public bl dq(r.dq dqVar) throws IOException {
        kx dq = dqVar.dq();
        kx.dq iw = dq.iw();
        h p = dq.p();
        if (p != null) {
            i dq2 = p.dq();
            if (dq2 != null) {
                iw.dq("Content-Type", dq2.toString());
            }
            long d2 = p.d();
            if (d2 != -1) {
                iw.dq("Content-Length", Long.toString(d2));
                iw.d("Transfer-Encoding");
            } else {
                iw.dq("Transfer-Encoding", "chunked");
                iw.d("Content-Length");
            }
        }
        boolean z = false;
        if (dq.dq("Host") == null) {
            iw.dq("Host", com.bytedance.sdk.component.ox.d.dq.ox.dq(dq.dq(), false));
        }
        if (dq.dq("Connection") == null) {
            iw.dq("Connection", "Keep-Alive");
        }
        if (dq.dq("Accept-Encoding") == null && dq.dq("Range") == null) {
            iw.dq("Accept-Encoding", "gzip");
            z = true;
        }
        List<com.bytedance.sdk.component.ox.d.ig> dq3 = this.dq.dq(dq.dq());
        if (!dq3.isEmpty()) {
            iw.dq("Cookie", dq(dq3));
        }
        if (dq.dq("User-Agent") == null) {
            iw.dq("User-Agent", com.bytedance.sdk.component.ox.d.dq.p.dq());
        }
        bl dq4 = dqVar.dq(iw.dq());
        s.dq(this.dq, dq.dq(), dq4.mn());
        bl.dq dq5 = dq4.kk().dq(dq);
        if (z && "gzip".equalsIgnoreCase(dq4.dq("Content-Encoding")) && s.ox(dq4)) {
            com.bytedance.sdk.component.ox.dq.o oVar = new com.bytedance.sdk.component.ox.dq.o(dq4.ia().ox());
            dq5.dq(dq4.mn().d().d("Content-Encoding").d("Content-Length").dq());
            dq5.dq(new ia(dq4.dq("Content-Type"), -1L, com.bytedance.sdk.component.ox.dq.ig.dq(oVar)));
        }
        return dq5.dq();
    }
}
