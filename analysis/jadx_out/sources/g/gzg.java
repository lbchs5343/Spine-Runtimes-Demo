package g;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class gzg extends aog {

    /* renamed from: a, reason: collision with root package name */
    public final cwx f19049a;
    public final be bp;

    public gzg(cwx cwxVar, be beVar) {
        super(cwx.t.f10565d);
        Objects.requireNonNull(cwxVar);
        this.f19049a = cwxVar;
        Objects.requireNonNull(beVar);
        this.bp = beVar;
    }

    @Override // g.aog, g.cwx
    public final boolean b(Object obj) {
        if (!super.b(obj)) {
            return false;
        }
        gzg gzgVar = (gzg) obj;
        return this.bp == gzgVar.bp && this.f19049a.equals(gzgVar.f19049a);
    }

    @Override // g.cwx
    public final be bl() {
        return this.bp;
    }

    @Override // g.cwx
    public final boolean bm() {
        return true;
    }

    @Override // g.cwx
    public final cwx bo() {
        return this.f19049a;
    }

    @Override // g.aog, g.cwx
    public final String toString() {
        be beVar = be.UNBOUND;
        be beVar2 = this.bp;
        if (beVar2 == beVar) {
            return beVar2.b();
        }
        return beVar2.b() + this.f19049a;
    }
}
