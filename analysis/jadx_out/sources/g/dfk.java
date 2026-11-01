package g;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes3.dex */
public final class dfk extends cgo {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f14092d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ dfk(String str, int i) {
        super(str);
        this.f14092d = i;
    }

    @Override // g.cgo
    public final /* synthetic */ Object a(IBinder iBinder) {
        switch (this.f14092d) {
            case 0:
                if (iBinder == null) {
                    return null;
                }
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator");
                return queryLocalInterface instanceof gux ? (gux) queryLocalInterface : new gux(iBinder);
            case 1:
                if (iBinder == null) {
                    return null;
                }
                IInterface queryLocalInterface2 = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
                return queryLocalInterface2 instanceof fgg ? (fgg) queryLocalInterface2 : new fgg(iBinder);
            default:
                if (iBinder == null) {
                    return null;
                }
                IInterface queryLocalInterface3 = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdPreloaderCreator");
                return queryLocalInterface3 instanceof axj ? (axj) queryLocalInterface3 : new axj(iBinder);
        }
    }
}
