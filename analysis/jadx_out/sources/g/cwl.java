package g;

import java.util.Iterator;

/* loaded from: classes.dex */
public final class cwl extends euj implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13632a;

    /* renamed from: b, reason: collision with root package name */
    public frv f13633b;

    /* renamed from: c, reason: collision with root package name */
    public frv f13634c;

    public cwl(frv frvVar, frv frvVar2, int i) {
        this.f13632a = i;
        this.f13633b = frvVar2;
        this.f13634c = frvVar;
    }

    @Override // g.euj
    public final void d(frv frvVar) {
        frv frvVar2;
        frv frvVar3 = null;
        if (this.f13633b == frvVar && frvVar == this.f13634c) {
            this.f13634c = null;
            this.f13633b = null;
        }
        frv frvVar4 = this.f13633b;
        if (frvVar4 == frvVar) {
            switch (this.f13632a) {
                case 0:
                    frvVar2 = frvVar4.f17313b;
                    break;
                default:
                    frvVar2 = frvVar4.f17312a;
                    break;
            }
            this.f13633b = frvVar2;
        }
        frv frvVar5 = this.f13634c;
        if (frvVar5 == frvVar) {
            frv frvVar6 = this.f13633b;
            if (frvVar5 != frvVar6 && frvVar6 != null) {
                frvVar3 = e(frvVar5);
            }
            this.f13634c = frvVar3;
        }
    }

    public final frv e(frv frvVar) {
        switch (this.f13632a) {
            case 0:
                return frvVar.f17312a;
            default:
                return frvVar.f17313b;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f13634c != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        frv frvVar = this.f13634c;
        frv frvVar2 = this.f13633b;
        this.f13634c = (frvVar == frvVar2 || frvVar2 == null) ? null : e(frvVar);
        return frvVar;
    }
}
