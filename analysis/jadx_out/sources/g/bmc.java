package g;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.HashMap;

/* loaded from: classes.dex */
public abstract class bmc extends emd {
    public static final dba j = dsr.k(bmc.class);
    public gdu k;

    public final bvi l() {
        gdu gduVar = this.k;
        long j2 = gduVar.f17955f - 2;
        int h = gduVar.h();
        if (h != 28) {
            j.p(Integer.toHexString(h), "Unexpected string pool header size: 0x{}, expected: 0x1C");
        }
        return n(j2, (this.k.i() & 4294967295L) + j2);
    }

    public final void m(String str) {
        StringBuilder p = awf.p("Decode error: ", str, ", position: 0x");
        p.append(Long.toHexString(this.k.f17955f));
        throw new IOException(p.toString());
    }

    public final bvi n(long j2, long j3) {
        int i = this.k.i();
        this.k.i();
        int i2 = this.k.i();
        long i3 = this.k.i();
        this.k.i();
        gdu gduVar = this.k;
        long j4 = gduVar.f17955f;
        long j5 = i3 - (j4 - j2);
        byte[] o = gduVar.o((int) (j3 - j4));
        this.k.m(j3, "Expected strings pool end");
        boolean z = (i2 & 256) != 0;
        bvi bviVar = new bvi();
        bviVar.f12265b = new HashMap();
        bviVar.f12268e = i;
        bviVar.f12267d = j5;
        ByteBuffer wrap = ByteBuffer.wrap(o);
        bviVar.f12264a = wrap;
        wrap.order(ByteOrder.LITTLE_ENDIAN);
        bviVar.f12266c = z;
        return bviVar;
    }
}
