package g;

/* loaded from: classes.dex */
public abstract class bkg extends cpk {
    public long l;
    public boolean m;
    public fbz n;

    public abstract Thread k();

    public final void o() {
        long j = this.l - 4294967296L;
        this.l = j;
        if (j <= 0 && this.m) {
            shutdown();
        }
    }

    public void p(long j, ghe gheVar) {
        bzr.t.e(j, gheVar);
    }

    public final void q(fpm fpmVar) {
        fbz fbzVar = this.n;
        if (fbzVar == null) {
            fbzVar = new fbz();
            this.n = fbzVar;
        }
        fbzVar.addLast(fpmVar);
    }

    public final boolean r() {
        fbz fbzVar = this.n;
        if (fbzVar == null) {
            return false;
        }
        fpm fpmVar = (fpm) (fbzVar.isEmpty() ? null : fbzVar.removeFirst());
        if (fpmVar == null) {
            return false;
        }
        fpmVar.run();
        return true;
    }

    public final void s(boolean z) {
        this.l = (z ? 4294967296L : 1L) + this.l;
        if (z) {
            return;
        }
        this.m = true;
    }

    public abstract void shutdown();
}
