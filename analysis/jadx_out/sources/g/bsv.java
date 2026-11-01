package g;

import java.io.IOException;

/* loaded from: classes3.dex */
public abstract class bsv {
    protected int zza;

    public final byte[] j() {
        try {
            fsu fsuVar = (fsu) this;
            int t = fsuVar.t();
            byte[] bArr = new byte[t];
            ctv ctvVar = new ctv(bArr, t);
            dxm d2 = fjo.f16893a.d(fsuVar.getClass());
            dnb dnbVar = ctvVar.f13500f;
            if (dnbVar == null) {
                dnbVar = new dnb(ctvVar);
            }
            d2.ad(fsuVar, dnbVar);
            if (t - ctvVar.f13499e == 0) {
                return bArr;
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e2) {
            throw new RuntimeException(tn.ad("Serializing ", getClass().getName(), " to a byte array threw an IOException (should never happen)."), e2);
        }
    }

    public abstract int k(dxm dxmVar);
}
