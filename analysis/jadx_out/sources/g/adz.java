package g;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class adz extends eek {

    /* renamed from: a, reason: collision with root package name */
    public Object f10070a;

    public adz(hay hayVar, Object obj, int i) {
        super(hayVar, i);
        this.f10070a = obj;
    }

    @Override // g.eek
    public final eek _o() {
        adz adzVar = new adz(this.ah, this.f10070a, this.aj.size());
        am(adzVar);
        return adzVar;
    }

    @Override // g.eek
    public final boolean _p(eek eekVar) {
        if (this == eekVar) {
            return true;
        }
        if ((eekVar instanceof adz) && super._p(eekVar)) {
            return Objects.equals(this.f10070a, ((adz) eekVar).f10070a);
        }
        return false;
    }

    @Override // g.eek
    public final String toString() {
        int[] iArr = grd.f18629a;
        hay hayVar = this.ah;
        int i = iArr[hayVar.ordinal()];
        if (i != 1 && i != 2) {
            return super.toString() + ' ' + ack.j(this.f10070a);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(ack.d(this.ag));
        sb.append(": ");
        sb.append(hayVar);
        sb.append(' ');
        gks gksVar = this.ai;
        if (gksVar != null) {
            sb.append(gksVar);
            sb.append(" = ");
        }
        sb.append('(');
        sb.append(ack.j(this.f10070a));
        sb.append(") ");
        sb.append(evh.h(", ", this.aj));
        return sb.toString();
    }
}
