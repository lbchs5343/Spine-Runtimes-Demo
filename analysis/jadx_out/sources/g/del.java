package g;

import com.google.android.gms.internal.ads.zzgei;
import com.google.android.gms.internal.ads.zzgfk;
import java.util.concurrent.ExecutionException;

/* loaded from: classes3.dex */
public abstract class del extends axh implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public dcy f14058c;

    /* renamed from: d, reason: collision with root package name */
    public Object f14059d;

    /* renamed from: e, reason: collision with root package name */
    public Class f14060e;

    public del(dcy dcyVar, Class cls, Object obj) {
        dcyVar.getClass();
        this.f14058c = dcyVar;
        this.f14060e = cls;
        this.f14059d = obj;
    }

    public abstract Object a(Object obj, Throwable th);

    public abstract void b(Object obj);

    @Override // com.google.android.gms.internal.ads.zzgcy
    public final String f() {
        dcy dcyVar = this.f14058c;
        Class cls = this.f14060e;
        Object obj = this.f14059d;
        String f2 = super.f();
        String ad = dcyVar != null ? tn.ad("inputFuture=[", dcyVar.toString(), "], ") : "";
        if (cls == null || obj == null) {
            if (f2 != null) {
                return ad.concat(f2);
            }
            return null;
        }
        return ad + "exceptionType=[" + cls.toString() + "], fallback=[" + obj.toString() + "]";
    }

    @Override // com.google.android.gms.internal.ads.zzgcy
    public final void g() {
        ac(this.f14058c);
        this.f14058c = null;
        this.f14060e = null;
        this.f14059d = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006b  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        Object obj;
        dcy dcyVar = this.f14058c;
        Class cls = this.f14060e;
        Object obj2 = this.f14059d;
        if (((obj2 == null) || ((dcyVar == 0) | (cls == null))) || isCancelled()) {
            return;
        }
        this.f14058c = null;
        try {
            th = dcyVar instanceof zzgfk ? ((zzgfk) dcyVar).ag() : null;
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (cause == null) {
                cause = new NullPointerException(tn.r("Future type ", String.valueOf(dcyVar.getClass()), " threw ", String.valueOf(e2.getClass()), " without a cause"));
            }
            th = cause;
        } catch (Throwable th) {
            th = th;
        }
        if (th == null) {
            obj = zzgei.zzp(dcyVar);
            if (th != null) {
                zzc(obj);
                return;
            }
            if (!cls.isInstance(th)) {
                af(dcyVar);
                return;
            }
            try {
                Object a2 = a(obj2, th);
                this.f14060e = null;
                this.f14059d = null;
                b(a2);
                return;
            } catch (Throwable th2) {
                try {
                    if (th2 instanceof InterruptedException) {
                        Thread.currentThread().interrupt();
                    }
                    zzd(th2);
                    return;
                } finally {
                    this.f14060e = null;
                    this.f14059d = null;
                }
            }
        }
        obj = null;
        if (th != null) {
        }
    }
}
