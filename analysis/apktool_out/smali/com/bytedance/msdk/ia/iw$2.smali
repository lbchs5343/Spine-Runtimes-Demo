.class final Lcom/bytedance/msdk/ia/iw$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ia/iw;->d(Landroid/content/Context;Landroid/location/LocationManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/location/LocationManager;

.field final synthetic dq:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ia/iw$2;->dq:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/msdk/ia/iw$2;->d:Landroid/location/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/bytedance/msdk/ia/iw;->dq(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ia/iw$2;->dq:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/bytedance/msdk/ia/iw;->dq(Landroid/content/Context;Landroid/location/Location;)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/ia/iw$2;->d:Landroid/location/LocationManager;

    invoke-static {p1, p0}, Lcom/bytedance/msdk/ia/iw;->dq(Landroid/location/LocationManager;Landroid/location/LocationListener;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
