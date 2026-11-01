package g;

import java.io.IOException;

/* loaded from: classes3.dex */
public final class ghv extends fyg {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ug f18179a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f18180b;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f18181d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ghv(String str, ug ugVar, int i, int i2) {
        super(str, true);
        this.f18179a = ugVar;
        this.f18180b = i;
        this.f18181d = i2;
    }

    @Override // g.fyg
    public final long c() {
        ug ugVar = this.f18179a;
        try {
            ugVar.w.o(this.f18180b, this.f18181d, true);
            return -1L;
        } catch (IOException e2) {
            ugVar.ah(e2);
            return -1L;
        }
    }
}
