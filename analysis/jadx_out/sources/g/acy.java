package g;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzfwh;
import com.google.android.gms.internal.ads.zzgdp;
import com.google.android.gms.internal.ads.zzgei;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final /* synthetic */ class acy implements zzgdp {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10022a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ der f10023b;

    public /* synthetic */ acy(der derVar, int i) {
        this.f10022a = i;
        this.f10023b = derVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdp
    public final dcy zza(Object obj) {
        switch (this.f10022a) {
            case 0:
                der derVar = this.f10023b;
                return zzgei.zzm(derVar.at("google.afma.nativeAds.getPublisherCustomRenderedClickSignals"), new awi(2, (Uri) obj), derVar.ak);
            default:
                final ArrayList arrayList = (ArrayList) obj;
                final der derVar2 = this.f10023b;
                return zzgei.zzm(derVar2.at("google.afma.nativeAds.getPublisherCustomRenderedImpressionSignals"), new zzfwh() { // from class: g.cgu
                    @Override // com.google.android.gms.internal.ads.zzfwh
                    public final Object apply(Object obj2) {
                        String str = (String) obj2;
                        ArrayList arrayList2 = new ArrayList();
                        for (Uri uri : arrayList) {
                            der derVar3 = der.this;
                            if (!der.ao(uri, derVar3.i, derVar3.aa) || TextUtils.isEmpty(str)) {
                                arrayList2.add(uri);
                            } else {
                                arrayList2.add(der.am(uri, "nas", str));
                            }
                        }
                        return arrayList2;
                    }
                }, derVar2.ak);
        }
    }
}
