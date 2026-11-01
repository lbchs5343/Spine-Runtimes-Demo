package g;

import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class cqa extends Thread {

    /* renamed from: a, reason: collision with root package name */
    public final CountDownLatch f13316a = new CountDownLatch(1);

    /* renamed from: b, reason: collision with root package name */
    public boolean f13317b = false;

    /* renamed from: c, reason: collision with root package name */
    public final WeakReference f13318c;

    /* renamed from: d, reason: collision with root package name */
    public final long f13319d;

    public cqa(xo xoVar, long j) {
        this.f13318c = new WeakReference(xoVar);
        this.f13319d = j;
        start();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        xo xoVar;
        WeakReference weakReference = this.f13318c;
        try {
            if (this.f13316a.await(this.f13319d, TimeUnit.MILLISECONDS) || (xoVar = (xo) weakReference.get()) == null) {
                return;
            }
            xoVar.m();
            this.f13317b = true;
        } catch (InterruptedException unused) {
            xo xoVar2 = (xo) weakReference.get();
            if (xoVar2 != null) {
                xoVar2.m();
                this.f13317b = true;
            }
        }
    }
}
