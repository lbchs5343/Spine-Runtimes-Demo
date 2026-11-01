.class public Lms/bz/bd/c/Pgl/m1;
.super Ljava/lang/Object;


# static fields
.field public static a:Lms/bz/bd/c/Pgl/m1;


# instance fields
.field public b:Landroid/content/Context;

.field public c:Ljava/util/ArrayList;


# direct methods
.method public static d(Landroid/content/Context;)Lms/bz/bd/c/Pgl/m1;
    .locals 3

    sget-object v0, Lms/bz/bd/c/Pgl/m1;->a:Lms/bz/bd/c/Pgl/m1;

    if-nez v0, :cond_1

    const-class v0, Lms/bz/bd/c/Pgl/m1;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lms/bz/bd/c/Pgl/m1;->a:Lms/bz/bd/c/Pgl/m1;

    if-nez v1, :cond_0

    new-instance v1, Lms/bz/bd/c/Pgl/m1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v1, Lms/bz/bd/c/Pgl/m1;->b:Landroid/content/Context;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lms/bz/bd/c/Pgl/m1;->c:Ljava/util/ArrayList;

    iput-object p0, v1, Lms/bz/bd/c/Pgl/m1;->b:Landroid/content/Context;

    sput-object v1, Lms/bz/bd/c/Pgl/m1;->a:Lms/bz/bd/c/Pgl/m1;

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
    sget-object p0, Lms/bz/bd/c/Pgl/m1;->a:Lms/bz/bd/c/Pgl/m1;

    return-object p0
.end method


# virtual methods
.method public final e()I
    .locals 10

    iget-object v0, p0, Lms/bz/bd/c/Pgl/m1;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const/16 v2, 0x25

    new-array v8, v2, [B

    fill-array-data v8, :array_0

    const-wide/16 v5, 0x0

    const-string v7, "a3fd2d"

    const v3, 0x1000001

    const/4 v4, 0x0

    invoke-static/range {v3 .. v8}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x5

    new-array v8, v2, [B

    fill-array-data v8, :array_1

    const-wide/16 v5, 0x0

    const-string v7, "9a4937"

    const v3, 0x1000001

    const/4 v4, 0x0

    invoke-static/range {v3 .. v8}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    new-array v9, v2, [B

    fill-array-data v9, :array_2

    const-wide/16 v6, 0x0

    const-string v8, "b120ad"

    const v4, 0x1000001

    const/4 v5, 0x0

    invoke-static/range {v4 .. v9}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-float v1, v3

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v1, v1, v0

    const/high16 v0, 0x41200000    # 10.0f

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    return v0

    :array_0
    .array-data 1
        0x71t
        0x3ft
        0x11t
        0x2t
        0x2t
        0x7at
        0x66t
        0x5ct
        0x3et
        0x3at
        0x64t
        0x34t
        0x1bt
        0x4t
        0x43t
        0x72t
        0x61t
        0x6t
        0x3et
        0x3bt
        0x7et
        0x7ft
        0x37t
        0x31t
        0x39t
        0x47t
        0x47t
        0x20t
        0xet
        0xbt
        0x53t
        0x19t
        0x34t
        0x3et
        0x2at
        0x56t
        0x46t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x24t
        0x66t
        0x51t
        0x48t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x60t
        0x30t
        0x40t
        0x48t
        0x5bt
    .end array-data
.end method

.method public final f()I
    .locals 9

    iget-object v0, p0, Lms/bz/bd/c/Pgl/m1;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const/16 v2, 0x25

    new-array v8, v2, [B

    fill-array-data v8, :array_0

    const-wide/16 v5, 0x0

    const-string v7, "8c45bd"

    const v3, 0x1000001

    const/4 v4, 0x0

    invoke-static/range {v3 .. v8}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x7

    new-array v8, v2, [B

    fill-array-data v8, :array_1

    const-wide/16 v5, 0x0

    const-string v7, "ed9b54"

    const v3, 0x1000001

    const/4 v4, 0x0

    invoke-static/range {v3 .. v8}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0

    :array_0
    .array-data 1
        0x28t
        0x6ft
        0x43t
        0x53t
        0x52t
        0x7at
        0x3ft
        0xct
        0x6ct
        0x6bt
        0x3dt
        0x64t
        0x49t
        0x55t
        0x13t
        0x72t
        0x38t
        0x56t
        0x6ct
        0x6at
        0x27t
        0x2ft
        0x65t
        0x60t
        0x69t
        0x47t
        0x1et
        0x70t
        0x5ct
        0x5at
        0xat
        0x49t
        0x66t
        0x6ft
        0x7at
        0x56t
        0x1ft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x64t
        0x6at
        0x5ft
        0x11t
        0xdt
        0x26t
        0x62t
    .end array-data
.end method
