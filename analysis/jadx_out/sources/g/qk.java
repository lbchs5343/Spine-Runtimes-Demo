package g;

import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class qk extends bfk {

    /* renamed from: a, reason: collision with root package name */
    public long f19860a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ gnb f19861b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qk(gnb gnbVar, long j) {
        super(gnbVar);
        this.f19861b = gnbVar;
        this.f19860a = j;
        if (j == 0) {
            h();
        }
    }

    @Override // g.bfk, g.cpv
    public final long c(clq clqVar, long j) {
        bff.p(clqVar, "sink");
        if (this.f11450g) {
            throw new IllegalStateException("closed");
        }
        long j2 = this.f19860a;
        if (j2 == 0) {
            return -1L;
        }
        long c2 = super.c(clqVar, Math.min(j2, 8192L));
        if (c2 == -1) {
            ((gba) this.f19861b.n).w();
            ProtocolException protocolException = new ProtocolException("unexpected end of stream");
            h();
            throw protocolException;
        }
        long j3 = this.f19860a - c2;
        this.f19860a = j3;
        if (j3 == 0) {
            h();
        }
        return c2;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        boolean z;
        if (this.f11450g) {
            return;
        }
        if (this.f19860a != 0) {
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            byte[] bArr = erq.f16043c;
            bff.p(timeUnit, "timeUnit");
            try {
                z = erq.ab(this, 100);
            } catch (IOException unused) {
                z = false;
            }
            if (!z) {
                ((gba) this.f19861b.n).w();
                h();
            }
        }
        this.f11450g = true;
    }
}
