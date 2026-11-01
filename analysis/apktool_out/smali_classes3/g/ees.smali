.class public interface abstract Lg/ees;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract beginAdUnitExposure(Ljava/lang/String;J)V
.end method

.method public abstract clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract clearMeasurementEnabled(J)V
.end method

.method public abstract endAdUnitExposure(Ljava/lang/String;J)V
.end method

.method public abstract generateEventId(Lg/brv;)V
.end method

.method public abstract getAppInstanceId(Lg/brv;)V
.end method

.method public abstract getCachedAppInstanceId(Lg/brv;)V
.end method

.method public abstract getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lg/brv;)V
.end method

.method public abstract getCurrentScreenClass(Lg/brv;)V
.end method

.method public abstract getCurrentScreenName(Lg/brv;)V
.end method

.method public abstract getGmpAppId(Lg/brv;)V
.end method

.method public abstract getMaxUserProperties(Ljava/lang/String;Lg/brv;)V
.end method

.method public abstract getTestFlag(Lg/brv;I)V
.end method

.method public abstract getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLg/brv;)V
.end method

.method public abstract initForTests(Ljava/util/Map;)V
.end method

.method public abstract initialize(Lg/bjq;Lg/apu;J)V
.end method

.method public abstract isDataCollectionEnabled(Lg/brv;)V
.end method

.method public abstract logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
.end method

.method public abstract logEventAndBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lg/brv;J)V
.end method

.method public abstract logHealthData(ILjava/lang/String;Lg/bjq;Lg/bjq;Lg/bjq;)V
.end method

.method public abstract onActivityCreated(Lg/bjq;Landroid/os/Bundle;J)V
.end method

.method public abstract onActivityDestroyed(Lg/bjq;J)V
.end method

.method public abstract onActivityPaused(Lg/bjq;J)V
.end method

.method public abstract onActivityResumed(Lg/bjq;J)V
.end method

.method public abstract onActivitySaveInstanceState(Lg/bjq;Lg/brv;J)V
.end method

.method public abstract onActivityStarted(Lg/bjq;J)V
.end method

.method public abstract onActivityStopped(Lg/bjq;J)V
.end method

.method public abstract performAction(Landroid/os/Bundle;Lg/brv;J)V
.end method

.method public abstract registerOnMeasurementEventListener(Lg/aad;)V
.end method

.method public abstract resetAnalyticsData(J)V
.end method

.method public abstract setConditionalUserProperty(Landroid/os/Bundle;J)V
.end method

.method public abstract setConsent(Landroid/os/Bundle;J)V
.end method

.method public abstract setConsentThirdParty(Landroid/os/Bundle;J)V
.end method

.method public abstract setCurrentScreen(Lg/bjq;Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract setDataCollectionEnabled(Z)V
.end method

.method public abstract setDefaultEventParameters(Landroid/os/Bundle;)V
.end method

.method public abstract setEventInterceptor(Lg/aad;)V
.end method

.method public abstract setInstanceIdProvider(Lg/grg;)V
.end method

.method public abstract setMeasurementEnabled(ZJ)V
.end method

.method public abstract setMinimumSessionDuration(J)V
.end method

.method public abstract setSessionTimeoutDuration(J)V
.end method

.method public abstract setUserId(Ljava/lang/String;J)V
.end method

.method public abstract setUserProperty(Ljava/lang/String;Ljava/lang/String;Lg/bjq;ZJ)V
.end method

.method public abstract unregisterOnMeasurementEventListener(Lg/aad;)V
.end method
