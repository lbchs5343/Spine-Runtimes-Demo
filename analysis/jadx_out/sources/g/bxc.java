package g;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.internal.ads.zzbew;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class bxc implements Executor {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12364a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f12365b;

    public bxc(int i) {
        this.f12364a = i;
        switch (i) {
            case 3:
                dae daeVar = new dae(Looper.getMainLooper(), 4, false);
                Looper.getMainLooper();
                this.f12365b = daeVar;
                break;
            default:
                this.f12365b = new gfx(Looper.getMainLooper());
                break;
        }
    }

    public /* synthetic */ bxc(int i, Object obj) {
        this.f12364a = i;
        this.f12365b = obj;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f12364a) {
            case 0:
                ((Executor) this.f12365b).execute(new byd(23, runnable));
                return;
            case 1:
                ((Handler) ((gkr) this.f12365b).f18322b).post(runnable);
                return;
            case 2:
                if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
                    ((gfx) this.f12365b).post(runnable);
                    return;
                }
                try {
                    runnable.run();
                    return;
                } catch (Throwable th) {
                    esy esyVar = ti.f20033a.z;
                    Context zzd = ti.f20033a.f20034ab.zzd();
                    if (zzd != null) {
                        try {
                            if (((Boolean) zzbew.zzb.zze()).booleanValue()) {
                                acr.as(zzd, th);
                            }
                        } catch (IllegalStateException unused) {
                        }
                    }
                    throw th;
                }
            default:
                ((dae) this.f12365b).post(runnable);
                return;
        }
    }
}
