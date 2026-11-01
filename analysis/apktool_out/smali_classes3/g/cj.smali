.class public final Lg/cj;
.super Lg/cwp;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:Lg/adw;


# direct methods
.method public constructor <init>(Lg/adw;I)V
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.IGmsCallbacks"

    invoke-direct {p0, v0}, Lg/cwp;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lg/cj;->b:Lg/adw;

    iput p2, p0, Lg/cj;->a:I

    return-void
.end method


# virtual methods
.method public final c(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 8

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_7

    const/4 v3, 0x2

    if-eq p1, v3, :cond_6

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    sget-object v4, Lg/gus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, Lg/bon;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lg/gus;

    invoke-static {p2}, Lg/bon;->c(Landroid/os/Parcel;)V

    iget-object p2, p0, Lg/cj;->b:Lg/adw;

    const-string v5, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService"

    invoke-static {p2, v5}, Lg/ckd;->w(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lg/ckd;->k(Ljava/lang/Object;)V

    iput-object v4, p2, Lg/adw;->z:Lg/gus;

    invoke-virtual {p2}, Lg/adw;->usesClientTelemetry()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, v4, Lg/gus;->zzd:Lg/csf;

    invoke-static {}, Lg/cbn;->d()Lg/cbn;

    move-result-object v5

    if-nez p2, :cond_1

    move-object p2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lg/csf;->zza()Lg/fzo;

    move-result-object p2

    :goto_0
    monitor-enter v5

    if-nez p2, :cond_4

    :try_start_0
    sget-object p2, Lg/cbn;->b:Lg/fzo;

    :cond_2
    :goto_1
    iput-object p2, v5, Lg/cbn;->c:Lg/fzo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v5

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_4
    :try_start_1
    iget-object v6, v5, Lg/cbn;->c:Lg/fzo;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lg/fzo;->getVersion()I

    move-result v6

    invoke-virtual {p2}, Lg/fzo;->getVersion()I

    move-result v7

    if-ge v6, v7, :cond_3

    goto :goto_1

    :goto_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_5
    :goto_3
    iget-object p2, v4, Lg/gus;->zza:Landroid/os/Bundle;

    iget-object v4, p0, Lg/cj;->b:Lg/adw;

    const-string v5, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v4, v5}, Lg/ckd;->w(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lg/cj;->b:Lg/adw;

    iget v5, p0, Lg/cj;->a:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lg/qv;

    invoke-direct {v6, v4, p1, v3, p2}, Lg/qv;-><init>(Lg/adw;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    iget-object p1, v4, Lg/adw;->p:Lg/bmp;

    invoke-virtual {p1, v2, v5, v0, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-object v1, p0, Lg/cj;->b:Lg/adw;

    goto :goto_4

    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lg/bon;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p2}, Lg/bon;->c(Landroid/os/Parcel;)V

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "GmsClient"

    const-string v0, "received deprecated onAccountValidationComplete callback, ignoring"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, Lg/bon;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-static {p2}, Lg/bon;->c(Landroid/os/Parcel;)V

    iget-object p2, p0, Lg/cj;->b:Lg/adw;

    const-string v5, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {p2, v5}, Lg/ckd;->w(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lg/cj;->b:Lg/adw;

    iget v5, p0, Lg/cj;->a:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lg/qv;

    invoke-direct {v6, p2, p1, v3, v4}, Lg/qv;-><init>(Lg/adw;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    iget-object p1, p2, Lg/adw;->p:Lg/bmp;

    invoke-virtual {p1, v2, v5, v0, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-object v1, p0, Lg/cj;->b:Lg/adw;

    :goto_4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2
.end method
