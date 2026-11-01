package g;

import java.io.Closeable;
import java.io.File;
import java.io.Flushable;

/* loaded from: classes3.dex */
public final class fvd implements Closeable, Flushable {

    /* renamed from: a, reason: collision with root package name */
    public final fxy f17471a;

    public fvd(File file, long j) {
        this.f17471a = new fxy(file, j, amr.f10485a);
    }

    public final void b(daw dawVar) {
        bff.p(dawVar, "request");
        fxy fxyVar = this.f17471a;
        String aw = buj.aw((eyn) dawVar.f13886e);
        synchronized (fxyVar) {
            bff.p(aw, "key");
            fxyVar.ae();
            fxyVar.ag();
            fxy.x(aw);
            egq egqVar = (egq) fxyVar.f17611f.get(aw);
            if (egqVar == null) {
                return;
            }
            fxyVar.ab(egqVar);
            if (fxyVar.w <= fxyVar.s) {
                fxyVar.t = false;
            }
        }
    }

    public final synchronized void c() {
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f17471a.close();
    }

    @Override // java.io.Flushable
    public final void flush() {
        this.f17471a.flush();
    }
}
