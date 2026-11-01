package g;

import java.util.List;

/* loaded from: classes.dex */
public final class bzm extends dog {
    public Object[] _bx;

    /* renamed from: a, reason: collision with root package name */
    public final int f12513a;

    /* renamed from: ab, reason: collision with root package name */
    public fza[] f12514ab;

    /* renamed from: d, reason: collision with root package name */
    public bx f12515d;
    public int x;
    public final boolean y;
    public fza z;

    public bzm(gsh gshVar, int i, boolean z) {
        super(hay.SWITCH, 1);
        _an(gshVar);
        this.f12513a = i;
        this.y = z;
    }

    @Override // g.eek
    public final eek _o() {
        bzm bzmVar = new bzm(j(0), this.f12513a, this.y);
        bzmVar.f12515d = this.f12515d;
        bzmVar.x = this.x;
        bzmVar.f12514ab = this.f12514ab;
        bzmVar.z = this.z;
        am(bzmVar);
        return bzmVar;
    }

    @Override // g.eek
    public final boolean _p(eek eekVar) {
        if (this == eekVar) {
            return true;
        }
        if (!(eekVar instanceof bzm) || !super._p(eekVar)) {
            return false;
        }
        bzm bzmVar = (bzm) eekVar;
        return this.f12513a == bzmVar.f12513a && this.y == bzmVar.y;
    }

    @Override // g.dog
    public final void aa(fza fzaVar, fza fzaVar2) {
        fza[] fzaVarArr = this.f12514ab;
        if (fzaVarArr == null) {
            return;
        }
        int length = fzaVarArr.length;
        for (int i = 0; i < length; i++) {
            fza[] fzaVarArr2 = this.f12514ab;
            if (fzaVarArr2[i] == fzaVar) {
                fzaVarArr2[i] = fzaVar2;
            }
        }
        if (this.z == fzaVar) {
            this.z = fzaVar2;
        }
    }

    @Override // g.dog
    public final void ac(fza fzaVar) {
        bx bxVar = this.f12515d;
        if (bxVar == null) {
            throw new gck("Switch data not yet attached");
        }
        List list = fzaVar.f17684d;
        int[] iArr = bxVar.f12357b;
        int length = iArr.length;
        this.f12514ab = new fza[length];
        for (int i = 0; i < length; i++) {
            this.f12514ab[i] = ffb.bo(iArr[i], list);
        }
        this.z = ffb.bo(this.x, list);
    }

    public final bx ad() {
        bx bxVar = this.f12515d;
        if (bxVar != null) {
            return bxVar;
        }
        throw new gck("Switch data not yet attached");
    }

    public final void ae(int i, Object obj) {
        if (this._bx == null) {
            int[] iArr = ad().f12358c;
            int length = iArr.length;
            Object[] objArr = new Object[length];
            for (int i2 = 0; i2 < length; i2++) {
                objArr[i2] = Integer.valueOf(iArr[i2]);
            }
            this._bx = objArr;
        }
        this._bx[i] = obj;
    }

    public final Object af(int i) {
        Object[] objArr = this._bx;
        return objArr != null ? objArr[i] : Integer.valueOf(ad().f12358c[i]);
    }

    @Override // g.eek
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(ao());
        bx bxVar = this.f12515d;
        if (bxVar == null) {
            sb.append("no payload");
        } else {
            int i = bxVar.f12356a;
            int[] iArr = bxVar.f12358c;
            int i2 = 0;
            if (this.f12514ab != null) {
                while (i2 < i) {
                    sb.append("\n case ");
                    sb.append(iArr[i2]);
                    sb.append(": goto ");
                    sb.append(this.f12514ab[i2]);
                    i2++;
                }
                if (this.x != -1) {
                    sb.append("\n default: goto ");
                    sb.append(this.z);
                }
            } else {
                int[] iArr2 = bxVar.f12357b;
                while (i2 < i) {
                    sb.append("\n case ");
                    sb.append(iArr[i2]);
                    sb.append(": goto ");
                    sb.append(ack.d(iArr2[i2]));
                    i2++;
                }
                if (this.x != -1) {
                    sb.append("\n default: goto ");
                    sb.append(ack.d(this.x));
                }
            }
        }
        al(sb);
        return sb.toString();
    }
}
