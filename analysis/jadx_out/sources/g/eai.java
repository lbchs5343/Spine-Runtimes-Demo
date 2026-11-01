package g;

/* loaded from: classes.dex */
public final class eai extends hdc {

    /* renamed from: a, reason: collision with root package name */
    public final fw f15184a;
    public final ayu y;

    public eai(ayu ayuVar, int i, fw fwVar, ayu ayuVar2) {
        super(ayuVar, eqp.POLYMORPHIC, i);
        this.f15184a = fwVar;
        this.y = ayuVar2;
    }

    public eai(ayu ayuVar, yu yuVar, fw fwVar, ayu ayuVar2, boolean z) {
        super(ayuVar, yuVar, eqp.POLYMORPHIC, true, z);
        this.f15184a = fwVar;
        this.y = ayuVar2;
    }

    @Override // g.hdc, g.eek
    public final eek _o() {
        eai eaiVar = new eai(this.ad, this.aj.size(), this.f15184a, this.y);
        am(eaiVar);
        return eaiVar;
    }

    @Override // g.hdc, g.eek
    public final boolean _p(eek eekVar) {
        if (this == eekVar) {
            return true;
        }
        if ((eekVar instanceof eai) && super._p(eekVar)) {
            return this.f15184a.equals(((eai) eekVar).f15184a);
        }
        return false;
    }

    @Override // g.hdc, g.eek
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(ack.d(this.ag));
        sb.append(": INVOKE_POLYMORPHIC ");
        gks gksVar = this.ai;
        if (gksVar != null) {
            sb.append(gksVar);
            sb.append(" = ");
        }
        if (!at(sb)) {
            sb.append('\n');
        }
        al(sb);
        sb.append(" base: ");
        sb.append(this.y);
        sb.append('\n');
        sb.append(" proto: ");
        sb.append(this.f15184a);
        sb.append('\n');
        return sb.toString();
    }
}
