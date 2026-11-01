package g;

/* loaded from: classes.dex */
public abstract class ebh extends ccm implements gut {
    public final void bs(String str) {
        dba dbaVar = dcj.f13958a;
        dcj dcjVar = a().p;
        synchronized (dcjVar) {
            dcjVar.f13960c.add(this);
            dcj.f13958a.k(dcj.e(this, str));
        }
        bnz.b(this, afa.WARN, str);
        w(csv.INCONSISTENT_CODE);
    }

    public final void bt(String str, Throwable th) {
        StringBuilder o = awf.o(str);
        o.append(a().i.x);
        o.append(evh.c(th));
        bnz.b(this, afa.WARN, o.toString());
    }

    public final void bu(String str) {
        bnz.b(this, afa.WARN, str);
    }

    public final void bv(String str) {
        bnz.b(this, afa.INFO, str);
    }

    public final void bw(String str) {
        bnz.b(this, afa.DEBUG, str);
    }

    public final boolean bx(afa afaVar) {
        return afaVar.ordinal() <= a().i.aq.ordinal();
    }
}
