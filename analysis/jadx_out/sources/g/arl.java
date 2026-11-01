package g;

/* loaded from: classes.dex */
public final class arl extends hdc {
    public ecx _bm;
    public boolean _bn;

    /* renamed from: a, reason: collision with root package name */
    public ayu f10719a;

    /* renamed from: d, reason: collision with root package name */
    public gif f10720d;
    public boolean y;

    @Override // g.hdc, g.eek
    public final eek _o() {
        arl arlVar = new arl(this.ad, this.f19257ab, this.aj.size());
        am(arlVar);
        arlVar.f10719a = this.f10719a;
        arlVar._bm = this._bm;
        arlVar.f10720d = this.f10720d;
        arlVar.y = this.y;
        arlVar._bn = this._bn;
        return arlVar;
    }

    @Override // g.hdc, g.eek
    public final boolean _p(eek eekVar) {
        if (this == eekVar) {
            return true;
        }
        if (!(eekVar instanceof arl) || !super._p(eekVar)) {
            return false;
        }
        arl arlVar = (arl) eekVar;
        return this._bm == arlVar._bm && this.f10719a.equals(arlVar.f10719a) && this.f10720d._p(arlVar.f10720d) && this.y == arlVar.y && this._bn == arlVar._bn;
    }

    @Override // g.hdc, g.gif
    public final gsh aa() {
        return null;
    }

    @Override // g.hdc, g.eek
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(ack.d(this.ag));
        sb.append(": INVOKE_CUSTOM ");
        gks gksVar = this.ai;
        if (gksVar != null) {
            sb.append(gksVar);
            sb.append(" = ");
        }
        at(sb);
        al(sb);
        sb.append("\n handle type: ");
        sb.append(this._bm);
        sb.append("\n lambda: ");
        sb.append(this.f10719a);
        sb.append("\n call insn: ");
        sb.append(this.f10720d);
        return sb.toString();
    }

    @Override // g.hdc, g.gif
    public final int z() {
        return 0;
    }
}
