package g;

import android.adservices.measurement.DeletionRequest;
import android.adservices.measurement.MeasurementManager;
import android.adservices.topics.GetTopicsRequest;
import android.adservices.topics.GetTopicsResponse;
import android.adservices.topics.Topic;
import android.adservices.topics.TopicsManager;

/* loaded from: classes.dex */
public abstract /* synthetic */ class fvr {
    public static /* bridge */ /* synthetic */ TopicsManager b(Object obj) {
        return (TopicsManager) obj;
    }

    public static /* bridge */ /* synthetic */ Class c() {
        return MeasurementManager.class;
    }

    public static /* synthetic */ void d() {
    }

    public static /* bridge */ /* synthetic */ MeasurementManager f(Object obj) {
        return (MeasurementManager) obj;
    }

    public static /* synthetic */ GetTopicsRequest.Builder h() {
        return new GetTopicsRequest.Builder();
    }

    public static /* bridge */ /* synthetic */ Class l() {
        return TopicsManager.class;
    }

    public static /* bridge */ /* synthetic */ GetTopicsResponse q(Object obj) {
        return (GetTopicsResponse) obj;
    }

    public static /* bridge */ /* synthetic */ Topic s(Object obj) {
        return (Topic) obj;
    }

    public static /* synthetic */ void t() {
        new DeletionRequest.Builder();
    }

    public static /* synthetic */ void w() {
    }
}
