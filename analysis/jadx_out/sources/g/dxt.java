package g;

import com.google.android.gms.internal.ads.zzcf;
import com.google.android.gms.internal.ads.zzfxg;
import com.google.android.gms.internal.ads.zzfxk;
import g.dxt;

/* loaded from: classes3.dex */
public final class dxt implements zzcf {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f15038a = 0;

    static {
        zzfxk.zza(new zzfxg() { // from class: com.google.android.gms.internal.ads.zzzs
            @Override // com.google.android.gms.internal.ads.zzfxg
            public final Object zza() {
                int i = dxt.f15038a;
                try {
                    Class<?> cls = Class.forName("androidx.media3.effect.DefaultVideoFrameProcessor$Factory$Builder");
                    Object invoke = cls.getMethod("build", null).invoke(cls.getConstructor(null).newInstance(null), null);
                    if (invoke != null) {
                        return (zzcf) invoke;
                    }
                    throw null;
                } catch (Exception e2) {
                    throw new IllegalStateException(e2);
                }
            }
        });
    }
}
