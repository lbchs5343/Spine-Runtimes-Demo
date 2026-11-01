package g;

import com.google.android.gms.internal.ads.zzfxg;
import com.google.android.gms.internal.ads.zzfxn;
import java.io.Serializable;

/* loaded from: classes3.dex */
public final class eve implements Serializable, zzfxg {

    /* renamed from: a, reason: collision with root package name */
    public transient Object f16220a;

    /* renamed from: b, reason: collision with root package name */
    public final transient zzfxn f16221b = new zzfxn();

    /* renamed from: c, reason: collision with root package name */
    public volatile transient boolean f16222c;
    final zzfxg zza;

    public eve(zzfxg zzfxgVar) {
        this.zza = zzfxgVar;
    }

    public final String toString() {
        return tn.ad("Suppliers.memoize(", (this.f16222c ? tn.ad("<supplier that returned ", String.valueOf(this.f16220a), ">") : this.zza).toString(), ")");
    }

    @Override // com.google.android.gms.internal.ads.zzfxg
    public final Object zza() {
        if (!this.f16222c) {
            synchronized (this.f16221b) {
                try {
                    if (!this.f16222c) {
                        Object zza = this.zza.zza();
                        this.f16220a = zza;
                        this.f16222c = true;
                        return zza;
                    }
                } finally {
                }
            }
        }
        return this.f16220a;
    }
}
