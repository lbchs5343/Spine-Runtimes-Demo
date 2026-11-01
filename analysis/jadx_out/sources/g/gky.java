package g;

import android.media.Spatializer;
import com.google.android.gms.internal.ads.zzgaz;
import com.google.android.gms.internal.ads.zzyb;

/* loaded from: classes3.dex */
public final class gky implements Spatializer.OnSpatializerStateChangedListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzyb f18331a;

    public gky(zzyb zzybVar) {
        this.f18331a = zzybVar;
    }

    @Override // android.media.Spatializer.OnSpatializerStateChangedListener
    public final void onSpatializerAvailableChanged(Spatializer spatializer, boolean z) {
        zzyb zzybVar = this.f18331a;
        zzgaz zzgazVar = zzyb.f8943a;
        zzybVar.k();
    }

    @Override // android.media.Spatializer.OnSpatializerStateChangedListener
    public final void onSpatializerEnabledChanged(Spatializer spatializer, boolean z) {
        zzyb zzybVar = this.f18331a;
        zzgaz zzgazVar = zzyb.f8943a;
        zzybVar.k();
    }
}
