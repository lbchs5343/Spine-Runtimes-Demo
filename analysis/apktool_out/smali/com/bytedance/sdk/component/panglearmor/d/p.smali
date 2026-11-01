.class public Lcom/bytedance/sdk/component/panglearmor/d/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/panglearmor/d/p$dq;
    }
.end annotation


# static fields
.field private static volatile dq:Lcom/bytedance/sdk/component/panglearmor/d/p;


# instance fields
.field private volatile cd:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile d:Z

.field private f:J

.field private volatile fw:Z

.field private volatile gh:Lcom/bytedance/sdk/component/panglearmor/d/p$dq;

.field private final ia:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final ig:I

.field private final iw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private jy:Landroid/hardware/Sensor;

.field private final kk:I

.field private final mn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mp:I

.field private final no:I

.field private final o:I

.field private final ox:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private q:Landroid/hardware/Sensor;

.field private volatile r:I

.field private final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->d:Z

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->ox:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->p:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->s:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->iw:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->mn:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->ia:Ljava/util/List;

    iput v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->kk:I

    iput v2, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->o:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->no:I

    const/16 v3, 0x10

    iput v3, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->ig:I

    const/16 v3, 0x20

    iput v3, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->mp:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->q:Landroid/hardware/Sensor;

    iput-object v3, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->jy:Landroid/hardware/Sensor;

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->f:J

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->fw:Z

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->cd:Ljava/util/concurrent/atomic/AtomicInteger;

    iput v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->r:I

    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/iw;->p()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "sensor"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->q:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->jy:Landroid/hardware/Sensor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/component/panglearmor/d/p;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->p:Ljava/util/List;

    return-object p0
.end method

.method public static dq()Lcom/bytedance/sdk/component/panglearmor/d/p;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/component/panglearmor/d/p;->dq:Lcom/bytedance/sdk/component/panglearmor/d/p;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/component/panglearmor/d/p;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/panglearmor/d/p;->dq:Lcom/bytedance/sdk/component/panglearmor/d/p;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/component/panglearmor/d/p;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/panglearmor/d/p;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/component/panglearmor/d/p;->dq:Lcom/bytedance/sdk/component/panglearmor/d/p;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/sdk/component/panglearmor/d/p;->dq:Lcom/bytedance/sdk/component/panglearmor/d/p;

    return-object v0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/panglearmor/d/p;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->ox:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/panglearmor/d/p;[F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/panglearmor/d/p;->dq([F)V

    return-void
.end method

.method private dq([F)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->f:J

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "t"

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/panglearmor/d/p;->p()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "val"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/d/d;->dq()Lcom/bytedance/sdk/component/panglearmor/d/d;

    move-result-object p1

    const-string v1, "sp_angle"

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/component/panglearmor/d/d;->dq(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/d/d;->dq()Lcom/bytedance/sdk/component/panglearmor/d/d;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/iw;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/q;->ox(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/panglearmor/d/d;->dq(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/panglearmor/d/p;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->fw:Z

    return p1
.end method

.method public static synthetic ia(Lcom/bytedance/sdk/component/panglearmor/d/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/panglearmor/d/p;->mn()V

    return-void
.end method

.method public static synthetic iw(Lcom/bytedance/sdk/component/panglearmor/d/p;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->ia:Ljava/util/List;

    return-object p0
.end method

.method private declared-synchronized iw()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->ox:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->iw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->d:Z

    invoke-direct {p0}, Lcom/bytedance/sdk/component/panglearmor/d/p;->s()V

    new-instance v0, Lcom/bytedance/sdk/component/panglearmor/d/p$1;

    const-string v1, "har"

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/component/panglearmor/d/p$1;-><init>(Lcom/bytedance/sdk/component/panglearmor/d/p;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/mn;->d(Lcom/bytedance/sdk/component/o/kk;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->cd:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/panglearmor/d/p;->s()V

    invoke-direct {p0}, Lcom/bytedance/sdk/component/panglearmor/d/p;->mn()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->fw:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static synthetic mn(Lcom/bytedance/sdk/component/panglearmor/d/p;)Lcom/bytedance/sdk/component/panglearmor/d/p$dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->gh:Lcom/bytedance/sdk/component/panglearmor/d/p$dq;

    return-object p0
.end method

.method private mn()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->ox:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->iw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->mn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->ia:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/component/panglearmor/d/p;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->s:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic p(Lcom/bytedance/sdk/component/panglearmor/d/p;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->iw:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic s(Lcom/bytedance/sdk/component/panglearmor/d/p;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->mn:Ljava/util/List;

    return-object p0
.end method

.method private s()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->cd:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/iw;->p()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->q:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->jy:Landroid/hardware/Sensor;

    if-eqz v1, :cond_1

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized d()Z
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->r:I

    iget-boolean v1, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->fw:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->q:Landroid/hardware/Sensor;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->jy:Landroid/hardware/Sensor;

    if-eqz v1, :cond_4

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->fw:Z

    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/iw;->p()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const/16 v3, 0x20

    :try_start_2
    iget-object v4, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->q:Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v4, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v4

    iget-object v5, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->jy:Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v5, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    if-eqz v4, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->fw:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->d:Z

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_2
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->r:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->r:I

    invoke-direct {p0}, Lcom/bytedance/sdk/component/panglearmor/d/p;->s()V

    invoke-direct {p0}, Lcom/bytedance/sdk/component/panglearmor/d/p;->mn()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    :try_start_3
    iget v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->r:I

    const/16 v2, 0x20

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->r:I

    goto :goto_2

    :cond_4
    iget v1, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->r:I

    iget-object v2, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->q:Landroid/hardware/Sensor;

    if-nez v2, :cond_5

    const/4 v2, 0x2

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    or-int/2addr v1, v2

    iput v1, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->r:I

    iget v1, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->r:I

    iget-object v2, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->jy:Landroid/hardware/Sensor;

    if-nez v2, :cond_6

    const/16 v0, 0x10

    move v0, v1

    const/16 v2, 0x10

    goto :goto_2

    :cond_6
    move v0, v1

    const/4 v2, 0x0

    :goto_2
    or-int/2addr v0, v2

    iput v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->r:I

    :goto_3
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->fw:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v0

    :goto_4
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public dq(Lcom/bytedance/sdk/component/panglearmor/d/p$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->gh:Lcom/bytedance/sdk/component/panglearmor/d/p$dq;

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->cd:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->iw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->iw:Ljava/util/List;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v4, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->mn:Ljava/util/List;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->ia:Ljava/util/List;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/panglearmor/d/p;->iw()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->ox:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->ox:Ljava/util/List;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v4, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->p:Ljava/util/List;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->s:Ljava/util/List;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/bytedance/sdk/component/panglearmor/d/p;->iw()V

    return-void
.end method

.method public ox()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->fw:Z

    return v0
.end method

.method public p()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/p;->f:J

    return-wide v0
.end method
