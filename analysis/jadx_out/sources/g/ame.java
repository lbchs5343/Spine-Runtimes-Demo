package g;

/* loaded from: classes.dex */
public final class ame extends eek {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f10464a = 0;

    /* renamed from: d, reason: collision with root package name */
    public final bvj f10465d;

    public ame(bvj bvjVar, gks gksVar, gsh gshVar, gsh gshVar2) {
        super(hay.ARITH, 2);
        this.f10465d = bvjVar;
        ax(gksVar);
        _an(gshVar);
        _an(gshVar2);
    }

    @Override // g.eek
    public final eek _o() {
        ame ameVar = new ame(this.f10465d, null, j(0).b(), j(1).b());
        am(ameVar);
        return ameVar;
    }

    @Override // g.eek
    public final boolean _p(eek eekVar) {
        if (this == eekVar) {
            return true;
        }
        if ((eekVar instanceof ame) && super._p(eekVar)) {
            ame ameVar = (ame) eekVar;
            if (this.f10465d == ameVar.f10465d) {
                gsh j = j(1);
                gsh j2 = ameVar.j(1);
                j.getClass();
                boolean z = j instanceof ekh;
                j2.getClass();
                if (z == (j2 instanceof ekh) && (!z || ((ekh) j).f15702a == ((ekh) j2).f15702a)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // g.eek
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(ack.d(this.ag));
        sb.append(": ARITH ");
        boolean g2 = this.l.g(csv.ARITH_ONEARG);
        bvj bvjVar = this.f10465d;
        if (g2) {
            sb.append(j(0));
            sb.append(' ');
            sb.append(bvjVar.b());
            sb.append("= ");
            sb.append(j(1));
        } else {
            gks gksVar = this.ai;
            if (gksVar != null) {
                sb.append(gksVar);
                sb.append(" = ");
            }
            sb.append(j(0));
            sb.append(' ');
            sb.append(bvjVar.b());
            sb.append(' ');
            sb.append(j(1));
        }
        al(sb);
        return sb.toString();
    }
}
