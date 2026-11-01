package g;

import java.util.concurrent.ThreadFactory;

/* loaded from: classes3.dex */
public final /* synthetic */ class ekg implements ThreadFactory {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15701a;

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        switch (this.f15701a) {
            case 0:
                return new Thread(runnable, "heartbeat-information-executor");
            default:
                return new Thread(runnable, "debug-bridge");
        }
    }
}
