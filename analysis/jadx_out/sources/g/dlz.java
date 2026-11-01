package g;

import java.util.List;

/* loaded from: classes.dex */
public final class dlz extends bgf {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14409a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ dlz(int i, List list) {
        super(4, list);
        this.f14409a = i;
    }

    @Override // g.eqn
    public final cej dq() {
        switch (this.f14409a) {
            case 0:
                return new dph(0, (List) this.z);
            case 1:
                return new fdn((List) this.z);
            case 2:
                return new exi(1, (List) this.z);
            case 3:
                return new exi(0, (List) this.z);
            case 4:
                return new dph(2, (List) this.z);
            case 5:
                return new exi(2, (List) this.z);
            default:
                return new dph(1, (List) this.z);
        }
    }
}
