package g;

/* loaded from: classes3.dex */
public final class ffj implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final alw f16703a;

    /* renamed from: b, reason: collision with root package name */
    public final gew f16704b;

    public ffj(alw alwVar, gew gewVar) {
        this.f16703a = alwVar;
        this.f16704b = gewVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f16703a.f10267f != this) {
            return;
        }
        gew gewVar = this.f16704b;
        if (ail.f10262a.i(this.f16703a, this, alw.p(gewVar))) {
            alw.n(this.f16703a);
        }
    }
}
