package g;

import java.lang.Thread;

/* loaded from: classes3.dex */
public final class mb implements Thread.UncaughtExceptionHandler {

    /* renamed from: a, reason: collision with root package name */
    public final String f19629a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ fth f19630b;

    public mb(fth fthVar, String str) {
        this.f19630b = fthVar;
        this.f19629a = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final synchronized void uncaughtException(Thread thread, Throwable th) {
        bgm bgmVar = ((cyg) this.f19630b.z).z;
        cyg.ak(bgmVar);
        bgmVar.f11518b.i(th, this.f19629a);
    }
}
