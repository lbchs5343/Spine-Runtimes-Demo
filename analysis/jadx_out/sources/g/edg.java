package g;

/* loaded from: classes3.dex */
public final class edg implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f15347a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ dbb f15348b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ exk f15349c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f15350d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ afh f15351e;

    public /* synthetic */ edg(dbb dbbVar, afh afhVar, boolean z, exk exkVar, int i) {
        this.f15350d = i;
        this.f15348b = dbbVar;
        this.f15351e = afhVar;
        this.f15347a = z;
        this.f15349c = exkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f15350d) {
            case 0:
                dbb dbbVar = this.f15348b;
                ake akeVar = dbbVar.l;
                if (akeVar != null) {
                    dbbVar.al(akeVar, this.f15347a ? null : (cmd) this.f15349c, this.f15351e);
                    dbbVar.x();
                    break;
                } else {
                    bgm bgmVar = ((cyg) dbbVar.z).z;
                    cyg.ak(bgmVar);
                    bgmVar.f11518b.h("Discarding data. Failed to set user property");
                    break;
                }
            case 1:
                dbb dbbVar2 = this.f15348b;
                ake akeVar2 = dbbVar2.l;
                if (akeVar2 != null) {
                    dbbVar2.al(akeVar2, this.f15347a ? null : (ctf) this.f15349c, this.f15351e);
                    dbbVar2.x();
                    break;
                } else {
                    bgm bgmVar2 = ((cyg) dbbVar2.z).z;
                    cyg.ak(bgmVar2);
                    bgmVar2.f11518b.h("Discarding data. Failed to send event to service");
                    break;
                }
            default:
                dbb dbbVar3 = this.f15348b;
                ake akeVar3 = dbbVar3.l;
                if (akeVar3 != null) {
                    dbbVar3.al(akeVar3, this.f15347a ? null : (bou) this.f15349c, this.f15351e);
                    dbbVar3.x();
                    break;
                } else {
                    bgm bgmVar3 = ((cyg) dbbVar3.z).z;
                    cyg.ak(bgmVar3);
                    bgmVar3.f11518b.h("Discarding data. Failed to send conditional user property to service");
                    break;
                }
        }
    }
}
