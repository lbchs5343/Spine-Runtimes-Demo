package g;

import com.google.android.gms.internal.ads.zzgei;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

/* loaded from: classes3.dex */
public abstract class aub extends axh implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f10849a = 0;

    /* renamed from: b, reason: collision with root package name */
    public dcy f10850b;

    /* renamed from: c, reason: collision with root package name */
    public Object f10851c;

    public aub(Object obj, dcy dcyVar) {
        dcyVar.getClass();
        this.f10850b = dcyVar;
        this.f10851c = obj;
    }

    public abstract Object d(Object obj, Object obj2);

    public abstract void e(Object obj);

    @Override // com.google.android.gms.internal.ads.zzgcy
    public final String f() {
        dcy dcyVar = this.f10850b;
        Object obj = this.f10851c;
        String f2 = super.f();
        String ad = dcyVar != null ? tn.ad("inputFuture=[", dcyVar.toString(), "], ") : "";
        if (obj == null) {
            if (f2 != null) {
                return ad.concat(f2);
            }
            return null;
        }
        return ad + "function=[" + obj.toString() + "]";
    }

    @Override // com.google.android.gms.internal.ads.zzgcy
    public final void g() {
        ac(this.f10850b);
        this.f10850b = null;
        this.f10851c = null;
    }

    @Override // java.lang.Runnable
    public final void run() {
        dcy dcyVar = this.f10850b;
        Object obj = this.f10851c;
        if ((isCancelled() | (dcyVar == null)) || (obj == null)) {
            return;
        }
        this.f10850b = null;
        if (dcyVar.isCancelled()) {
            af(dcyVar);
            return;
        }
        try {
            try {
                Object d2 = d(obj, zzgei.zzp(dcyVar));
                this.f10851c = null;
                e(d2);
            } catch (Throwable th) {
                try {
                    if (th instanceof InterruptedException) {
                        Thread.currentThread().interrupt();
                    }
                    zzd(th);
                } finally {
                    this.f10851c = null;
                }
            }
        } catch (Error e2) {
            zzd(e2);
        } catch (CancellationException unused) {
            cancel(false);
        } catch (ExecutionException e3) {
            zzd(e3.getCause());
        } catch (Exception e4) {
            zzd(e4);
        }
    }
}
