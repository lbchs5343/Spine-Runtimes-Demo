package g;

import java.io.IOException;

/* loaded from: classes3.dex */
public final class bcg extends fyg {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ug f11262a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f11263b;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ long f11264d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bcg(String str, ug ugVar, int i, long j) {
        super(str, true);
        this.f11262a = ugVar;
        this.f11263b = i;
        this.f11264d = j;
    }

    @Override // g.fyg
    public final long c() {
        ug ugVar = this.f11262a;
        try {
            ugVar.w.n(this.f11263b, this.f11264d);
            return -1L;
        } catch (IOException e2) {
            ugVar.ah(e2);
            return -1L;
        }
    }
}
