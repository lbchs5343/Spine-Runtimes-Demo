package g;

import java.lang.reflect.Array;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class dmx extends kj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14450a;
    public final /* synthetic */ kj ae;

    public /* synthetic */ dmx(kj kjVar, int i) {
        this.f14450a = i;
        this.ae = kjVar;
    }

    @Override // g.kj
    public final void b(gea geaVar, Object obj) {
        switch (this.f14450a) {
            case 0:
                Iterable iterable = (Iterable) obj;
                if (iterable != null) {
                    Iterator it = iterable.iterator();
                    while (it.hasNext()) {
                        this.ae.b(geaVar, it.next());
                    }
                    break;
                }
                break;
            default:
                if (obj != null) {
                    int length = Array.getLength(obj);
                    for (int i = 0; i < length; i++) {
                        this.ae.b(geaVar, Array.get(obj, i));
                    }
                    break;
                }
                break;
        }
    }
}
