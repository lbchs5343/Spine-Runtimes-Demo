package g;

import java.util.Set;

/* loaded from: classes3.dex */
public final class csz extends eg {
    @Override // g.eg
    public final void ai(com.google.android.gms.internal.ads.q qVar, Set set) {
        synchronized (qVar) {
            try {
                if (qVar.p == null) {
                    qVar.p = set;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // g.eg
    public final int ao(com.google.android.gms.internal.ads.q qVar) {
        int i;
        synchronized (qVar) {
            i = qVar.q - 1;
            qVar.q = i;
        }
        return i;
    }
}
