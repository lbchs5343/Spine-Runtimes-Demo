package g;

/* loaded from: classes.dex */
public abstract class bbq {

    /* renamed from: g, reason: collision with root package name */
    public int f11239g = -1;
    public final /* synthetic */ androidx.lifecycle.a h;
    public final jn i;
    public boolean j;

    public bbq(androidx.lifecycle.a aVar, jn jnVar) {
        this.h = aVar;
        this.i = jnVar;
    }

    public boolean d(iz izVar) {
        return false;
    }

    public abstract boolean e();

    public void f() {
    }

    public final void k(boolean z) {
        if (z == this.j) {
            return;
        }
        this.j = z;
        int i = z ? 1 : -1;
        androidx.lifecycle.a aVar = this.h;
        int i2 = aVar.j;
        aVar.j = i + i2;
        if (!aVar.f240c) {
            aVar.f240c = true;
            while (true) {
                try {
                    int i3 = aVar.j;
                    if (i2 == i3) {
                        break;
                    }
                    boolean z2 = i2 == 0 && i3 > 0;
                    boolean z3 = i2 > 0 && i3 == 0;
                    if (z2) {
                        aVar.p();
                    } else if (z3) {
                        aVar.t();
                    }
                    i2 = i3;
                } catch (Throwable th) {
                    aVar.f240c = false;
                    throw th;
                }
            }
            aVar.f240c = false;
        }
        if (this.j) {
            aVar.s(this);
        }
    }
}
