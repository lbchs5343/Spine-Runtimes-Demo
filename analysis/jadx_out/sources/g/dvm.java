package g;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public final class dvm implements ThreadFactory {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14892a;

    /* renamed from: b, reason: collision with root package name */
    public final AtomicInteger f14893b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f14894c;

    public dvm(String str, int i) {
        this.f14892a = i;
        switch (i) {
            case 1:
                this.f14894c = str;
                this.f14893b = new AtomicInteger(1);
                break;
            default:
                this.f14894c = str;
                this.f14893b = new AtomicInteger(1);
                break;
        }
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        switch (this.f14892a) {
            case 0:
                return new Thread(runnable, "AdWorker(" + this.f14894c + ") #" + this.f14893b.getAndIncrement());
            default:
                return new Thread(runnable, "AdWorker(" + this.f14894c + ") #" + this.f14893b.getAndIncrement());
        }
    }
}
