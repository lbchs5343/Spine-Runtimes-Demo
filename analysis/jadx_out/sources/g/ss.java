package g;

import j$.util.Objects;

/* loaded from: classes3.dex */
public final class ss extends kj {

    /* renamed from: a, reason: collision with root package name */
    public final acq f20007a;
    public final /* synthetic */ int ae;
    public final boolean af;
    public final String ag;

    public ss(String str, boolean z, int i) {
        this.ae = i;
        switch (i) {
            case 1:
                acq acqVar = acq.aw;
                Objects.requireNonNull(str, "name == null");
                this.ag = str;
                this.f20007a = acqVar;
                this.af = z;
                break;
            case 2:
                acq acqVar2 = acq.aw;
                Objects.requireNonNull(str, "name == null");
                this.ag = str;
                this.f20007a = acqVar2;
                this.af = z;
                break;
            default:
                acq acqVar3 = acq.aw;
                Objects.requireNonNull(str, "name == null");
                this.ag = str;
                this.f20007a = acqVar3;
                this.af = z;
                break;
        }
    }

    @Override // g.kj
    public final void b(gea geaVar, Object obj) {
        switch (this.ae) {
            case 0:
                if (obj != null) {
                    this.f20007a.getClass();
                    String obj2 = obj.toString();
                    if (obj2 != null) {
                        geaVar.o(this.ag, obj2, this.af);
                        break;
                    }
                }
                break;
            case 1:
                if (obj != null) {
                    this.f20007a.getClass();
                    String obj3 = obj.toString();
                    if (obj3 != null) {
                        geaVar.p(this.ag, obj3, this.af);
                        break;
                    }
                }
                break;
            default:
                if (obj != null) {
                    this.f20007a.getClass();
                    String obj4 = obj.toString();
                    if (obj4 != null) {
                        geaVar.n(this.ag, obj4, this.af);
                        break;
                    }
                }
                break;
        }
    }
}
