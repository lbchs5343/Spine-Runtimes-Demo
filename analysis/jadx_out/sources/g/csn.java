package g;

import java.util.List;

/* loaded from: classes3.dex */
public final class csn extends fdk {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f13441c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ csn(String str, int i) {
        super(str);
        this.f13441c = i;
    }

    @Override // g.fdk
    public final gey e(dpa dpaVar, List list) {
        switch (this.f13441c) {
            case 0:
                return gey.o;
            case 1:
            case 2:
                return this;
            case 3:
                return new hbz(Double.valueOf(0.0d));
            default:
                return gey.o;
        }
    }
}
