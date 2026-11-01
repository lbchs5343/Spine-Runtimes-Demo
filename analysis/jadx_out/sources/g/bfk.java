package g;

import java.io.IOException;

/* loaded from: classes3.dex */
public abstract class bfk implements cpv {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ gnb f11448d;

    /* renamed from: f, reason: collision with root package name */
    public final gpq f11449f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f11450g;

    public bfk(gnb gnbVar) {
        this.f11448d = gnbVar;
        this.f11449f = new gpq(((dsy) gnbVar.i).e());
    }

    @Override // g.cpv
    public long c(clq clqVar, long j) {
        gnb gnbVar = this.f11448d;
        bff.p(clqVar, "sink");
        try {
            return ((dsy) gnbVar.i).c(clqVar, j);
        } catch (IOException e2) {
            ((gba) gnbVar.n).w();
            h();
            throw e2;
        }
    }

    @Override // g.cpv
    public final dme e() {
        return this.f11449f;
    }

    public final void h() {
        gnb gnbVar = this.f11448d;
        int i = gnbVar.k;
        if (i == 6) {
            return;
        }
        if (i != 5) {
            throw new IllegalStateException("state: " + gnbVar.k);
        }
        gpq gpqVar = this.f11449f;
        dme dmeVar = gpqVar.f18541d;
        gpqVar.f18541d = dme.n;
        dmeVar.s();
        dmeVar.t();
        gnbVar.k = 6;
    }
}
