package g;

import android.adservices.topics.GetTopicsRequest;
import android.adservices.topics.GetTopicsResponse;
import android.adservices.topics.Topic;
import android.adservices.topics.TopicsManager;
import com.google.android.gms.ads.MobileAds;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public abstract class aij {

    /* renamed from: c, reason: collision with root package name */
    public final TopicsManager f10261c;

    public aij(TopicsManager topicsManager) {
        bff.p(topicsManager, "mTopicsManager");
        this.f10261c = topicsManager;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0080 A[LOOP:0: B:11:0x007a->B:13:0x0080, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Object d(aij aijVar, eph ephVar, bdp<? super ema> bdpVar) {
        si siVar;
        int i;
        List topics;
        Iterator it;
        long taxonomyVersion;
        long modelVersion;
        int topicId;
        if (bdpVar instanceof si) {
            siVar = (si) bdpVar;
            int i2 = siVar.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                siVar.label = i2 - Integer.MIN_VALUE;
                Object obj = siVar.result;
                cxr cxrVar = cxr.COROUTINE_SUSPENDED;
                i = siVar.label;
                if (i != 0) {
                    eg.k(obj);
                    GetTopicsRequest b2 = aijVar.b(ephVar);
                    siVar.L$0 = aijVar;
                    siVar.label = 1;
                    gsn gsnVar = new gsn(1, awt.ab(siVar));
                    gsnVar.ac();
                    aijVar.f10261c.getTopics(b2, new xh(1), new azf(gsnVar));
                    obj = gsnVar.z();
                    if (obj == cxrVar) {
                        return cxrVar;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    aijVar = (aij) siVar.L$0;
                    eg.k(obj);
                }
                GetTopicsResponse q = fvr.q(obj);
                aijVar.getClass();
                bff.p(q, "response");
                ArrayList arrayList = new ArrayList();
                topics = q.getTopics();
                it = topics.iterator();
                while (it.hasNext()) {
                    Topic s = fvr.s(it.next());
                    taxonomyVersion = s.getTaxonomyVersion();
                    modelVersion = s.getModelVersion();
                    topicId = s.getTopicId();
                    arrayList.add(new bqc(taxonomyVersion, modelVersion, topicId));
                }
                return new ema(arrayList);
            }
        }
        siVar = new si(aijVar, bdpVar);
        Object obj2 = siVar.result;
        cxr cxrVar2 = cxr.COROUTINE_SUSPENDED;
        i = siVar.label;
        if (i != 0) {
        }
        GetTopicsResponse q2 = fvr.q(obj2);
        aijVar.getClass();
        bff.p(q2, "response");
        ArrayList arrayList2 = new ArrayList();
        topics = q2.getTopics();
        it = topics.iterator();
        while (it.hasNext()) {
        }
        return new ema(arrayList2);
    }

    public GetTopicsRequest b(eph ephVar) {
        GetTopicsRequest.Builder adsSdkName;
        GetTopicsRequest build;
        bff.p(ephVar, "request");
        adsSdkName = fvr.h().setAdsSdkName(MobileAds.ERROR_DOMAIN);
        build = adsSdkName.build();
        bff.e(build, "Builder()\n            .s…ame)\n            .build()");
        return build;
    }

    public Object e(eph ephVar, bdp<? super ema> bdpVar) {
        return d(this, ephVar, bdpVar);
    }
}
