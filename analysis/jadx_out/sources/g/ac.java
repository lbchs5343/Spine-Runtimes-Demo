package g;

/* loaded from: classes.dex */
public final class ac {

    /* renamed from: a, reason: collision with root package name */
    public boolean f9954a;

    /* renamed from: b, reason: collision with root package name */
    public dad f9955b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f9956c;

    public final void d(dad dadVar) {
        synchronized (this) {
            while (this.f9956c) {
                try {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                    }
                } finally {
                }
            }
            if (this.f9955b == dadVar) {
                return;
            }
            this.f9955b = dadVar;
            if (this.f9954a) {
                dadVar.onCancel();
            }
        }
    }
}
