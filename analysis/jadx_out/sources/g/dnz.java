package g;

import com.google.android.gms.internal.ads.zzcze;
import com.google.android.gms.internal.ads.zzdcb;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public final class dnz implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14501a;

    /* renamed from: b, reason: collision with root package name */
    public final WeakReference f14502b;

    public /* synthetic */ dnz(zzcze zzczeVar, int i) {
        this.f14501a = i;
        switch (i) {
            case 1:
                this.f14502b = new WeakReference(zzczeVar);
                break;
            default:
                this.f14502b = new WeakReference(zzczeVar);
                break;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f14501a) {
            case 0:
                zzcze zzczeVar = (zzcze) this.f14502b.get();
                if (zzczeVar != null) {
                    zzczeVar.m(new zzdcb() { // from class: com.google.android.gms.internal.ads.zzcyz
                        @Override // com.google.android.gms.internal.ads.zzdcb
                        public final void zza(Object obj) {
                            ((zzcyy) obj).zza();
                        }
                    });
                    break;
                }
                break;
            default:
                zzcze zzczeVar2 = (zzcze) this.f14502b.get();
                if (zzczeVar2 != null) {
                    zzczeVar2.m(new zzdcb() { // from class: com.google.android.gms.internal.ads.zzcza
                        @Override // com.google.android.gms.internal.ads.zzdcb
                        public final void zza(Object obj) {
                            ((zzcyy) obj).zzb();
                        }
                    });
                    break;
                }
                break;
        }
    }
}
