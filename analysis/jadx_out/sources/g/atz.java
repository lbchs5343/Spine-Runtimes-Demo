package g;

/* loaded from: classes.dex */
public final class atz extends hbm {

    /* renamed from: a, reason: collision with root package name */
    public final Runnable f10846a;

    public atz(Runnable runnable, long j, cyl cylVar) {
        super(j, cylVar);
        this.f10846a = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f10846a.run();
        } finally {
            this.ah.getClass();
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Task[");
        Runnable runnable = this.f10846a;
        sb.append(runnable.getClass().getSimpleName());
        sb.append('@');
        sb.append(fso.o(runnable));
        sb.append(", ");
        sb.append(this.ag);
        sb.append(", ");
        sb.append(this.ah);
        sb.append(']');
        return sb.toString();
    }
}
