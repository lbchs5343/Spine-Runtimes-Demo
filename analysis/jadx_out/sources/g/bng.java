package g;

/* loaded from: classes.dex */
public final class bng {

    /* renamed from: a, reason: collision with root package name */
    public final bcp f11868a = new bcp(0);

    /* renamed from: b, reason: collision with root package name */
    public final asv f11869b = new asv();

    public final void c(androidx.recyclerview.widget.p pVar) {
        asv asvVar = this.f11869b;
        int f2 = asvVar.f() - 1;
        while (true) {
            if (f2 < 0) {
                break;
            }
            if (pVar == asvVar.j(f2)) {
                Object[] objArr = asvVar.f10773a;
                Object obj = objArr[f2];
                Object obj2 = dyd.r;
                if (obj != obj2) {
                    objArr[f2] = obj2;
                    asvVar.f10775c = true;
                }
            } else {
                f2--;
            }
        }
        kr krVar = (kr) this.f11868a.remove(pVar);
        if (krVar != null) {
            krVar.f19562b = 0;
            krVar.f19563c = null;
            krVar.f19564d = null;
            kr.f19561a.c(krVar);
        }
    }

    public final void d(androidx.recyclerview.widget.p pVar, geq geqVar) {
        bcp bcpVar = this.f11868a;
        kr krVar = (kr) bcpVar.get(pVar);
        if (krVar == null) {
            krVar = kr.e();
            bcpVar.put(pVar, krVar);
        }
        krVar.f19564d = geqVar;
        krVar.f19562b |= 8;
    }

    public final geq e(androidx.recyclerview.widget.p pVar, int i) {
        kr krVar;
        geq geqVar;
        bcp bcpVar = this.f11868a;
        int k = bcpVar.k(pVar);
        if (k >= 0 && (krVar = (kr) bcpVar.o(k)) != null) {
            int i2 = krVar.f19562b;
            if ((i2 & i) != 0) {
                int i3 = i2 & (~i);
                krVar.f19562b = i3;
                if (i == 4) {
                    geqVar = krVar.f19563c;
                } else {
                    if (i != 8) {
                        throw new IllegalArgumentException("Must provide flag PRE or POST");
                    }
                    geqVar = krVar.f19564d;
                }
                if ((i3 & 12) == 0) {
                    bcpVar.r(k);
                    krVar.f19562b = 0;
                    krVar.f19563c = null;
                    krVar.f19564d = null;
                    kr.f19561a.c(krVar);
                }
                return geqVar;
            }
        }
        return null;
    }

    public final void f(androidx.recyclerview.widget.p pVar) {
        kr krVar = (kr) this.f11868a.get(pVar);
        if (krVar == null) {
            return;
        }
        krVar.f19562b &= -2;
    }
}
