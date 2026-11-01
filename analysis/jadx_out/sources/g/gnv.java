package g;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public abstract class gnv {

    /* renamed from: a, reason: collision with root package name */
    public static final AtomicReference f18479a = new AtomicReference(0L);

    public static void b(long j) {
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (i < 5) {
                AtomicReference atomicReference = f18479a;
                Long l = (Long) atomicReference.get();
                Long valueOf = Long.valueOf(l.longValue() | j);
                while (!atomicReference.compareAndSet(l, valueOf)) {
                    if (atomicReference.get() != l) {
                        break;
                    }
                }
                return;
            }
            return;
            i = i2;
        }
    }
}
