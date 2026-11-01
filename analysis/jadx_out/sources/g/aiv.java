package g;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class aiv implements oh, gpm {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f10284a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public ArrayDeque f10285b = new ArrayDeque();

    /* renamed from: c, reason: collision with root package name */
    public final Executor f10286c;

    public aiv(Executor executor) {
        this.f10286c = executor;
    }

    public final synchronized void d() {
        fpe fpeVar = fpe.f17191a;
        ao aoVar = ao.ac;
        synchronized (this) {
            try {
                if (!this.f10284a.containsKey(byh.class)) {
                    this.f10284a.put(byh.class, new ConcurrentHashMap());
                }
                ((ConcurrentHashMap) this.f10284a.get(byh.class)).put(aoVar, fpeVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
