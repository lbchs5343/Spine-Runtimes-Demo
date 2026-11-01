package g;

import java.lang.Thread;

/* loaded from: classes.dex */
public final class oc implements Thread.UncaughtExceptionHandler {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f19750a = dsr.k(oc.class);

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        boolean z = th instanceof OutOfMemoryError;
        dba dbaVar = f19750a;
        if (!z) {
            dbaVar.b(thread.getName(), "Uncaught thread exception, thread: {}", th);
        } else {
            thread.interrupt();
            dbaVar.m(thread.getName(), "OutOfMemoryError in thread: {}, forcing interrupt");
        }
    }
}
