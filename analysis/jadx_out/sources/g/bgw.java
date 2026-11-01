package g;

import java.util.List;

/* loaded from: classes.dex */
public final class bgw extends dfy {

    /* renamed from: a, reason: collision with root package name */
    public static final gnh f11552a;

    /* renamed from: d, reason: collision with root package name */
    public static final gnh f11553d;
    public fza _br;
    public fza x;
    public ges y;

    static {
        bjt bjtVar = bjt.INT;
        bjt bjtVar2 = bjt.BYTE;
        bjt bjtVar3 = bjt.SHORT;
        bjt bjtVar4 = bjt.CHAR;
        f11552a = new gnh(new bjt[]{bjtVar, bjt.BOOLEAN, bjt.OBJECT, bjt.ARRAY, bjtVar2, bjtVar3, bjtVar4});
        f11553d = new gnh(new bjt[]{bjtVar, bjtVar2, bjtVar3, bjtVar4});
    }

    public bgw(ges gesVar, int i) {
        super(hay.IF, i, 2);
        this.y = gesVar;
    }

    public bgw(ges gesVar, gsh gshVar, ekh ekhVar) {
        this(gesVar, -1);
        _an(gshVar);
        _an(ekhVar);
    }

    public bgw(yu yuVar, ges gesVar) {
        super(hay.IF, yuVar.getTarget(), 2);
        this.y = gesVar;
        gnh gnhVar = (gesVar == ges.EQ || gesVar == ges.NE) ? f11552a : f11553d;
        dba dbaVar = gsh.ad;
        _an(new gks(yuVar.m(0), gnhVar));
        if (yuVar.i() == 1) {
            _an(gsh.ag(0L, gnhVar));
        } else {
            _an(new gks(yuVar.m(1), gnhVar));
        }
    }

    @Override // g.dfy, g.eek
    public final eek _o() {
        bgw bgwVar = new bgw(this.y, this.ae);
        bgwVar._br = this._br;
        bgwVar.x = this.x;
        am(bgwVar);
        return bgwVar;
    }

    @Override // g.eek
    public final boolean _p(eek eekVar) {
        if (this == eekVar) {
            return true;
        }
        return (eekVar instanceof bgw) && super._p(eekVar) && this.y == ((bgw) eekVar).y;
    }

    @Override // g.dog
    public final void aa(fza fzaVar, fza fzaVar2) {
        if (this._br == fzaVar) {
            this._br = fzaVar2;
        }
        if (this.x == fzaVar) {
            this.x = fzaVar2;
        }
    }

    public final void ab() {
        if (this.y == ges.NE && j(1).ar()) {
            ges gesVar = ges.EQ;
            gsh j = j(0);
            ekh ekhVar = new ekh(1L, cwx.at);
            this.y = gesVar;
            e(0, j);
            e(1, ekhVar);
        }
    }

    @Override // g.dog
    public final void ac(fza fzaVar) {
        List list = fzaVar.f17684d;
        this._br = ffb.bo(this.ae, list);
        if (list.size() == 1) {
            this.x = this._br;
        } else {
            this.x = ffb.r(list, this._br);
        }
    }

    @Override // g.dfy
    public final int ad() {
        fza fzaVar = this._br;
        return fzaVar == null ? this.ae : fzaVar.y;
    }

    @Override // g.dfy, g.eek
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(ack.d(this.ag));
        sb.append(": ");
        sb.append(this.ah + "  ");
        sb.append(j(0));
        sb.append(' ');
        sb.append(this.y.b());
        sb.append(' ');
        sb.append(j(1));
        sb.append("  -> ");
        Object obj = this._br;
        if (obj == null) {
            obj = ack.d(this.ae);
        }
        sb.append(obj);
        sb.append(an());
        return sb.toString();
    }

    public final void z() {
        this.y = this.y.c();
        fza fzaVar = this._br;
        this._br = this.x;
        this.x = fzaVar;
    }
}
