package g;

import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final /* synthetic */ class fpe implements Executor {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ fpe f17191a = new fpe(0);

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17192b;

    public /* synthetic */ fpe(int i) {
        this.f17192b = i;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f17192b) {
            case 0:
                runnable.run();
                break;
            case 1:
                new Thread(runnable).start();
                break;
            default:
                runnable.run();
                break;
        }
    }
}
