package g;

/* loaded from: classes.dex */
public final class dus extends bgh {
    @Override // g.bgh
    public final boolean dq(Object... objArr) {
        dsk wn = this.f11513d.wn();
        if (wn == null) {
            return false;
        }
        ans b2 = wn.b(this.iw);
        if (b2 != null) {
            b2.f10531a.add(this);
            return false;
        }
        String str = this.iw;
        ans ansVar = new ans();
        if (wn.f14713a.containsKey(str) && wn.f14713a.get(str) != null) {
            return false;
        }
        wn.f14713a.put(str, ansVar);
        return false;
    }
}
