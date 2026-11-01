package g;

/* loaded from: classes.dex */
public class hdc extends gif {

    /* renamed from: ab, reason: collision with root package name */
    public final eqp f19257ab;
    public final ayu ad;

    public hdc(ayu ayuVar, eqp eqpVar, int i) {
        super(hay.INVOKE, i);
        this.ad = ayuVar;
        this.f19257ab = eqpVar;
    }

    public hdc(ayu ayuVar, yu yuVar, eqp eqpVar, boolean z) {
        this(ayuVar, yuVar, eqpVar, eqpVar != eqp.STATIC, z);
    }

    public hdc(ayu ayuVar, yu yuVar, eqp eqpVar, boolean z, boolean z2) {
        super(hay.INVOKE, ayuVar.f11075c.size() + (z ? 1 : 0));
        this.ad = ayuVar;
        this.f19257ab = eqpVar;
        int m = z2 ? yuVar.m(0) : 0;
        if (z) {
            int m2 = z2 ? m : yuVar.m(m);
            cwx cwxVar = ayuVar.f11076d.f20149d;
            dba dbaVar = gsh.ad;
            _an(new gks(m2, cwxVar));
            m++;
        }
        for (cwx cwxVar2 : ayuVar.f11075c) {
            int m3 = z2 ? m : yuVar.m(m);
            dba dbaVar2 = gsh.ad;
            _an(new gks(m3, cwxVar2));
            m += cwxVar2.bi();
        }
        int k = yuVar.k();
        if (k != -1) {
            cwx cwxVar3 = ayuVar.f11079g;
            dba dbaVar3 = gsh.ad;
            ax(new gks(k, cwxVar3));
        }
    }

    @Override // g.eek
    public eek _o() {
        hdc hdcVar = new hdc(this.ad, this.f19257ab, this.aj.size());
        am(hdcVar);
        return hdcVar;
    }

    @Override // g.eek
    public boolean _p(eek eekVar) {
        if (this == eekVar) {
            return true;
        }
        if ((eekVar instanceof hdc) && super._p(eekVar)) {
            hdc hdcVar = (hdc) eekVar;
            if (this.f19257ab == hdcVar.f19257ab && this.ad.equals(hdcVar.ad)) {
                return true;
            }
        }
        return false;
    }

    @Override // g.gif
    public gsh aa() {
        if (this.f19257ab == eqp.STATIC || this.aj.size() <= 0) {
            return null;
        }
        return j(0);
    }

    @Override // g.gif
    public final ayu ac() {
        return this.ad;
    }

    @Override // g.eek
    public String toString() {
        return ao() + " " + this.f19257ab + " call: " + this.ad + an();
    }

    @Override // g.gif
    public int z() {
        return this.f19257ab == eqp.STATIC ? 0 : 1;
    }
}
