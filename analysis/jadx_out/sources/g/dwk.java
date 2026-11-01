package g;

import java.util.Collection;
import java.util.Iterator;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final class dwk extends eek {

    /* renamed from: a, reason: collision with root package name */
    public eii f14942a;

    public dwk() {
        super(hay.TERNARY, 2);
    }

    public dwk(eii eiiVar, gks gksVar, gsh gshVar, gsh gshVar2) {
        this();
        ax(gksVar);
        if (gshVar.ar() && gshVar2.ap()) {
            this.f14942a = eii.d(eiiVar);
            _an(gshVar2);
            _an(gshVar);
        } else {
            this.f14942a = eiiVar;
            _an(gshVar);
            _an(gshVar2);
        }
        agx agxVar = new agx(22, this);
        super._be(agxVar);
        this.f14942a.g(agxVar);
    }

    @Override // g.eek
    public final void _be(Consumer consumer) {
        super._be(consumer);
        this.f14942a.g(consumer);
    }

    @Override // g.eek
    public final void _bs() {
        super._bs();
        Iterator it = this.f14942a.i().iterator();
        while (it.hasNext()) {
            eek eekVar = ((gks) it.next()).ae;
            if (eekVar != null) {
                eekVar._bs();
            }
        }
    }

    @Override // g.eek
    public final eek _o() {
        dwk dwkVar = new dwk();
        dwkVar.f14942a = this.f14942a;
        am(dwkVar);
        return dwkVar;
    }

    @Override // g.eek
    public final boolean _p(eek eekVar) {
        if (this == eekVar) {
            return true;
        }
        if ((eekVar instanceof dwk) && super._p(eekVar)) {
            return this.f14942a.equals(((dwk) eekVar).f14942a);
        }
        return false;
    }

    @Override // g.eek
    public final boolean f(gsh gshVar, gsh gshVar2) {
        if (super.f(gshVar, gshVar2)) {
            return true;
        }
        return this.f14942a.x(gshVar, gshVar2);
    }

    @Override // g.eek
    public final void h(Collection collection) {
        super.h(collection);
        collection.addAll(this.f14942a.i());
    }

    @Override // g.eek
    public final String toString() {
        return ack.d(this.ag) + ": TERNARY " + this.ai + " = (" + this.f14942a + ") ? " + j(0) + " : " + j(1);
    }

    public final void y() {
        eii f2 = eii.f(this.f14942a);
        this.f14942a = f2;
        if (f2.f15587a == ath.NOT) {
            this.f14942a = eii.d(f2);
            gsh j = j(0);
            e(0, j(1));
            e(1, j);
        }
    }
}
