package g;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public final class abv {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ fxy f9946a;

    /* renamed from: b, reason: collision with root package name */
    public final egq f9947b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean[] f9948c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f9949d;

    public abv(fxy fxyVar, egq egqVar) {
        boolean[] zArr;
        this.f9946a = fxyVar;
        this.f9947b = egqVar;
        if (egqVar.f15507c) {
            zArr = null;
        } else {
            fxyVar.getClass();
            zArr = new boolean[2];
        }
        this.f9948c = zArr;
    }

    public final evq e(int i) {
        dgz dgzVar;
        fxy fxyVar = this.f9946a;
        synchronized (fxyVar) {
            try {
                if (this.f9949d) {
                    throw new IllegalStateException("Check failed.");
                }
                if (!bff.n(this.f9947b.j, this)) {
                    return new goh();
                }
                if (!this.f9947b.f15507c) {
                    boolean[] zArr = this.f9948c;
                    bff.d(zArr);
                    zArr[i] = true;
                }
                File file = (File) this.f9947b.f15506b.get(i);
                try {
                    bff.p(file, "file");
                    try {
                        Logger logger = aro.f10725a;
                        dgzVar = new dgz(new FileOutputStream(file, false), 1, new dme());
                    } catch (FileNotFoundException unused) {
                        file.getParentFile().mkdirs();
                        Logger logger2 = aro.f10725a;
                        dgzVar = new dgz(new FileOutputStream(file, false), 1, new dme());
                    }
                    return new eqv(dgzVar, new fbl(fxyVar, this));
                } catch (FileNotFoundException unused2) {
                    return new goh();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void f() {
        fxy fxyVar = this.f9946a;
        synchronized (fxyVar) {
            try {
                if (this.f9949d) {
                    throw new IllegalStateException("Check failed.");
                }
                if (bff.n(this.f9947b.j, this)) {
                    fxyVar.ai(this, false);
                }
                this.f9949d = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void g() {
        fxy fxyVar = this.f9946a;
        synchronized (fxyVar) {
            try {
                if (this.f9949d) {
                    throw new IllegalStateException("Check failed.");
                }
                if (bff.n(this.f9947b.j, this)) {
                    fxyVar.ai(this, true);
                }
                this.f9949d = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void h() {
        egq egqVar = this.f9947b;
        if (bff.n(egqVar.j, this)) {
            fxy fxyVar = this.f9946a;
            if (fxyVar.m) {
                fxyVar.ai(this, false);
            } else {
                egqVar.f15509e = true;
            }
        }
    }
}
