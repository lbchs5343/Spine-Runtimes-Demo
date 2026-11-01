package g;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class yn implements cpv {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ aju f20354a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ago f20355b;

    /* renamed from: d, reason: collision with root package name */
    public boolean f20356d;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ dsy f20357f;

    public yn(dsy dsyVar, aju ajuVar, ago agoVar) {
        this.f20357f = dsyVar;
        this.f20354a = ajuVar;
        this.f20355b = agoVar;
    }

    @Override // g.cpv
    public final long c(clq clqVar, long j) {
        bff.p(clqVar, "sink");
        try {
            long c2 = this.f20357f.c(clqVar, 8192L);
            ago agoVar = this.f20355b;
            if (c2 != -1) {
                clqVar.i(agoVar.f10192c, clqVar.f13080b - c2, c2);
                agoVar.i();
                return c2;
            }
            if (!this.f20356d) {
                this.f20356d = true;
                agoVar.close();
            }
            return -1L;
        } catch (IOException e2) {
            if (this.f20356d) {
                throw e2;
            }
            this.f20356d = true;
            this.f20354a.g();
            throw e2;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        boolean z;
        if (!this.f20356d) {
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            byte[] bArr = erq.f16043c;
            bff.p(timeUnit, "timeUnit");
            try {
                z = erq.ab(this, 100);
            } catch (IOException unused) {
                z = false;
            }
            if (!z) {
                this.f20356d = true;
                this.f20354a.g();
            }
        }
        this.f20357f.close();
    }

    @Override // g.cpv
    public final dme e() {
        return this.f20357f.e();
    }
}
