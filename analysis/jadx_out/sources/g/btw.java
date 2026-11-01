package g;

/* loaded from: classes3.dex */
public final class btw extends crf {
    public final void a(String str) {
        if (this.i) {
            p();
            this.i = false;
        }
        kk.c(str, (kk) this.k);
    }

    public final void b(int i) {
        if (this.i) {
            p();
            this.i = false;
        }
        kk.j((kk) this.k, i);
    }

    public final long c() {
        return ((kk) this.k).k();
    }

    public final void d(int i, asm asmVar) {
        if (this.i) {
            p();
            this.i = false;
        }
        kk.i((kk) this.k, i, asmVar);
    }

    public final void e(bd bdVar) {
        if (this.i) {
            p();
            this.i = false;
        }
        kk.d((kk) this.k, (asm) bdVar.o());
    }

    public final long f() {
        return ((kk) this.k).l();
    }

    public final asm g(int i) {
        return ((kk) this.k).s(i);
    }

    public final String h() {
        return ((kk) this.k).u();
    }
}
