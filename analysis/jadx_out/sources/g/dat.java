package g;

import com.google.android.gms.internal.ads.zzfxg;
import com.google.android.gms.internal.ads.zzfxi;
import com.google.android.gms.internal.ads.zzfxn;

/* loaded from: classes3.dex */
public final class dat implements zzfxg {

    /* renamed from: a, reason: collision with root package name */
    public static final zzfxi f13871a = new zzfxg() { // from class: com.google.android.gms.internal.ads.zzfxi
        @Override // com.google.android.gms.internal.ads.zzfxg
        public final Object zza() {
            throw new IllegalStateException();
        }
    };

    /* renamed from: b, reason: collision with root package name */
    public Object f13872b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfxn f13873c = new zzfxn();

    /* renamed from: d, reason: collision with root package name */
    public volatile zzfxg f13874d;

    public dat(zzfxg zzfxgVar) {
        this.f13874d = zzfxgVar;
    }

    public final String toString() {
        Object obj = this.f13874d;
        if (obj == f13871a) {
            obj = tn.ad("<supplier that returned ", String.valueOf(this.f13872b), ">");
        }
        return tn.ad("Suppliers.memoize(", String.valueOf(obj), ")");
    }

    @Override // com.google.android.gms.internal.ads.zzfxg
    public final Object zza() {
        zzfxg zzfxgVar = this.f13874d;
        zzfxi zzfxiVar = f13871a;
        if (zzfxgVar != zzfxiVar) {
            synchronized (this.f13873c) {
                try {
                    if (this.f13874d != zzfxiVar) {
                        Object zza = this.f13874d.zza();
                        this.f13872b = zza;
                        this.f13874d = zzfxiVar;
                        return zza;
                    }
                } finally {
                }
            }
        }
        return this.f13872b;
    }
}
