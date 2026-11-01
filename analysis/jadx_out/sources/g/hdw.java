package g;

import com.google.android.gms.internal.ads.zzbuj;
import java.lang.Thread;

/* loaded from: classes3.dex */
public final class hdw implements Thread.UncaughtExceptionHandler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19312a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Thread.UncaughtExceptionHandler f19313b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzbuj f19314c;

    public /* synthetic */ hdw(zzbuj zzbujVar, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, int i) {
        this.f19312a = i;
        this.f19313b = uncaughtExceptionHandler;
        this.f19314c = zzbujVar;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler;
        switch (this.f19312a) {
            case 0:
                uncaughtExceptionHandler = this.f19313b;
                try {
                    try {
                        this.f19314c.p(th);
                    } finally {
                    }
                } catch (Throwable unused) {
                    agd.d("AdMob exception reporter failed reporting the exception.");
                }
                if (uncaughtExceptionHandler != null) {
                    uncaughtExceptionHandler.uncaughtException(thread, th);
                    return;
                }
                return;
            default:
                uncaughtExceptionHandler = this.f19313b;
                try {
                    try {
                        this.f19314c.p(th);
                    } finally {
                    }
                } catch (Throwable unused2) {
                    agd.d("AdMob exception reporter failed reporting the exception.");
                }
                if (uncaughtExceptionHandler != null) {
                    uncaughtExceptionHandler.uncaughtException(thread, th);
                    return;
                }
                return;
        }
    }
}
