package g;

/* loaded from: classes3.dex */
public final class gtm implements dxm {

    /* renamed from: a, reason: collision with root package name */
    public final bsv f18733a;

    /* renamed from: b, reason: collision with root package name */
    public final cuf f18734b;

    public gtm(cuf cufVar, bsv bsvVar) {
        gpu gpuVar = dgp.f14146a;
        this.f18734b = cufVar;
        this.f18733a = bsvVar;
    }

    @Override // g.dxm
    public final void aa(Object obj) {
        this.f18734b.getClass();
        wl wlVar = ((fsu) obj).zzc;
        if (wlVar.f20223c) {
            wlVar.f20223c = false;
        }
        gpu gpuVar = dgp.f14146a;
        throw awf.j(obj);
    }

    @Override // g.dxm
    public final void ad(Object obj, dnb dnbVar) {
        throw awf.j(obj);
    }

    @Override // g.dxm
    public final boolean ai(Object obj) {
        throw awf.j(obj);
    }

    @Override // g.dxm
    public final void al(Object obj, Object obj2) {
        gog.q(obj, obj2);
    }

    @Override // g.dxm
    public final int an(bsv bsvVar) {
        wl wlVar = ((fsu) bsvVar).zzc;
        int i = wlVar.f20222b;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < wlVar.f20224d; i3++) {
            int i4 = wlVar.f20225e[i3] >>> 3;
            aki akiVar = (aki) wlVar.f20226f[i3];
            int i5 = ctv.i(8);
            int i6 = ctv.i(i4) + ctv.i(16);
            int i7 = ctv.i(24);
            int g2 = akiVar.g();
            i2 += i5 + i5 + i6 + dub.h(g2, g2, i7);
        }
        wlVar.f20222b = i2;
        return i2;
    }

    @Override // g.dxm
    public final int s(fsu fsuVar) {
        return fsuVar.zzc.hashCode();
    }

    @Override // g.dxm
    public final void w(Object obj, byte[] bArr, int i, int i2, dsc dscVar) {
        fsu fsuVar = (fsu) obj;
        if (fsuVar.zzc == wl.f20221a) {
            fsuVar.zzc = wl.g();
        }
        throw awf.j(obj);
    }

    @Override // g.dxm
    public final boolean z(fsu fsuVar, fsu fsuVar2) {
        return fsuVar.zzc.equals(fsuVar2.zzc);
    }

    @Override // g.dxm
    public final fsu zze() {
        bsv bsvVar = this.f18733a;
        return bsvVar instanceof fsu ? (fsu) ((fsu) bsvVar).i(4) : ((dtx) ((fsu) bsvVar).i(5)).e();
    }
}
