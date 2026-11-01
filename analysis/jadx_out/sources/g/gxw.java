package g;

import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class gxw extends fdk {

    /* renamed from: c, reason: collision with root package name */
    public final gyf f18984c;

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f18985d;

    public gxw(gyf gyfVar) {
        super("require");
        this.f18985d = new HashMap();
        this.f18984c = gyfVar;
    }

    @Override // g.fdk
    public final gey e(dpa dpaVar, List list) {
        gey geyVar;
        byh.ah(1, "require", list);
        String zzi = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) list.get(0)).zzi();
        HashMap hashMap = this.f18985d;
        if (hashMap.containsKey(zzi)) {
            return (gey) hashMap.get(zzi);
        }
        gyf gyfVar = this.f18984c;
        if (((HashMap) gyfVar.f18999a).containsKey(zzi)) {
            try {
                geyVar = (gey) ((Callable) ((HashMap) gyfVar.f18999a).get(zzi)).call();
            } catch (Exception unused) {
                throw new IllegalStateException("Failed to create API implementation: ".concat(String.valueOf(zzi)));
            }
        } else {
            geyVar = gey.o;
        }
        if (geyVar instanceof fdk) {
            hashMap.put(zzi, (fdk) geyVar);
        }
        return geyVar;
    }
}
