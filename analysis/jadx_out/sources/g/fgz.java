package g;

/* loaded from: classes3.dex */
public final class fgz extends gwm implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final Runnable f16778a;

    public fgz(Runnable runnable) {
        runnable.getClass();
        this.f16778a = runnable;
    }

    @Override // com.google.android.gms.internal.ads.zzgcy
    public final String f() {
        return tn.ad("task=[", this.f16778a.toString(), "]");
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f16778a.run();
        } catch (Throwable th) {
            zzd(th);
            throw th;
        }
    }
}
