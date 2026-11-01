package com.bytedance.sdk.component.d.dq.dq.dq;

import com.bytedance.sdk.component.d.dq.fw;
import com.bytedance.sdk.component.d.dq.o;
import com.bytedance.sdk.component.ox.d.i;
import com.bytedance.sdk.component.ox.d.n;
import java.io.InputStream;

/* loaded from: classes.dex */
public class mn extends fw {
    n dq;

    public mn(n nVar) {
        this.dq = nVar;
    }

    @Override // com.bytedance.sdk.component.d.dq.fw, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        n nVar = this.dq;
        if (nVar != null) {
            nVar.close();
        }
    }

    @Override // com.bytedance.sdk.component.d.dq.fw
    public String d() {
        try {
            return this.dq.iw();
        } catch (Exception unused) {
            return "";
        }
    }

    @Override // com.bytedance.sdk.component.d.dq.fw
    public long dq() {
        n nVar = this.dq;
        if (nVar != null) {
            return nVar.d();
        }
        return -1L;
    }

    @Override // com.bytedance.sdk.component.d.dq.fw
    public InputStream ox() {
        n nVar = this.dq;
        if (nVar != null) {
            return nVar.p();
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.d.dq.fw
    public byte[] p() {
        try {
            return this.dq.s();
        } catch (Exception unused) {
            return new byte[0];
        }
    }

    @Override // com.bytedance.sdk.component.d.dq.fw
    public o s() {
        i dq;
        n nVar = this.dq;
        if (nVar == null || (dq = nVar.dq()) == null) {
            return null;
        }
        return new o(dq.toString(), dq.dq(), dq.d(), dq.ox() != null ? dq.ox().name() : null);
    }
}
