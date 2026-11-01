package g;

import java.util.BitSet;

/* loaded from: classes3.dex */
public class cnq extends bke {
    @Override // g.bke
    public final void a(fwg fwgVar, Object obj) {
        BitSet bitSet = (BitSet) obj;
        fwgVar.ae();
        int length = bitSet.length();
        for (int i = 0; i < length; i++) {
            fwgVar.ac(bitSet.get(i) ? 1L : 0L);
        }
        fwgVar.w();
    }
}
