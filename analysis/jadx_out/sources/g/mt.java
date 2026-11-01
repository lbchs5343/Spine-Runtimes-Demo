package g;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class mt extends eek {
    public final int _ak;
    public final int _al;

    /* renamed from: g, reason: collision with root package name */
    public final Object f19675g;
    public gnh i;
    public static final gnh _ah = new gnh(new bjt[]{bjt.BYTE, bjt.BOOLEAN});
    public static final gnh _aj = new gnh(new bjt[]{bjt.SHORT, bjt.CHAR});
    public static final gnh _ai = new gnh(new bjt[]{bjt.INT, bjt.FLOAT});

    /* renamed from: a, reason: collision with root package name */
    public static final gnh f19674a = new gnh(new bjt[]{bjt.LONG, bjt.DOUBLE});

    public mt(Object obj, int i, int i2) {
        super(hay.FILL_ARRAY_DATA, 0);
        gnh gnhVar;
        this.f19675g = obj;
        this._al = i;
        this._ak = i2;
        if (i2 == 0 || i2 == 1) {
            gnhVar = _ah;
        } else if (i2 == 2) {
            gnhVar = _aj;
        } else if (i2 == 4) {
            gnhVar = _ai;
        } else {
            if (i2 != 8) {
                throw new gck(awf.ac(i2, "Unknown array element width: "));
            }
            gnhVar = f19674a;
        }
        this.i = gnhVar;
    }

    @Override // g.eek
    public final eek _o() {
        mt mtVar = new mt(this.f19675g, this._al, this._ak);
        mtVar.i = this.i;
        am(mtVar);
        return mtVar;
    }

    @Override // g.eek
    public final boolean _p(eek eekVar) {
        if (this == eekVar) {
            return true;
        }
        if (!(eekVar instanceof mt) || !super._p(eekVar)) {
            return false;
        }
        mt mtVar = (mt) eekVar;
        return this.i.equals(mtVar.i) && this.f19675g == mtVar.f19675g;
    }

    @Override // g.eek
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(", data: ");
        Object obj = this.f19675g;
        int i = this._ak;
        sb.append(i != 1 ? i != 2 ? i != 4 ? i != 8 ? "?" : Arrays.toString((long[]) obj) : Arrays.toString((int[]) obj) : Arrays.toString((short[]) obj) : Arrays.toString((byte[]) obj));
        return sb.toString();
    }
}
