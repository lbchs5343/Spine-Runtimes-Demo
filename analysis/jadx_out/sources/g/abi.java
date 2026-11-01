package g;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class abi extends eek {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f9921a;

    public abi(int i) {
        super(hay.PHI, i);
        this.f9921a = new ArrayList(i);
    }

    @Override // g.eek
    public final gsh _am(int i) {
        gks gksVar = (gks) super._am(0);
        this.f9921a.remove(0);
        gksVar.f18326a.k();
        return gksVar;
    }

    @Override // g.eek
    public final void _an(gsh gshVar) {
        throw new gck("Direct addArg is forbidden for PHI insn, bindArg must be used");
    }

    public final void _ax(gks gksVar) {
        int aq = aq(gksVar);
        if (aq == -1) {
            return;
        }
        gks gksVar2 = (gks) super._am(aq);
        this.f9921a.remove(aq);
        gksVar2.f18326a.k();
    }

    public final gks _ay(int i) {
        return (gks) super.j(i);
    }

    public final void _az(gks gksVar, fza fzaVar) {
        ArrayList arrayList = this.f9921a;
        if (arrayList.contains(fzaVar)) {
            throw new gck("Duplicate predecessors in PHI insn: " + fzaVar + ", " + this);
        }
        if (fzaVar != null) {
            super._an(gksVar);
            arrayList.add(fzaVar);
        } else {
            throw new gck("Null bind block in PHI insn: " + this);
        }
    }

    @Override // g.eek
    public final eek _o() {
        abi abiVar = new abi(this.aj.size());
        am(abiVar);
        return abiVar;
    }

    @Override // g.eek
    public final void e(int i, gsh gshVar) {
        throw new gck("Direct setArg is forbidden for PHI insn, bindArg must be used");
    }

    @Override // g.eek
    public final boolean f(gsh gshVar, gsh gshVar2) {
        int aq;
        if (!(gshVar instanceof gks) || !(gshVar2 instanceof gks) || (aq = aq(gshVar)) == -1) {
            return false;
        }
        ((gks) gshVar2).f18326a.p(this);
        super.e(aq, gshVar2);
        fpd.h(null, gshVar);
        ((gks) gshVar).f18326a.k();
        return true;
    }

    @Override // g.eek
    public final gsh j(int i) {
        return (gks) super.j(i);
    }

    @Override // g.eek
    public final String toString() {
        return ao() + " binds: " + this.f9921a + an();
    }

    public final gks y(fza fzaVar) {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f9921a;
            if (i >= arrayList.size()) {
                return null;
            }
            if (arrayList.get(i) == fzaVar) {
                return (gks) super.j(i);
            }
            i++;
        }
    }
}
