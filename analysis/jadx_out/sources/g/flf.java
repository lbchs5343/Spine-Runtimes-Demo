package g;

/* loaded from: classes3.dex */
public final class flf extends bvf {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ bhz f16963a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f16964b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ bay f16965c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ flf(bhz bhzVar, bay bayVar, int i) {
        super(bhzVar, true);
        this.f16964b = i;
        this.f16963a = bhzVar;
        this.f16965c = bayVar;
    }

    @Override // g.bvf
    public final void g() {
        switch (this.f16964b) {
            case 0:
                ees eesVar = this.f16963a.f11621e;
                ckd.k(eesVar);
                eesVar.getGmpAppId(this.f16965c);
                break;
            case 1:
                ees eesVar2 = this.f16963a.f11621e;
                ckd.k(eesVar2);
                eesVar2.getCachedAppInstanceId(this.f16965c);
                break;
            case 2:
                ees eesVar3 = this.f16963a.f11621e;
                ckd.k(eesVar3);
                eesVar3.generateEventId(this.f16965c);
                break;
            case 3:
                ees eesVar4 = this.f16963a.f11621e;
                ckd.k(eesVar4);
                eesVar4.getCurrentScreenName(this.f16965c);
                break;
            default:
                ees eesVar5 = this.f16963a.f11621e;
                ckd.k(eesVar5);
                eesVar5.getCurrentScreenClass(this.f16965c);
                break;
        }
    }

    @Override // g.bvf
    public final void h() {
        switch (this.f16964b) {
            case 0:
                this.f16965c.zzd(null);
                break;
            case 1:
                this.f16965c.zzd(null);
                break;
            case 2:
                this.f16965c.zzd(null);
                break;
            case 3:
                this.f16965c.zzd(null);
                break;
            default:
                this.f16965c.zzd(null);
                break;
        }
    }
}
