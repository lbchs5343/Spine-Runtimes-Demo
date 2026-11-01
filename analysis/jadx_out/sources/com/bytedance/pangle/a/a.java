package com.bytedance.pangle.a;

import com.bytedance.pangle.d.e;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    final CountDownLatch f1292a;

    /* renamed from: b, reason: collision with root package name */
    Throwable f1293b;

    /* renamed from: com.bytedance.pangle.a.a$a, reason: collision with other inner class name */
    public interface InterfaceC0093a {
        void a();
    }

    private a(InterfaceC0093a[] interfaceC0093aArr) {
        this.f1292a = new CountDownLatch(interfaceC0093aArr.length);
        for (final InterfaceC0093a interfaceC0093a : interfaceC0093aArr) {
            e.a(new Runnable() { // from class: com.bytedance.pangle.a.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        interfaceC0093a.a();
                    } catch (Throwable th) {
                        a.this.f1293b = th;
                    }
                    a.this.f1292a.countDown();
                }
            });
        }
    }

    public static void a(InterfaceC0093a... interfaceC0093aArr) {
        a aVar = new a(interfaceC0093aArr);
        try {
            aVar.f1292a.await();
            Throwable th = aVar.f1293b;
            if (th != null) {
                throw th;
            }
        } catch (InterruptedException e2) {
            throw new RuntimeException(e2);
        }
    }
}
