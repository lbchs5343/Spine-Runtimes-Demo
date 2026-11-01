package g;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class azi implements eue {

    /* renamed from: a, reason: collision with root package name */
    public final eek f11108a;

    /* renamed from: b, reason: collision with root package name */
    public final fza f11109b;

    /* renamed from: f, reason: collision with root package name */
    public final fza f11110f;

    public azi(fza fzaVar, fza fzaVar2, eek eekVar) {
        this.f11109b = fzaVar;
        this.f11110f = fzaVar2;
        this.f11108a = eekVar;
    }

    @Override // g.eue
    public final String c() {
        return toString();
    }

    @Override // g.eue
    public final /* bridge */ /* synthetic */ fky d() {
        return acq.t;
    }

    @Override // g.eue
    public final /* synthetic */ boolean e() {
        return false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && azi.class == obj.getClass()) {
            azi aziVar = (azi) obj;
            if (this.f11109b.equals(aziVar.f11109b) && this.f11110f.equals(aziVar.f11110f)) {
                eek eekVar = aziVar.f11108a;
                eek eekVar2 = this.f11108a;
                if (eekVar2 == eekVar) {
                    eekVar2.getClass();
                } else if (!eekVar2._p(eekVar) || !Objects.equals(eekVar2.ai, eekVar.ai) || !Objects.equals(eekVar2.aj, eekVar.aj)) {
                }
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f11109b, this.f11110f, this.f11108a);
    }

    public final String toString() {
        return "EDGE_INSN: " + this.f11109b + "->" + this.f11110f + ' ' + this.f11108a;
    }
}
