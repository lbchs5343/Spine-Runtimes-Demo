package g;

import android.os.Message;

/* loaded from: classes3.dex */
public final class eea implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15390a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Message f15391b;

    public /* synthetic */ eea(Message message, int i) {
        this.f15390a = i;
        this.f15391b = message;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f15390a) {
            case 0:
                throw new AssertionError("Unknown handler message received: " + this.f15391b.what);
            default:
                throw new AssertionError("Unhandled stats message." + this.f15391b.what);
        }
    }
}
