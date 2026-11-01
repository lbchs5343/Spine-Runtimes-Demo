package g;

/* loaded from: classes3.dex */
public final class wo implements ciw {

    /* renamed from: a, reason: collision with root package name */
    public final cir f20228a;

    /* renamed from: b, reason: collision with root package name */
    public final czj f20229b;

    /* renamed from: c, reason: collision with root package name */
    public final gnz f20230c;

    public wo(czj czjVar, gnz gnzVar, cir cirVar) {
        this.f20229b = czjVar;
        this.f20230c = gnzVar;
        this.f20228a = cirVar;
    }

    @Override // g.ciw
    public final boolean d(cys cysVar, cys cysVar2) {
        this.f20229b.getClass();
        return cysVar.zzc.equals(cysVar2.zzc);
    }

    @Override // g.ciw
    public final void e(Object obj, aoy aoyVar) {
        this.f20230c.getClass();
        awf.e(obj);
        throw null;
    }

    @Override // g.ciw
    public final void f(Object obj) {
        this.f20229b.getClass();
        ((cys) obj).zzc.f16901c = false;
        throw awf.j(obj);
    }

    @Override // g.ciw
    public final void g(Object obj, byte[] bArr, int i, int i2, fks fksVar) {
        cys cysVar = (cys) obj;
        if (cysVar.zzc == fjx.f16899a) {
            cysVar.zzc = fjx.g();
        }
        throw awf.j(obj);
    }

    @Override // g.ciw
    public final boolean h(Object obj) {
        this.f20230c.getClass();
        awf.e(obj);
        throw null;
    }

    @Override // g.ciw
    public final void i(cys cysVar, cys cysVar2) {
        ave.q(this.f20229b, cysVar, cysVar2);
    }

    @Override // g.ciw
    public final int j(cys cysVar) {
        this.f20229b.getClass();
        return cysVar.zzc.hashCode();
    }

    @Override // g.ciw
    public final int zza(Object obj) {
        this.f20229b.getClass();
        fjx fjxVar = ((cys) obj).zzc;
        int i = fjxVar.f16900b;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < fjxVar.f16902d; i3++) {
            int i4 = fjxVar.f16903e[i3];
            cyb cybVar = (cyb) fjxVar.f16904f[i3];
            int h = p.h(8);
            int c2 = cybVar.c();
            int i5 = i4 >>> 3;
            i2 += p.h(c2) + c2 + p.h(24) + dub.d(i5, p.h(16), h + h);
        }
        fjxVar.f16900b = i2;
        return i2;
    }

    @Override // g.ciw
    public final Object zze() {
        return ((crf) ((cys) this.f20228a).a(5)).q();
    }
}
