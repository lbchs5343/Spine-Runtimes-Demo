package j$.util.stream;

/* loaded from: classes2.dex */
public final class F3 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Runnable f20865a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Runnable f20866b;

    public F3(Runnable runnable, Runnable runnable2) {
        this.f20865a = runnable;
        this.f20866b = runnable2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f20865a.run();
            this.f20866b.run();
        } catch (Throwable th) {
            try {
                this.f20866b.run();
            } catch (Throwable th2) {
                try {
                    th.addSuppressed(th2);
                } catch (Throwable unused) {
                }
            }
            throw th;
        }
    }
}
