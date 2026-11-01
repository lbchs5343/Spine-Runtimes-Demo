package g;

import java.io.IOException;

/* loaded from: classes3.dex */
public final class dxq extends fyg {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15033a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ug f15034b;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f15035d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ clq f15036e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dxq(String str, ug ugVar, int i, clq clqVar, int i2, boolean z) {
        super(str, true);
        this.f15034b = ugVar;
        this.f15035d = i;
        this.f15036e = clqVar;
        this.f15033a = i2;
    }

    @Override // g.fyg
    public final long c() {
        try {
            bmr bmrVar = this.f15034b.l;
            clq clqVar = this.f15036e;
            int i = this.f15033a;
            bmrVar.getClass();
            clqVar.skip(i);
            this.f15034b.w.g(this.f15035d, amc.CANCEL);
            synchronized (this.f15034b) {
                this.f15034b.f20093f.remove(Integer.valueOf(this.f15035d));
            }
            return -1L;
        } catch (IOException unused) {
            return -1L;
        }
    }
}
