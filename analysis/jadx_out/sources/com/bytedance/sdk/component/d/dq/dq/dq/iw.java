package com.bytedance.sdk.component.d.dq.dq.dq;

import com.bytedance.sdk.component.d.dq.f;
import com.bytedance.sdk.component.d.dq.fw;
import com.bytedance.sdk.component.d.dq.mp;
import com.bytedance.sdk.component.d.dq.no;
import com.bytedance.sdk.component.ox.d.bl;

/* loaded from: classes.dex */
public class iw extends f {
    public bl dq;

    public iw(bl blVar) {
        this.dq = blVar;
    }

    @Override // com.bytedance.sdk.component.d.dq.f, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.dq.close();
    }

    @Override // com.bytedance.sdk.component.d.dq.f
    public long d() {
        return this.dq.mp();
    }

    @Override // com.bytedance.sdk.component.d.dq.f
    public long dq() {
        return this.dq.q();
    }

    @Override // com.bytedance.sdk.component.d.dq.f
    public String dq(String str) {
        return this.dq.dq(str);
    }

    @Override // com.bytedance.sdk.component.d.dq.f
    public String dq(String str, String str2) {
        return this.dq.dq(str, str2);
    }

    @Override // com.bytedance.sdk.component.d.dq.f
    public mp ia() {
        try {
            return mp.dq(this.dq.d().toString());
        } catch (Exception unused) {
            return mp.HTTP_1_1;
        }
    }

    @Override // com.bytedance.sdk.component.d.dq.f
    public fw iw() {
        return new mn(this.dq.ia());
    }

    @Override // com.bytedance.sdk.component.d.dq.f
    public no kk() {
        bl blVar = this.dq;
        if (blVar == null) {
            return null;
        }
        return new no(blVar.jy());
    }

    @Override // com.bytedance.sdk.component.d.dq.f
    public com.bytedance.sdk.component.d.dq.iw mn() {
        return new com.bytedance.sdk.component.d.dq.iw(this.dq.mn().dq);
    }

    @Override // com.bytedance.sdk.component.d.dq.f
    public int ox() {
        bl blVar = this.dq;
        if (blVar != null) {
            return blVar.ox();
        }
        return 0;
    }

    @Override // com.bytedance.sdk.component.d.dq.f
    public boolean p() {
        return this.dq.p();
    }

    @Override // com.bytedance.sdk.component.d.dq.f
    public String s() {
        return this.dq.s();
    }

    public String toString() {
        return this.dq.toString();
    }
}
