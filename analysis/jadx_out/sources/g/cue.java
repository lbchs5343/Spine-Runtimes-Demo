package g;

import com.google.android.gms.internal.ads.zzbtu;
import java.util.List;

/* loaded from: classes3.dex */
public final class cue extends zzbtu {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13523a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ List f13524b;

    public /* synthetic */ cue(int i, List list) {
        this.f13523a = i;
        this.f13524b = list;
    }

    @Override // com.google.android.gms.internal.ads.zzbtv
    public final void zze(String str) {
        switch (this.f13523a) {
            case 0:
                agd.d("Error recording impression urls: ".concat(String.valueOf(str)));
                break;
            default:
                agd.d("Error recording click: ".concat(String.valueOf(str)));
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtv
    public final void zzf(List list) {
        switch (this.f13523a) {
            case 0:
                agd.k("Recorded impression urls: ".concat(this.f13524b.toString()));
                break;
            default:
                agd.k("Recorded click: ".concat(this.f13524b.toString()));
                break;
        }
    }
}
