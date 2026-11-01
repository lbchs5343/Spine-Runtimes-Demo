package g;

import java.util.Iterator;

/* loaded from: classes.dex */
public final class dgv extends euj implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ cfx f14151a;

    /* renamed from: b, reason: collision with root package name */
    public frv f14152b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f14153c = true;

    public dgv(cfx cfxVar) {
        this.f14151a = cfxVar;
    }

    @Override // g.euj
    public final void d(frv frvVar) {
        frv frvVar2 = this.f14152b;
        if (frvVar == frvVar2) {
            frv frvVar3 = frvVar2.f17313b;
            this.f14152b = frvVar3;
            this.f14153c = frvVar3 == null;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f14153c) {
            return this.f14151a.f12804f != null;
        }
        frv frvVar = this.f14152b;
        return (frvVar == null || frvVar.f17312a == null) ? false : true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f14153c) {
            this.f14153c = false;
            this.f14152b = this.f14151a.f12804f;
        } else {
            frv frvVar = this.f14152b;
            this.f14152b = frvVar != null ? frvVar.f17312a : null;
        }
        return this.f14152b;
    }
}
