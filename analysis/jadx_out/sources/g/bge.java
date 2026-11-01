package g;

import java.io.IOException;
import java.util.List;

/* loaded from: classes3.dex */
public final class bge extends fyg {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f11509a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f11510b;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ug f11511d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f11512e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ bge(String str, ug ugVar, int i, Object obj, int i2) {
        super(str, true);
        this.f11510b = i2;
        this.f11511d = ugVar;
        this.f11512e = i;
        this.f11509a = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bge(String str, ug ugVar, int i, List list, boolean z) {
        super(str, true);
        this.f11510b = 0;
        this.f11511d = ugVar;
        this.f11512e = i;
        this.f11509a = list;
    }

    private final long j() {
        this.f11511d.l.getClass();
        try {
            this.f11511d.w.g(this.f11512e, amc.CANCEL);
            synchronized (this.f11511d) {
                this.f11511d.f20093f.remove(Integer.valueOf(this.f11512e));
            }
            return -1L;
        } catch (IOException unused) {
            return -1L;
        }
    }

    @Override // g.fyg
    public final long c() {
        switch (this.f11510b) {
            case 0:
                this.f11511d.l.getClass();
                try {
                    this.f11511d.w.g(this.f11512e, amc.CANCEL);
                    synchronized (this.f11511d) {
                        this.f11511d.f20093f.remove(Integer.valueOf(this.f11512e));
                    }
                    return -1L;
                } catch (IOException unused) {
                    return -1L;
                }
            case 1:
                return j();
            default:
                ug ugVar = this.f11511d;
                try {
                    int i = this.f11512e;
                    amc amcVar = (amc) this.f11509a;
                    bff.p(amcVar, "statusCode");
                    ugVar.w.g(i, amcVar);
                    return -1L;
                } catch (IOException e2) {
                    ugVar.ah(e2);
                    return -1L;
                }
        }
    }
}
