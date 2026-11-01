package g;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Set;

/* loaded from: classes.dex */
public final class ggu {

    /* renamed from: a, reason: collision with root package name */
    public cpd f18125a;

    /* renamed from: b, reason: collision with root package name */
    public final Set f18126b;

    /* renamed from: c, reason: collision with root package name */
    public final eau f18127c;

    /* renamed from: d, reason: collision with root package name */
    public final cmv f18128d;

    /* renamed from: e, reason: collision with root package name */
    public final HashMap f18129e = new HashMap();

    /* renamed from: f, reason: collision with root package name */
    public boolean f18130f;

    /* renamed from: g, reason: collision with root package name */
    public final gqc f18131g;
    public final int h;
    public fce i;

    public ggu(cmv cmvVar, gqc gqcVar, int i, Set set, eau eauVar) {
        this.f18128d = cmvVar;
        this.f18131g = gqcVar;
        this.h = i;
        this.f18126b = set;
        this.f18125a = new cpd(i);
        eau eauVar2 = eau.f15207a;
        String str = evh.f16225a;
        this.f18127c = eauVar == null ? eauVar2 : eauVar;
    }

    public final void j(int i, cqz cqzVar) {
        fce fceVar = this.i;
        fceVar.x[i] = this.f18125a.d(cqzVar);
    }

    public final void k(int i, int i2) {
        fce fceVar = this.i;
        fceVar.x[i] = this.h + i2;
    }

    public final void l(int i, int i2) {
        fce fceVar = this.i;
        fceVar.x[i2] = this.f18125a.f13265a - i;
    }

    public final cqz m() {
        gkr ac = this.i.ac();
        ac.k(this.i.w);
        gqc gqcVar = (gqc) ac.f18322b;
        gqcVar.at(2);
        ac.k(gqcVar.ai());
        gqcVar.at(2);
        String r = ac.r(gqcVar.ai());
        return (r.equals("J") || r.equals("D")) ? cqz.WIDE : cqz.NARROW;
    }

    public final void n(int i) {
        fce fceVar = this.i;
        cpd cpdVar = this.f18125a;
        int i2 = cpdVar.f13265a;
        cpdVar.f13265a = i2 - 1;
        fceVar.x[i] = i2;
    }

    public final void o() {
        fce fceVar = this.i;
        fceVar.x[0] = this.f18125a.d(cqz.WIDE);
    }

    public final void p(int i, cqz cqzVar) {
        cpd cpdVar = this.f18125a;
        int i2 = cpdVar.f13265a - i;
        cqz[] cqzVarArr = cpdVar.f13266b;
        System.arraycopy(cqzVarArr, i2, cqzVarArr, i2 + 1, i);
        cqzVarArr[i2] = cqzVar;
        cpdVar.f13265a++;
    }

    public final void q(int i) {
        Integer valueOf = Integer.valueOf(i);
        HashMap hashMap = this.f18129e;
        if (hashMap.containsKey(valueOf)) {
            return;
        }
        cpd cpdVar = this.f18125a;
        int i2 = cpdVar.f13265a;
        cqz[] cqzVarArr = cpdVar.f13266b;
        hashMap.put(valueOf, new cpd(i2, (cqz[]) Arrays.copyOf(cqzVarArr, cqzVarArr.length)));
    }

    public final void r(int i) {
        fce fceVar = this.i;
        int i2 = fceVar.f16553ab + i;
        fceVar.s = i2;
        q(i2);
    }

    public final void s() {
        fce fceVar = this.i;
        fceVar.x[0] = this.f18125a.d(cqz.NARROW);
    }
}
