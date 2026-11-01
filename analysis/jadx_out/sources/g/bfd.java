package g;

import android.app.Activity;
import android.os.Bundle;

/* loaded from: classes3.dex */
public final class bfd extends cwg {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11439a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ bfd(Activity activity, int i) {
        super(activity);
        this.f11439a = i;
    }

    @Override // g.cwg, com.google.android.gms.internal.ads.zzbtg
    public void zzl(Bundle bundle) {
        switch (this.f11439a) {
            case 4:
                agd.e("AdOverlayParcel is null or does not contain valid overlay type.");
                this.f13627g = 4;
                this.s.finish();
                break;
            default:
                super.zzl(bundle);
                break;
        }
    }
}
