package g;

import com.google.android.gms.internal.ads.zzawf;
import com.google.android.gms.internal.ads.zzbcn;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class dok implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14525a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzawf f14526b;

    public /* synthetic */ dok(zzawf zzawfVar, int i) {
        this.f14525a = i;
        this.f14526b = zzawfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f14525a) {
            case 0:
                zzawf zzawfVar = this.f14526b;
                try {
                    if (zzawfVar.i == null && zzawfVar.l) {
                        xo xoVar = new xo(zzawfVar.h, 30000L, false);
                        xoVar.k(true);
                        zzawfVar.i = xoVar;
                        break;
                    }
                } catch (ctc | IOException unused) {
                    zzawfVar.i = null;
                    return;
                }
                break;
            default:
                zzbcn.zza(this.f14526b.h);
                break;
        }
    }
}
