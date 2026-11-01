.class public abstract Lg/ddj;
.super Lg/dzk;
.source "SourceFile"

# interfaces
.implements Lg/ees;


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lg/ees;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lg/ees;

    if-eqz v2, :cond_1

    check-cast v1, Lg/ees;

    return-object v1

    :cond_1
    new-instance v1, Lg/gim;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v0, v2}, Lg/ob;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-object v1
.end method


# virtual methods
.method public final t(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 9

    const-string v2, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy"

    const/4 v8, 0x1

    const/4 v3, 0x0

    const-string v4, "com.google.android.gms.measurement.api.internal.IBundleReceiver"

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v3

    :pswitch_1
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lg/m;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v2, v3, v4}, Lg/ees;->setConsentThirdParty(Landroid/os/Bundle;J)V

    goto/16 :goto_15

    :pswitch_2
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lg/m;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v2, v3, v4}, Lg/ees;->setConsent(Landroid/os/Bundle;J)V

    goto/16 :goto_15

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v2, v3}, Lg/ees;->clearMeasurementEnabled(J)V

    goto/16 :goto_15

    :pswitch_4
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lg/m;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v2}, Lg/ees;->setDefaultEventParameters(Landroid/os/Bundle;)V

    goto/16 :goto_15

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lg/brv;

    if-eqz v4, :cond_1

    move-object v5, v3

    check-cast v5, Lg/brv;

    goto :goto_0

    :cond_1
    new-instance v5, Lg/cjw;

    invoke-direct {v5, v2}, Lg/cjw;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v5}, Lg/ees;->isDataCollectionEnabled(Lg/brv;)V

    goto/16 :goto_15

    :pswitch_6
    sget-object v2, Lg/m;->a:Ljava/lang/ClassLoader;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v3}, Lg/ees;->setDataCollectionEnabled(Z)V

    goto/16 :goto_15

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lg/brv;

    if-eqz v4, :cond_4

    move-object v5, v3

    check-cast v5, Lg/brv;

    goto :goto_1

    :cond_4
    new-instance v5, Lg/cjw;

    invoke-direct {v5, v2}, Lg/cjw;-><init>(Landroid/os/IBinder;)V

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v5, v2}, Lg/ees;->getTestFlag(Lg/brv;I)V

    goto/16 :goto_15

    :pswitch_8
    sget-object v2, Lg/m;->a:Ljava/lang/ClassLoader;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v2}, Lg/ees;->initForTests(Ljava/util/Map;)V

    goto/16 :goto_15

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v3, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v4, v2, Lg/aad;

    if-eqz v4, :cond_6

    move-object v5, v2

    check-cast v5, Lg/aad;

    goto :goto_2

    :cond_6
    new-instance v5, Lg/etv;

    invoke-direct {v5, v3}, Lg/etv;-><init>(Landroid/os/IBinder;)V

    :goto_2
    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v5}, Lg/ees;->unregisterOnMeasurementEventListener(Lg/aad;)V

    goto/16 :goto_15

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_7

    goto :goto_3

    :cond_7
    invoke-interface {v3, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v4, v2, Lg/aad;

    if-eqz v4, :cond_8

    move-object v5, v2

    check-cast v5, Lg/aad;

    goto :goto_3

    :cond_8
    new-instance v5, Lg/etv;

    invoke-direct {v5, v3}, Lg/etv;-><init>(Landroid/os/IBinder;)V

    :goto_3
    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v5}, Lg/ees;->registerOnMeasurementEventListener(Lg/aad;)V

    goto/16 :goto_15

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_9

    goto :goto_4

    :cond_9
    invoke-interface {v3, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v4, v2, Lg/aad;

    if-eqz v4, :cond_a

    move-object v5, v2

    check-cast v5, Lg/aad;

    goto :goto_4

    :cond_a
    new-instance v5, Lg/etv;

    invoke-direct {v5, v3}, Lg/etv;-><init>(Landroid/os/IBinder;)V

    :goto_4
    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v5}, Lg/ees;->setEventInterceptor(Lg/aad;)V

    goto/16 :goto_15

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object v5

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lg/ees;->logHealthData(ILjava/lang/String;Lg/bjq;Lg/bjq;Lg/bjq;)V

    goto/16 :goto_15

    :pswitch_d
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lg/m;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_b

    goto :goto_5

    :cond_b
    invoke-interface {v2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lg/brv;

    if-eqz v4, :cond_c

    move-object v5, v3

    check-cast v5, Lg/brv;

    goto :goto_5

    :cond_c
    new-instance v5, Lg/cjw;

    invoke-direct {v5, v2}, Lg/cjw;-><init>(Landroid/os/IBinder;)V

    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v5, v2, v3}, Lg/ees;->performAction(Landroid/os/Bundle;Lg/brv;J)V

    goto/16 :goto_15

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_d

    goto :goto_6

    :cond_d
    invoke-interface {v2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lg/brv;

    if-eqz v4, :cond_e

    move-object v5, v3

    check-cast v5, Lg/brv;

    goto :goto_6

    :cond_e
    new-instance v5, Lg/cjw;

    invoke-direct {v5, v2}, Lg/cjw;-><init>(Landroid/os/IBinder;)V

    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v5, v2, v3}, Lg/ees;->onActivitySaveInstanceState(Lg/bjq;Lg/brv;J)V

    goto/16 :goto_15

    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v2, v3}, Lg/ees;->onActivityResumed(Lg/bjq;J)V

    goto/16 :goto_15

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v2, v3}, Lg/ees;->onActivityPaused(Lg/bjq;J)V

    goto/16 :goto_15

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v2, v3}, Lg/ees;->onActivityDestroyed(Lg/bjq;J)V

    goto/16 :goto_15

    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object v1

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lg/m;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v2, v3, v4}, Lg/ees;->onActivityCreated(Lg/bjq;Landroid/os/Bundle;J)V

    goto/16 :goto_15

    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v2, v3}, Lg/ees;->onActivityStopped(Lg/bjq;J)V

    goto/16 :goto_15

    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v2, v3}, Lg/ees;->onActivityStarted(Lg/bjq;J)V

    goto/16 :goto_15

    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v2, v3}, Lg/ees;->endAdUnitExposure(Ljava/lang/String;J)V

    goto/16 :goto_15

    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v2, v3}, Lg/ees;->beginAdUnitExposure(Ljava/lang/String;J)V

    goto/16 :goto_15

    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_f

    goto :goto_7

    :cond_f
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lg/brv;

    if-eqz v3, :cond_10

    move-object v5, v2

    check-cast v5, Lg/brv;

    goto :goto_7

    :cond_10
    new-instance v5, Lg/cjw;

    invoke-direct {v5, v1}, Lg/cjw;-><init>(Landroid/os/IBinder;)V

    :goto_7
    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v5}, Lg/ees;->generateEventId(Lg/brv;)V

    goto/16 :goto_15

    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_11

    goto :goto_8

    :cond_11
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lg/brv;

    if-eqz v3, :cond_12

    move-object v5, v2

    check-cast v5, Lg/brv;

    goto :goto_8

    :cond_12
    new-instance v5, Lg/cjw;

    invoke-direct {v5, v1}, Lg/cjw;-><init>(Landroid/os/IBinder;)V

    :goto_8
    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v5}, Lg/ees;->getGmpAppId(Lg/brv;)V

    goto/16 :goto_15

    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_9

    :cond_13
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lg/brv;

    if-eqz v3, :cond_14

    move-object v5, v2

    check-cast v5, Lg/brv;

    goto :goto_9

    :cond_14
    new-instance v5, Lg/cjw;

    invoke-direct {v5, v1}, Lg/cjw;-><init>(Landroid/os/IBinder;)V

    :goto_9
    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v5}, Lg/ees;->getAppInstanceId(Lg/brv;)V

    goto/16 :goto_15

    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_15

    goto :goto_a

    :cond_15
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lg/brv;

    if-eqz v3, :cond_16

    move-object v5, v2

    check-cast v5, Lg/brv;

    goto :goto_a

    :cond_16
    new-instance v5, Lg/cjw;

    invoke-direct {v5, v1}, Lg/cjw;-><init>(Landroid/os/IBinder;)V

    :goto_a
    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v5}, Lg/ees;->getCachedAppInstanceId(Lg/brv;)V

    goto/16 :goto_15

    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_b

    :cond_17
    const-string v2, "com.google.android.gms.measurement.api.internal.IStringProvider"

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lg/grg;

    if-eqz v4, :cond_18

    move-object v5, v3

    check-cast v5, Lg/grg;

    goto :goto_b

    :cond_18
    new-instance v5, Lg/ffz;

    const/4 v3, 0x3

    invoke-direct {v5, v1, v2, v3}, Lg/ob;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    :goto_b
    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v5}, Lg/ees;->setInstanceIdProvider(Lg/grg;)V

    goto/16 :goto_15

    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_19

    goto :goto_c

    :cond_19
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lg/brv;

    if-eqz v3, :cond_1a

    move-object v5, v2

    check-cast v5, Lg/brv;

    goto :goto_c

    :cond_1a
    new-instance v5, Lg/cjw;

    invoke-direct {v5, v1}, Lg/cjw;-><init>(Landroid/os/IBinder;)V

    :goto_c
    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v5}, Lg/ees;->getCurrentScreenClass(Lg/brv;)V

    goto/16 :goto_15

    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1b

    goto :goto_d

    :cond_1b
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lg/brv;

    if-eqz v3, :cond_1c

    move-object v5, v2

    check-cast v5, Lg/brv;

    goto :goto_d

    :cond_1c
    new-instance v5, Lg/cjw;

    invoke-direct {v5, v1}, Lg/cjw;-><init>(Landroid/os/IBinder;)V

    :goto_d
    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v5}, Lg/ees;->getCurrentScreenName(Lg/brv;)V

    goto/16 :goto_15

    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lg/ees;->setCurrentScreen(Lg/bjq;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_15

    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v2}, Lg/ees;->setSessionTimeoutDuration(J)V

    goto/16 :goto_15

    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v2}, Lg/ees;->setMinimumSessionDuration(J)V

    goto/16 :goto_15

    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v2}, Lg/ees;->resetAnalyticsData(J)V

    goto/16 :goto_15

    :pswitch_22
    sget-object v1, Lg/m;->a:Ljava/lang/ClassLoader;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v3, 0x1

    :cond_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v3, v1, v2}, Lg/ees;->setMeasurementEnabled(ZJ)V

    goto/16 :goto_15

    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_1e

    goto :goto_e

    :cond_1e
    invoke-interface {v3, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    instance-of v5, v4, Lg/brv;

    if-eqz v5, :cond_1f

    move-object v5, v4

    check-cast v5, Lg/brv;

    goto :goto_e

    :cond_1f
    new-instance v5, Lg/cjw;

    invoke-direct {v5, v3}, Lg/cjw;-><init>(Landroid/os/IBinder;)V

    :goto_e
    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v2, v5}, Lg/ees;->getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lg/brv;)V

    goto/16 :goto_15

    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Lg/m;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v2, v3}, Lg/ees;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_15

    :pswitch_25
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lg/m;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v2, v3}, Lg/ees;->setConditionalUserProperty(Landroid/os/Bundle;J)V

    goto/16 :goto_15

    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v2, v3}, Lg/ees;->setUserId(Ljava/lang/String;J)V

    goto/16 :goto_15

    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_20

    goto :goto_f

    :cond_20
    invoke-interface {v2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lg/brv;

    if-eqz v4, :cond_21

    move-object v5, v3

    check-cast v5, Lg/brv;

    goto :goto_f

    :cond_21
    new-instance v5, Lg/cjw;

    invoke-direct {v5, v2}, Lg/cjw;-><init>(Landroid/os/IBinder;)V

    :goto_f
    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v5}, Lg/ees;->getMaxUserProperties(Ljava/lang/String;Lg/brv;)V

    goto/16 :goto_15

    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v7, Lg/m;->a:Ljava/lang/ClassLoader;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_22

    const/4 v3, 0x1

    :cond_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    if-nez v7, :cond_23

    goto :goto_10

    :cond_23
    invoke-interface {v7, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    instance-of v5, v4, Lg/brv;

    if-eqz v5, :cond_24

    move-object v5, v4

    check-cast v5, Lg/brv;

    goto :goto_10

    :cond_24
    new-instance v5, Lg/cjw;

    invoke-direct {v5, v7}, Lg/cjw;-><init>(Landroid/os/IBinder;)V

    :goto_10
    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v2, v3, v5}, Lg/ees;->getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLg/brv;)V

    goto/16 :goto_15

    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object v4

    sget-object v5, Lg/m;->a:Ljava/lang/ClassLoader;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_25

    const/4 v3, 0x1

    :cond_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    move-object v0, v4

    move v4, v3

    move-object v3, v0

    move-object v0, p0

    invoke-interface/range {v0 .. v6}, Lg/ees;->setUserProperty(Ljava/lang/String;Ljava/lang/String;Lg/bjq;ZJ)V

    goto/16 :goto_15

    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lg/m;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_26

    :goto_11
    move-object v4, v5

    goto :goto_12

    :cond_26
    invoke-interface {v0, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    instance-of v5, v4, Lg/brv;

    if-eqz v5, :cond_27

    move-object v5, v4

    check-cast v5, Lg/brv;

    goto :goto_11

    :cond_27
    new-instance v5, Lg/cjw;

    invoke-direct {v5, v0}, Lg/cjw;-><init>(Landroid/os/IBinder;)V

    goto :goto_11

    :goto_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    move-object v0, p0

    invoke-interface/range {v0 .. v6}, Lg/ees;->logEventAndBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lg/brv;J)V

    goto :goto_15

    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lg/m;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_28

    const/4 v4, 0x1

    goto :goto_13

    :cond_28
    const/4 v4, 0x0

    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_29

    const/4 v5, 0x1

    goto :goto_14

    :cond_29
    const/4 v5, 0x0

    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    move-object v3, v0

    move-object v0, p0

    invoke-interface/range {v0 .. v7}, Lg/ees;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    goto :goto_15

    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object v1

    sget-object v2, Lg/apu;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lg/m;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lg/apu;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {p2}, Lg/m;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v2, v4, v5}, Lg/ees;->initialize(Lg/bjq;Lg/apu;J)V

    :goto_15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
