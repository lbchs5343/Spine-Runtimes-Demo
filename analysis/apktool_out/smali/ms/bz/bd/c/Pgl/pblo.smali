.class public abstract Lms/bz/bd/c/Pgl/pblo;
.super Lms/bz/bd/c/Pgl/pblb$pgla;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lms/bz/bd/c/Pgl/pblb$pgla;-><init>()V

    return-void
.end method

.method public static c(Ljava/io/BufferedInputStream;)V
    .locals 6

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p0, 0x5

    new-array v5, p0, [B

    fill-array-data v5, :array_0

    const-wide/16 v2, 0x0

    const-string v4, "e8d1f5"

    const v0, 0x1000001

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :array_0
    .array-data 1
        0x79t
        0x39t
        0x28t
        0x46t
        0x50t
    .end array-data
.end method

.method public static d(Ljava/io/DataOutputStream;)V
    .locals 6

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p0, 0x5

    new-array v5, p0, [B

    fill-array-data v5, :array_0

    const-wide/16 v2, 0x0

    const-string v4, "84031b"

    const v0, 0x1000001

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :array_0
    .array-data 1
        0x24t
        0x35t
        0x7ct
        0x44t
        0x1t
    .end array-data
.end method


# virtual methods
.method public final b(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/16 p2, 0x1b

    new-array v5, p2, [B

    fill-array-data v5, :array_0

    const-wide/16 v2, 0x0

    const-string v4, "cdd909"

    const v0, 0x1000001

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    :try_start_0
    sget-object p3, Lms/bz/bd/c/Pgl/pgla;->a:Lms/bz/bd/c/Pgl/pgla;

    iget-object p3, p3, Lms/bz/bd/c/Pgl/pgla;->b:Landroid/content/Context;

    const/4 p4, 0x0

    const/4 v0, 0x0

    :goto_0
    if-gtz v0, :cond_0

    aget-object v1, p2, p4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {p3, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p6, [Ljava/lang/Object;

    aget-object p1, p6, p4

    check-cast p1, Ljava/lang/String;

    aget-object p2, p6, p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p5, p1, p2}, Lms/bz/bd/c/Pgl/pblo;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p6, [Ljava/lang/Object;

    aget-object p1, p6, p4

    check-cast p1, Ljava/lang/String;

    aget-object p2, p6, p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p5, p1, p2}, Lms/bz/bd/c/Pgl/pblo;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_2
    check-cast p6, [Ljava/lang/Object;

    aget-object p1, p6, p4

    check-cast p1, [B

    aget-object p2, p6, p2

    check-cast p2, Ljava/lang/String;

    const/4 p3, 0x2

    aget-object p3, p6, p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p5, p2, p3, p1}, Lms/bz/bd/c/Pgl/pblo;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_0
    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x30001
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x73t
        0x68t
        0x13t
        0x5ft
        0x0t
        0x27t
        0x64t
        0xbt
        0x25t
        0x6ct
        0x60t
        0x6bt
        0x1et
        0x5et
        0x1ct
        0x27t
        0x6ft
        0x4bt
        0x7bt
        0x40t
        0x5ct
        0x52t
        0x32t
        0x7ft
        0x21t
        0xbt
        0x54t
    .end array-data
.end method

.method public abstract e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
.end method

.method public abstract f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
.end method

.method public abstract g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)[Ljava/lang/Object;
.end method
