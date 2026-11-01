package g;

import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

/* loaded from: classes3.dex */
public final class agf extends bke {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f10177b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ bke f10178c;

    public /* synthetic */ agf(bke bkeVar, int i) {
        this.f10177b = i;
        this.f10178c = bkeVar;
    }

    @Override // g.bke
    public final void a(fwg fwgVar, Object obj) {
        switch (this.f10177b) {
            case 0:
                this.f10178c.a(fwgVar, Long.valueOf(((AtomicLong) obj).get()));
                break;
            case 1:
                AtomicLongArray atomicLongArray = (AtomicLongArray) obj;
                fwgVar.ae();
                int length = atomicLongArray.length();
                for (int i = 0; i < length; i++) {
                    this.f10178c.a(fwgVar, Long.valueOf(atomicLongArray.get(i)));
                }
                fwgVar.w();
                break;
            default:
                if (obj == null) {
                    fwgVar.af();
                    break;
                } else {
                    this.f10178c.a(fwgVar, obj);
                    break;
                }
        }
    }
}
