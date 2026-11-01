package g;

import java.io.IOException;
import java.net.ProtocolException;

/* loaded from: classes3.dex */
public final class gnj extends gnx {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ aju f18450a;

    /* renamed from: b, reason: collision with root package name */
    public long f18451b;

    /* renamed from: d, reason: collision with root package name */
    public boolean f18452d;

    /* renamed from: f, reason: collision with root package name */
    public boolean f18453f;

    /* renamed from: g, reason: collision with root package name */
    public final long f18454g;
    public boolean h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gnj(aju ajuVar, cpv cpvVar, long j) {
        super(cpvVar);
        bff.p(cpvVar, "delegate");
        this.f18450a = ajuVar;
        this.f18454g = j;
        this.f18452d = true;
        if (j == 0) {
            i(null);
        }
    }

    @Override // g.gnx, g.cpv
    public final long c(clq clqVar, long j) {
        bff.p(clqVar, "sink");
        if (this.h) {
            throw new IllegalStateException("closed");
        }
        try {
            long c2 = this.j.c(clqVar, 8192L);
            if (this.f18452d) {
                this.f18452d = false;
            }
            if (c2 == -1) {
                i(null);
                return -1L;
            }
            long j2 = this.f18451b + c2;
            long j3 = this.f18454g;
            if (j3 == -1 || j2 <= j3) {
                this.f18451b = j2;
                if (j2 == j3) {
                    i(null);
                }
                return c2;
            }
            throw new ProtocolException("expected " + j3 + " bytes but received " + j2);
        } catch (IOException e2) {
            throw i(e2);
        }
    }

    @Override // g.gnx, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.h) {
            return;
        }
        this.h = true;
        try {
            super.close();
            i(null);
        } catch (IOException e2) {
            throw i(e2);
        }
    }

    public final IOException i(IOException iOException) {
        if (this.f18453f) {
            return iOException;
        }
        this.f18453f = true;
        if (iOException == null && this.f18452d) {
            this.f18452d = false;
        }
        return this.f18450a.h(true, false, iOException);
    }
}
