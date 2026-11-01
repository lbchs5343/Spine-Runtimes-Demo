package g;

/* loaded from: classes.dex */
public class dqc {

    /* renamed from: d, reason: collision with root package name */
    public final Object[] f14631d;

    /* renamed from: e, reason: collision with root package name */
    public int f14632e;

    public dqc() {
        this.f14631d = new Object[256];
    }

    public dqc(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("The max pool size must be > 0");
        }
        this.f14631d = new Object[i];
    }

    public Object b() {
        int i = this.f14632e;
        if (i <= 0) {
            return null;
        }
        int i2 = i - 1;
        Object[] objArr = this.f14631d;
        Object obj = objArr[i2];
        bff.ag(obj, "null cannot be cast to non-null type T of androidx.core.util.Pools.SimplePool");
        objArr[i2] = null;
        this.f14632e--;
        return obj;
    }

    public boolean c(Object obj) {
        Object[] objArr;
        boolean z;
        bff.p(obj, "instance");
        int i = this.f14632e;
        int i2 = 0;
        while (true) {
            objArr = this.f14631d;
            if (i2 >= i) {
                z = false;
                break;
            }
            if (objArr[i2] == obj) {
                z = true;
                break;
            }
            i2++;
        }
        if (z) {
            throw new IllegalStateException("Already in the pool!");
        }
        int i3 = this.f14632e;
        if (i3 >= objArr.length) {
            return false;
        }
        objArr[i3] = obj;
        this.f14632e = i3 + 1;
        return true;
    }

    public void f(gz gzVar) {
        int i = this.f14632e;
        Object[] objArr = this.f14631d;
        if (i < objArr.length) {
            objArr[i] = gzVar;
            this.f14632e = i + 1;
        }
    }
}
