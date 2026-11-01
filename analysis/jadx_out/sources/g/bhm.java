package g;

import java.util.concurrent.ThreadFactory;

/* loaded from: classes3.dex */
public final /* synthetic */ class bhm implements ThreadFactory {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f11589a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f11590b;

    public /* synthetic */ bhm(String str, boolean z) {
        this.f11589a = str;
        this.f11590b = z;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        String str = this.f11589a;
        bff.p(str, "$name");
        Thread thread = new Thread(runnable, str);
        thread.setDaemon(this.f11590b);
        return thread;
    }
}
