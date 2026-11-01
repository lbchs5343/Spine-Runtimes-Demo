package com.bytedance.sdk.component.d.dq.dq.dq;

import android.text.TextUtils;
import com.bytedance.sdk.component.d.dq.ig;
import com.bytedance.sdk.component.d.dq.jy;
import com.bytedance.sdk.component.d.dq.q;
import com.bytedance.sdk.component.ox.d.h;
import com.bytedance.sdk.component.ox.d.i;
import com.bytedance.sdk.component.ox.d.k;
import com.bytedance.sdk.component.ox.d.kx;
import com.bytedance.sdk.component.ox.d.le;
import com.bytedance.sdk.component.ox.d.p;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ox extends ig {
    k mp;
    com.bytedance.sdk.component.d.dq.p q;

    public ox(k.dq dqVar) {
        super(dqVar);
        k dq = dqVar.dq();
        this.mp = dq;
        this.q = new p(dq);
    }

    private boolean d(jy jyVar) {
        byte[] bArr;
        return jyVar != null && jyVar.iw == jy.dq.BYTE_ARRAY_TYPE && (bArr = jyVar.s) != null && bArr.length > 0;
    }

    private boolean dq(jy jyVar) {
        byte[] bArr;
        return jyVar != null && jyVar.iw == jy.dq.FILE_TYPE && (bArr = jyVar.s) != null && bArr.length > 0;
    }

    private boolean ox(jy jyVar) {
        return (jyVar == null || jyVar.iw != jy.dq.STRING_TYPE || TextUtils.isEmpty(jyVar.p)) ? false : true;
    }

    @Override // com.bytedance.sdk.component.d.dq.ig
    public com.bytedance.sdk.component.d.dq.d dq(q qVar) {
        if (qVar == null) {
            return null;
        }
        kx.dq dqVar = new kx.dq();
        dqVar.dq(qVar.dq());
        if (qVar.d() != null) {
            dqVar.dq(qVar.d().dq());
        }
        if (qVar.iw() != null) {
            if (ox(qVar.iw())) {
                dqVar.dq(qVar.ox(), h.dq(i.dq(qVar.iw().ox.toString()), qVar.iw().p));
            } else if (dq(qVar.iw())) {
                dqVar.dq(qVar.ox(), new le.dq().dq(le.s).dq(qVar.iw().d(), qVar.iw().dq(), h.dq(i.dq("multipart/form-data"), qVar.iw().s)).dq());
            } else if (d(qVar.iw())) {
                dqVar.dq(qVar.ox(), h.dq(i.dq(qVar.iw().ox.toString()), qVar.iw().s));
            }
        }
        if (qVar.s() != null && qVar.s().dq) {
            dqVar.dq(new p.dq().dq().ox());
        }
        if (qVar.p() != null && qVar.p().size() > 0) {
            for (Map.Entry<String, List<String>> entry : qVar.p().entrySet()) {
                Iterator<String> it = entry.getValue().iterator();
                while (it.hasNext()) {
                    dqVar.dq(entry.getKey(), it.next());
                }
            }
        }
        return new dq(this.mp.dq(dqVar.dq()));
    }

    @Override // com.bytedance.sdk.component.d.dq.ig
    public com.bytedance.sdk.component.d.dq.p dq() {
        return this.q;
    }
}
