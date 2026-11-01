package g;

import java.util.concurrent.atomic.AtomicIntegerArray;

/* loaded from: classes3.dex */
public class but extends bke {
    @Override // g.bke
    public final void a(fwg fwgVar, Object obj) {
        fwgVar.ae();
        int length = ((AtomicIntegerArray) obj).length();
        for (int i = 0; i < length; i++) {
            fwgVar.ac(r6.get(i));
        }
        fwgVar.w();
    }
}
