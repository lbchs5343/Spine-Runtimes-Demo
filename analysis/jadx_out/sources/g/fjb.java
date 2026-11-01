package g;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes3.dex */
public final class fjb implements boa {

    /* renamed from: a, reason: collision with root package name */
    public volatile Set f16879a;

    /* renamed from: b, reason: collision with root package name */
    public volatile Set f16880b;

    public final synchronized void c() {
        try {
            Iterator it = this.f16879a.iterator();
            while (it.hasNext()) {
                this.f16880b.add(((boa) it.next()).get());
            }
            this.f16879a = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // g.boa
    public final Object get() {
        if (this.f16880b == null) {
            synchronized (this) {
                try {
                    if (this.f16880b == null) {
                        this.f16880b = Collections.newSetFromMap(new ConcurrentHashMap());
                        c();
                    }
                } finally {
                }
            }
        }
        return Collections.unmodifiableSet(this.f16880b);
    }
}
