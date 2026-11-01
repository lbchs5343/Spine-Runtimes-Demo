package g;

import j$.util.Objects;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class og extends eek {
    public mt _ao;

    /* renamed from: a, reason: collision with root package name */
    public final int f19756a;

    public og(int i, gsh gshVar) {
        super(hay.FILL_ARRAY, 1);
        this.f19756a = i;
        _an(gshVar);
    }

    public final List _ap(cwx cwxVar) {
        mt mtVar = this._ao;
        mtVar.getClass();
        ArrayList arrayList = new ArrayList(mtVar._al);
        Object obj = mtVar.f19675g;
        int i = mtVar._ak;
        int i2 = 0;
        if (i == 1) {
            int length = ((byte[]) obj).length;
            while (i2 < length) {
                arrayList.add(gsh.ag(r2[i2], cwxVar));
                i2++;
            }
        } else if (i == 2) {
            int length2 = ((short[]) obj).length;
            while (i2 < length2) {
                arrayList.add(gsh.ag(r2[i2], cwxVar));
                i2++;
            }
        } else if (i == 4) {
            int length3 = ((int[]) obj).length;
            while (i2 < length3) {
                arrayList.add(gsh.ag(r2[i2], cwxVar));
                i2++;
            }
        } else {
            if (i != 8) {
                throw new gck("Unknown type: " + obj.getClass() + ", expected: " + cwxVar);
            }
            long[] jArr = (long[]) obj;
            int length4 = jArr.length;
            while (i2 < length4) {
                arrayList.add(gsh.ag(jArr[i2], cwxVar));
                i2++;
            }
        }
        return arrayList;
    }

    @Override // g.eek
    public final eek _o() {
        og ogVar = new og(this.f19756a, j(0));
        am(ogVar);
        return ogVar;
    }

    @Override // g.eek
    public final boolean _p(eek eekVar) {
        if (this == eekVar) {
            return true;
        }
        if ((eekVar instanceof og) && super._p(eekVar)) {
            return Objects.equals(this._ao, ((og) eekVar)._ao);
        }
        return false;
    }

    @Override // g.eek
    public final String toString() {
        return super.toString() + ", data: " + this._ao;
    }
}
