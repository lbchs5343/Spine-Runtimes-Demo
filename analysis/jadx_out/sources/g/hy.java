package g;

/* loaded from: classes3.dex */
public final class hy implements gtx {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19399a;

    /* renamed from: b, reason: collision with root package name */
    public String f19400b;

    public /* synthetic */ hy(String str, int i) {
        this.f19399a = i;
        this.f19400b = str;
    }

    @Override // g.gtx
    public Object ao() {
        throw new gyr(this.f19400b);
    }

    public String toString() {
        switch (this.f19399a) {
            case 1:
                return "<" + this.f19400b + '>';
            default:
                return super.toString();
        }
    }
}
