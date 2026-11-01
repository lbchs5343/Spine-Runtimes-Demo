.class public final Lg/aka;
.super Lg/eit;
.source "SourceFile"


# instance fields
.field public final d:Lg/gja;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lg/daw;Lg/gja;Lg/fbd;Lg/fbd;)V
    .locals 7

    const/16 v3, 0x10e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lg/eit;-><init>(Landroid/content/Context;Landroid/os/Looper;ILg/daw;Lg/fwr;Lg/dko;)V

    iput-object p4, v0, Lg/aka;->d:Lg/gja;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.service.IClientTelemetryService"

    return-object v0
.end method

.method public final an()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lg/aka;->d:Lg/gja;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final ao()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.common.telemetry.service.START"

    return-object v0
.end method

.method public final c(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.common.internal.service.IClientTelemetryService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lg/drm;

    if-eqz v2, :cond_1

    check-cast v1, Lg/drm;

    return-object v1

    :cond_1
    new-instance v1, Lg/drm;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lg/ob;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-object v1
.end method

.method public final getApiFeatures()[Lg/cqg;
    .locals 1

    sget-object v0, Lg/fkh;->b:[Lg/cqg;

    return-object v0
.end method

.method public final getMinApkVersion()I
    .locals 1

    const v0, 0xc1fa340

    return v0
.end method
