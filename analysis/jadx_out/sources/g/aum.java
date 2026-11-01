package g;

/* loaded from: classes.dex */
public final class aum implements erz, efi {

    /* renamed from: a, reason: collision with root package name */
    public static final aum f10876a = new aum();

    @Override // g.boj
    public final boj _w(efi efiVar) {
        return bfc.t(this, efiVar);
    }

    @Override // g.boj
    public final erz _x(efi efiVar) {
        bff.p(efiVar, "key");
        if (bff.n(this, efiVar)) {
            return this;
        }
        return null;
    }

    @Override // g.boj
    public final boj _y(boj bojVar) {
        bff.p(bojVar, "context");
        return bojVar == cgq.f12850a ? this : (boj) bojVar.c(this, new ctu(1));
    }

    @Override // g.boj
    public final Object c(Object obj, bto btoVar) {
        return btoVar.d(obj, this);
    }

    @Override // g.erz
    public final efi getKey() {
        return this;
    }
}
