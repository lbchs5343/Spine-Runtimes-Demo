package g;

import android.adservices.topics.GetTopicsRequest;
import android.adservices.topics.TopicsManager;
import com.google.android.gms.ads.MobileAds;

/* loaded from: classes.dex */
public final class hn extends aij {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19380a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ hn(TopicsManager topicsManager, int i) {
        super(topicsManager);
        this.f19380a = i;
    }

    @Override // g.aij
    public GetTopicsRequest b(eph ephVar) {
        GetTopicsRequest.Builder adsSdkName;
        GetTopicsRequest.Builder shouldRecordObservation;
        GetTopicsRequest build;
        switch (this.f19380a) {
            case 1:
                bff.p(ephVar, "request");
                adsSdkName = fvr.h().setAdsSdkName(MobileAds.ERROR_DOMAIN);
                shouldRecordObservation = adsSdkName.setShouldRecordObservation(ephVar.f15933a);
                build = shouldRecordObservation.build();
                bff.e(build, "Builder()\n            .s…ion)\n            .build()");
                return build;
            default:
                return super.b(ephVar);
        }
    }
}
