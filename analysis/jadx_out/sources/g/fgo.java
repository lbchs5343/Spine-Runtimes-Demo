package g;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes3.dex */
public final class fgo implements dym {

    /* renamed from: b, reason: collision with root package name */
    public volatile boolean f16748b = false;

    /* renamed from: c, reason: collision with root package name */
    public final ConcurrentHashMap f16749c = new ConcurrentHashMap();

    /* renamed from: a, reason: collision with root package name */
    public final LinkedBlockingQueue f16747a = new LinkedBlockingQueue();

    @Override // g.dym
    public final synchronized dba e(String str) {
        ani aniVar;
        aniVar = (ani) this.f16749c.get(str);
        if (aniVar == null) {
            aniVar = new ani(str, this.f16747a, this.f16748b);
            this.f16749c.put(str, aniVar);
        }
        return aniVar;
    }
}
