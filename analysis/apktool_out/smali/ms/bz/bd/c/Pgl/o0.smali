.class public final Lms/bz/bd/c/Pgl/o0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static volatile a:Lms/bz/bd/c/Pgl/o0;


# instance fields
.field public b:[F

.field public c:Ljava/util/ArrayList;

.field public final d:Landroid/hardware/SensorManager;

.field public e:I

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Ljava/text/DecimalFormat;

    const/4 v1, 0x3

    new-array v7, v1, [B

    fill-array-data v7, :array_0

    const-wide/16 v4, 0x0

    const-string v6, "9acf08"

    const v2, 0x1000001

    const/4 v3, 0x0

    invoke-static/range {v2 .. v7}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lms/bz/bd/c/Pgl/o0;->a:Lms/bz/bd/c/Pgl/o0;

    return-void

    nop

    :array_0
    .array-data 1
        0x78t
        0x2dt
        0x40t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lms/bz/bd/c/Pgl/o0;->d:Landroid/hardware/SensorManager;

    const/4 v0, 0x0

    iput v0, p0, Lms/bz/bd/c/Pgl/o0;->f:I

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lms/bz/bd/c/Pgl/o0;->b:[F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lms/bz/bd/c/Pgl/o0;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    new-array v6, v0, [B

    fill-array-data v6, :array_0

    const-wide/16 v3, 0x0

    const-string v5, "25515f"

    const v1, 0x1000001

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lms/bz/bd/c/Pgl/o0;->d:Landroid/hardware/SensorManager;

    :cond_0
    return-void

    :array_0
    .array-data 1
        0x30t
        0x32t
        0x48t
        0x56t
        0x5t
        0x63t
    .end array-data
.end method

.method public static g(Landroid/content/Context;)Lms/bz/bd/c/Pgl/o0;
    .locals 2

    sget-object v0, Lms/bz/bd/c/Pgl/o0;->a:Lms/bz/bd/c/Pgl/o0;

    if-nez v0, :cond_1

    const-class v0, Lms/bz/bd/c/Pgl/o0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lms/bz/bd/c/Pgl/o0;->a:Lms/bz/bd/c/Pgl/o0;

    if-nez v1, :cond_0

    new-instance v1, Lms/bz/bd/c/Pgl/o0;

    invoke-direct {v1, p0}, Lms/bz/bd/c/Pgl/o0;-><init>(Landroid/content/Context;)V

    sput-object v1, Lms/bz/bd/c/Pgl/o0;->a:Lms/bz/bd/c/Pgl/o0;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lms/bz/bd/c/Pgl/o0;->a:Lms/bz/bd/c/Pgl/o0;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized h()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lms/bz/bd/c/Pgl/o0;->d:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget v1, p0, Lms/bz/bd/c/Pgl/o0;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lms/bz/bd/c/Pgl/o0;->e:I

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    const/4 v0, 0x5

    :try_start_1
    new-array v6, v0, [B

    fill-array-data v6, :array_0

    const-string v5, "e05361"

    const v1, 0x1000001

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    nop

    :array_0
    .array-data 1
        0x67t
        0x21t
        0x45t
        0x78t
        0x1ct
    .end array-data
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    iput-object p1, p0, Lms/bz/bd/c/Pgl/o0;->b:[F

    const/4 p1, 0x1

    iput p1, p0, Lms/bz/bd/c/Pgl/o0;->f:I

    return-void
.end method
