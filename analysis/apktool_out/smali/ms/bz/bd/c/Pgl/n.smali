.class final Lms/bz/bd/c/Pgl/n;
.super Lms/bz/bd/c/Pgl/pblb$pgla;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lms/bz/bd/c/Pgl/pblb$pgla;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    sget-object p1, Lms/bz/bd/c/Pgl/pgla;->a:Lms/bz/bd/c/Pgl/pgla;

    iget-object p1, p1, Lms/bz/bd/c/Pgl/pgla;->b:Landroid/content/Context;

    invoke-static {p1}, Lms/bz/bd/c/Pgl/m1;->d(Landroid/content/Context;)Lms/bz/bd/c/Pgl/m1;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-static {}, Lms/bz/bd/c/Pgl/h1;->d()Landroid/app/Activity;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p2, :cond_0

    :try_start_1
    monitor-enter p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p1}, Lms/bz/bd/c/Pgl/m1;->f()I

    move-result p2

    invoke-virtual {p1}, Lms/bz/bd/c/Pgl/m1;->e()I

    move-result v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    mul-int/lit16 p2, p2, 0x2710

    add-int/2addr p2, v0

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p2, v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    throw p1

    :catch_0
    const/16 p2, -0x2711

    goto :goto_0

    :goto_1
    iget-object v0, p1, Lms/bz/bd/c/Pgl/m1;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_5
    iget-object p2, p1, Lms/bz/bd/c/Pgl/m1;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/16 v0, 0x14

    if-le p2, v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lms/bz/bd/c/Pgl/m1;->c:Ljava/util/ArrayList;

    add-int/lit8 v2, p2, -0xa

    invoke-virtual {v1, v2, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p2, p1, Lms/bz/bd/c/Pgl/m1;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iput-object v0, p1, Lms/bz/bd/c/Pgl/m1;->c:Ljava/util/ArrayList;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_2
    :cond_0
    const/16 p1, 0x2c

    new-array v5, p1, [B

    fill-array-data v5, :array_0

    const-wide/16 v2, 0x0

    const-string v4, "82df2d"

    const v0, 0x1000001

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :catchall_3
    :cond_1
    :goto_2
    const/4 p1, 0x0

    return-object p1

    nop

    :array_0
    .array-data 1
        0x2at
        0x38t
        0x12t
        0x11t
        0x6t
        0x33t
        0x3dt
        0x16t
        0x21t
        0x35t
        0x21t
        0x12t
        0x16t
        0x6t
        0x19t
        0x76t
        0x29t
        0xat
        0x6t
        0x22t
        0x28t
        0x24t
        0x2t
        0x1t
        0x3et
        0x67t
        0x29t
        0x1at
        0x3bt
        0x31t
        0x69t
        0x39t
        0x19t
        0x52t
        0xft
        0x72t
        0x38t
        0x18t
        0x32t
        0x24t
        0x26t
        0x25t
        0x19t
        0x16t
    .end array-data
.end method
