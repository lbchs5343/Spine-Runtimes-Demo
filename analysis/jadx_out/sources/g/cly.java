package g;

/* loaded from: classes.dex */
public final class cly extends gsh {

    /* renamed from: a, reason: collision with root package name */
    public final eek f13104a;

    public cly(eek eekVar) {
        gks gksVar = eekVar.ai;
        this.h = gksVar != null ? gksVar.j() : cwx.ad;
        this.f13104a = eekVar;
    }

    @Override // g.gsh
    public final void _bb(eek eekVar) {
        if (eekVar != this.f13104a) {
            this.ae = eekVar;
        } else {
            throw new gck("Can't wrap instruction info itself: " + eekVar);
        }
    }

    @Override // g.gsh
    public final gsh b() {
        cly clyVar = new cly(this.f13104a._o());
        clyVar.h = this.h;
        clyVar.s(this);
        clyVar._bb(this.ae);
        return clyVar;
    }

    @Override // g.gsh
    public final String d() {
        eek eekVar = this.f13104a;
        if (eekVar.ah == hay.CONST_STR) {
            return awf.ad(new StringBuilder("(\""), ((epw) eekVar).f15951a, "\")");
        }
        return "(wrap:" + this.h + ":" + eekVar.ah + ')';
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cly)) {
            return false;
        }
        eek eekVar = ((cly) obj).f13104a;
        eek eekVar2 = this.f13104a;
        if (!eekVar2._p(eekVar)) {
            return false;
        }
        int size = eekVar2.aj.size();
        for (int i = 0; i < size; i++) {
            if (!eekVar2.j(i).equals(eekVar.j(i))) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        return this.f13104a.hashCode();
    }

    public final String toString() {
        eek eekVar = this.f13104a;
        if (eekVar.ah == hay.CONST_STR) {
            return awf.ad(new StringBuilder("(\""), ((epw) eekVar).f15951a, "\")");
        }
        return "(wrap:" + this.h + ":" + eekVar + ')';
    }
}
