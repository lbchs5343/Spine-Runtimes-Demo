.class public Lcom/bytedance/sdk/openadsdk/q/iw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/q/iw$dq;
    }
.end annotation


# instance fields
.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/q/ia;",
            ">;"
        }
    .end annotation
.end field

.field private dq:Landroid/content/Context;

.field private iw:Landroid/hardware/SensorEventListener;

.field private mn:Landroid/hardware/SensorEventListener;

.field private ox:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/q/iw$dq;",
            ">;"
        }
    .end annotation
.end field

.field private p:Landroid/hardware/SensorEventListener;

.field private s:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/q/ia;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/q/iw$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$1;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->p:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/q/iw$12;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$12;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->s:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/q/iw$23;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$23;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->iw:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/q/iw$34;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$34;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->mn:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/q/ia;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->dq:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->d:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/q/iw;->ox()V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/q/iw;)Lcom/bytedance/sdk/openadsdk/q/dq;
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/q/iw;->s()Lcom/bytedance/sdk/openadsdk/q/dq;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/q/iw;)Lcom/bytedance/sdk/openadsdk/q/ia;
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/q/iw;->p()Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic iw(Lcom/bytedance/sdk/openadsdk/q/iw;)Landroid/hardware/SensorEventListener;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->iw:Landroid/hardware/SensorEventListener;

    return-object p0
.end method

.method public static synthetic mn(Lcom/bytedance/sdk/openadsdk/q/iw;)Landroid/hardware/SensorEventListener;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->mn:Landroid/hardware/SensorEventListener;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/q/iw;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->dq:Landroid/content/Context;

    return-object p0
.end method

.method private ox()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$45;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$45;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "adInfo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$56;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$56;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "appInfo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$61;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$61;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "playableSDKInfo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$62;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$62;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "subscribe_app_ad"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$63;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$63;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "download_app_ad"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$2;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "isViewable"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$3;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "getVolume"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$4;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "getScreenSize"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$5;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "start_accelerometer_observer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$6;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$6;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "close_accelerometer_observer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$7;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$7;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "start_gyro_observer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$8;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$8;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "close_gyro_observer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$9;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$9;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "start_accelerometer_grativityless_observer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$10;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$10;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "close_accelerometer_grativityless_observer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$11;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$11;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "start_rotation_vector_observer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$13;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$13;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "close_rotation_vector_observer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$14;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$14;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "device_shake"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$15;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$15;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "device_shake_short"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$16;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$16;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "playable_style"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$17;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$17;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "sendReward"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$18;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$18;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "webview_time_track"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$19;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$19;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "playable_event"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$20;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$20;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "reportAd"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$21;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$21;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "close"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$22;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$22;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "openAdLandPageLinks"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$24;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$24;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "get_viewport"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$25;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$25;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "jssdk_load_finish"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$26;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$26;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "playable_material_render_result"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$27;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$27;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "detect_change_playable_click"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$28;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$28;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "check_camera_permission"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$29;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$29;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "check_external_storage"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$30;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$30;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "playable_open_camera"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$31;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$31;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "playable_pick_photo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$32;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$32;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "playable_download_media_in_photos"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$33;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$33;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "playable_preventTouchEvent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$35;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$35;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "playable_settings_info"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$36;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$36;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "playable_load_main_scene"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$37;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$37;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "playable_enter_section"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$38;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$38;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "playable_end"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$39;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$39;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "playable_finish_play_playable"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$40;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$40;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "playable_transfrom_module_show"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$41;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$41;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "playable_transfrom_module_change_color"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$42;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$42;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "playable_set_scroll_rect"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$43;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$43;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "playable_click_area"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$44;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$44;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "playable_real_play_start"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$46;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$46;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "playable_material_first_frame_show"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$47;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$47;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "playable_stuck_check_pong"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$48;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$48;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "playable_material_adnormal_mask"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$49;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$49;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "playable_long_press_panel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$50;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$50;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "playable_alpha_player_play"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$51;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$51;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "playable_transfrom_module_highlight"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$52;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$52;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "playable_send_click_event"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$53;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$53;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "playable_query_media_permission_declare"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$54;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$54;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "playable_query_media_permission_enable"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$55;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$55;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "playable_apply_media_permission"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$57;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$57;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "playable_start_kws"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$58;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$58;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "playable_close_kws"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$59;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$59;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "playable_video_preload_task_add"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/q/iw$60;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/q/iw$60;-><init>(Lcom/bytedance/sdk/openadsdk/q/iw;)V

    const-string v2, "playable_video_preload_task_cancel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/q/iw;)Landroid/hardware/SensorEventListener;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->p:Landroid/hardware/SensorEventListener;

    return-object p0
.end method

.method private p()Lcom/bytedance/sdk/openadsdk/q/ia;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->d:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/q/ia;

    return-object v0
.end method

.method public static synthetic s(Lcom/bytedance/sdk/openadsdk/q/iw;)Landroid/hardware/SensorEventListener;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->s:Landroid/hardware/SensorEventListener;

    return-object p0
.end method

.method private s()Lcom/bytedance/sdk/openadsdk/q/dq;
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/q/iw;->p()Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/q/ia;->fw()Lcom/bytedance/sdk/openadsdk/q/dq;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->dq:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->p:Landroid/hardware/SensorEventListener;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/q/o;->dq(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->dq:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->s:Landroid/hardware/SensorEventListener;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/q/o;->dq(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->dq:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->iw:Landroid/hardware/SensorEventListener;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/q/o;->dq(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->dq:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->mn:Landroid/hardware/SensorEventListener;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/q/o;->dq(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method public dq()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public dq(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/iw;->ox:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/q/iw$dq;

    if-nez p1, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "code"

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/q/iw$dq;->dq(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :goto_0
    const-string p2, "PlayableJsBridge"

    const-string v0, "invoke error"

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/q/mn;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method
