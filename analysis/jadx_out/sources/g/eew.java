package g;

/* loaded from: classes.dex */
public final class eew extends gif {

    /* renamed from: a, reason: collision with root package name */
    public final ayu f15409a;
    public final dkz y;

    public eew(ayu ayuVar, dkz dkzVar) {
        super(hay.CONSTRUCTOR, ayuVar.f11075c.size());
        this.f15409a = ayuVar;
        this.y = dkzVar;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public eew(hed hedVar, hdc hdcVar, ayu ayuVar) {
        super(hay.CONSTRUCTOR, hdcVar.aj.size() - 1);
        this.f15409a = ayuVar;
        this.y = !hdcVar.j(0).al() ? dkz.CONSTRUCTOR : !ayuVar.f11076d.equals(hedVar.am.ak) ? dkz.SUPER : ayuVar.f11077e.equals(hedVar.al.f11077e) ? dkz.SELF : dkz.THIS;
        int size = hdcVar.aj.size();
        for (int i = 1; i < size; i++) {
            _an(hdcVar.j(i));
        }
    }

    @Override // g.eek
    public final eek _o() {
        eew eewVar = new eew(this.f15409a, this.y);
        am(eewVar);
        return eewVar;
    }

    @Override // g.eek
    public final boolean _p(eek eekVar) {
        if (this == eekVar) {
            return true;
        }
        if ((eekVar instanceof eew) && super._p(eekVar)) {
            eew eewVar = (eew) eekVar;
            if (this.f15409a.equals(eewVar.f15409a) && this.y == eewVar.y) {
                return true;
            }
        }
        return false;
    }

    @Override // g.gif
    public final /* bridge */ /* synthetic */ gsh aa() {
        return null;
    }

    public final boolean ab() {
        return this.y == dkz.SUPER;
    }

    @Override // g.gif
    public final ayu ac() {
        return this.f15409a;
    }

    @Override // g.eek
    public final String toString() {
        return super.toString() + " call: " + this.f15409a + " type: " + this.y;
    }

    @Override // g.gif
    public final int z() {
        return 0;
    }
}
