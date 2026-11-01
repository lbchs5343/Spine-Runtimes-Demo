package g;

/* loaded from: classes.dex */
public final class fei {

    /* renamed from: a, reason: collision with root package name */
    public long f16664a = 0;

    public final boolean b() {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.f16664a < 500) {
            return false;
        }
        this.f16664a = currentTimeMillis;
        return true;
    }
}
