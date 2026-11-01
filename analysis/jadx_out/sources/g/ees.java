package g;

import android.os.Bundle;
import android.os.IInterface;
import java.util.Map;

/* loaded from: classes3.dex */
public interface ees extends IInterface {
    void beginAdUnitExposure(String str, long j);

    void clearConditionalUserProperty(String str, String str2, Bundle bundle);

    void clearMeasurementEnabled(long j);

    void endAdUnitExposure(String str, long j);

    void generateEventId(brv brvVar);

    void getAppInstanceId(brv brvVar);

    void getCachedAppInstanceId(brv brvVar);

    void getConditionalUserProperties(String str, String str2, brv brvVar);

    void getCurrentScreenClass(brv brvVar);

    void getCurrentScreenName(brv brvVar);

    void getGmpAppId(brv brvVar);

    void getMaxUserProperties(String str, brv brvVar);

    void getTestFlag(brv brvVar, int i);

    void getUserProperties(String str, String str2, boolean z, brv brvVar);

    void initForTests(Map map);

    void initialize(bjq bjqVar, apu apuVar, long j);

    void isDataCollectionEnabled(brv brvVar);

    void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j);

    void logEventAndBundle(String str, String str2, Bundle bundle, brv brvVar, long j);

    void logHealthData(int i, String str, bjq bjqVar, bjq bjqVar2, bjq bjqVar3);

    void onActivityCreated(bjq bjqVar, Bundle bundle, long j);

    void onActivityDestroyed(bjq bjqVar, long j);

    void onActivityPaused(bjq bjqVar, long j);

    void onActivityResumed(bjq bjqVar, long j);

    void onActivitySaveInstanceState(bjq bjqVar, brv brvVar, long j);

    void onActivityStarted(bjq bjqVar, long j);

    void onActivityStopped(bjq bjqVar, long j);

    void performAction(Bundle bundle, brv brvVar, long j);

    void registerOnMeasurementEventListener(aad aadVar);

    void resetAnalyticsData(long j);

    void setConditionalUserProperty(Bundle bundle, long j);

    void setConsent(Bundle bundle, long j);

    void setConsentThirdParty(Bundle bundle, long j);

    void setCurrentScreen(bjq bjqVar, String str, String str2, long j);

    void setDataCollectionEnabled(boolean z);

    void setDefaultEventParameters(Bundle bundle);

    void setEventInterceptor(aad aadVar);

    void setInstanceIdProvider(grg grgVar);

    void setMeasurementEnabled(boolean z, long j);

    void setMinimumSessionDuration(long j);

    void setSessionTimeoutDuration(long j);

    void setUserId(String str, long j);

    void setUserProperty(String str, String str2, bjq bjqVar, boolean z, long j);

    void unregisterOnMeasurementEventListener(aad aadVar);
}
