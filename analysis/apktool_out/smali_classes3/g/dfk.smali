.class public final Lg/dfk;
.super Lg/cgo;
.source "SourceFile"


# instance fields
.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lg/dfk;->d:I

    invoke-direct {p0, p1}, Lg/cgo;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lg/dfk;->d:I

    packed-switch v0, :pswitch_data_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.client.IAdPreloaderCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lg/axj;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Lg/axj;

    goto :goto_0

    :cond_1
    new-instance v0, Lg/axj;

    invoke-direct {v0, p1}, Lg/axj;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1

    :pswitch_0
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lg/fgg;

    if-eqz v1, :cond_3

    move-object p1, v0

    check-cast p1, Lg/fgg;

    goto :goto_1

    :cond_3
    new-instance v0, Lg/fgg;

    invoke-direct {v0, p1}, Lg/fgg;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_1
    return-object p1

    :pswitch_1
    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lg/gux;

    if-eqz v1, :cond_5

    move-object p1, v0

    check-cast p1, Lg/gux;

    goto :goto_2

    :cond_5
    new-instance v0, Lg/gux;

    invoke-direct {v0, p1}, Lg/gux;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_2
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
