package g;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final /* synthetic */ class xh implements Executor {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20286a;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f20286a) {
            case 0:
                dav.d().f13881c.f16877b.execute(runnable);
                break;
            default:
                runnable.run();
                break;
        }
    }
}
