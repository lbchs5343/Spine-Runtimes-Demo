package g;

/* loaded from: classes.dex */
public final class fvf extends com.bytedance.sdk.component.o.p.ox {

    /* renamed from: a, reason: collision with root package name */
    public Process f17473a;

    /* renamed from: b, reason: collision with root package name */
    public long f17474b;

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        try {
            Thread.sleep(this.f17474b);
        } catch (InterruptedException e2) {
            e2.printStackTrace();
        }
        Process process = this.f17473a;
        if (process != null) {
            process.destroy();
        }
    }
}
