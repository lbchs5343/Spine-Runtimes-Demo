package g;

/* loaded from: classes.dex */
public class cet extends androidx.lifecycle.a {
    public final void aa(Object obj) {
        boolean z;
        synchronized (this.f242e) {
            z = this.f243f == androidx.lifecycle.a.f238a;
            this.f243f = obj;
        }
        if (z) {
            dav.d().e(this.i);
        }
    }

    @Override // androidx.lifecycle.a
    public void q(Object obj) {
        androidx.lifecycle.a.l("setValue");
        this.k++;
        this.f241d = obj;
        s(null);
    }
}
