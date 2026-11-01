.class final Lms/bz/bd/c/Pgl/h0;
.super Lms/bz/bd/c/Pgl/pblb$pgla;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lms/bz/bd/c/Pgl/pblb$pgla;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 10

    sget-object p1, Lms/bz/bd/c/Pgl/pgla;->a:Lms/bz/bd/c/Pgl/pgla;

    iget-object p1, p1, Lms/bz/bd/c/Pgl/pgla;->b:Landroid/content/Context;

    :try_start_0
    new-instance p2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "88e73b"

    const/16 v0, 0x48

    :try_start_1
    new-array v5, v0, [B

    fill-array-data v5, :array_0

    const v0, 0x1000001

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lms/bz/bd/c/Pgl/pbly;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p2, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    new-instance v1, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v8, "875264"

    const/16 v2, 0x1e

    :try_start_2
    new-array v9, v2, [B

    fill-array-data v9, :array_1

    const v4, 0x1000001

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v4 .. v9}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lms/bz/bd/c/Pgl/pbly;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    new-array v2, v0, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p2, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-instance v1, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v8, "0aa034"

    const/16 v2, 0x20

    :try_start_3
    new-array v9, v2, [B

    fill-array-data v9, :array_2

    const v4, 0x1000001

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v4 .. v9}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lms/bz/bd/c/Pgl/pbly;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v3

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    const-wide/16 p1, 0x0

    :goto_0
    double-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :array_0
    .array-data 1
        0x7ft
        0x69t
        0x40t
        0x45t
        0x5at
        0x71t
        0x69t
        0x1ct
        0x62t
        0x36t
        0x7ft
        0x3ft
        0x40t
        0x17t
        0x5bt
        0x27t
        0x6dt
        0x1ft
        0x62t
        0x3et
        0x7ft
        0x6et
        0x44t
        0x46t
        0x5at
        0x2ct
        0x6dt
        0x1ct
        0x63t
        0x33t
        0x7ft
        0x6ft
        0x41t
        0x11t
        0x5at
        0x70t
        0x6dt
        0x48t
        0x62t
        0x64t
        0x7bt
        0x3ft
        0x40t
        0x45t
        0x5bt
        0x26t
        0x69t
        0x1ct
        0x61t
        0x37t
        0x7ft
        0x3ct
        0x41t
        0x14t
        0x5at
        0x20t
        0x6ct
        0x4bt
        0x61t
        0x37t
        0x7et
        0x68t
        0x40t
        0x45t
        0x5at
        0x23t
        0x6dt
        0x40t
        0x62t
        0x64t
        0x7ft
        0x6ft
    .end array-data

    :array_1
    .array-data 1
        0x7ft
        0x62t
        0x10t
        0x13t
        0x5et
        0x77t
        0x6ft
        0x47t
        0x33t
        0x34t
        0x7ft
        0x60t
        0x11t
        0x14t
        0x5ft
        0x72t
        0x6dt
        0x41t
        0x32t
        0x37t
        0x7ct
        0x65t
        0x10t
        0x40t
        0x5et
        0x74t
        0x6dt
        0x43t
        0x33t
        0x30t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x77t
        0x31t
        0x44t
        0x15t
        0x5bt
        0x77t
        0x64t
        0x14t
        0x66t
        0x35t
        0x76t
        0x31t
        0x45t
        0x1dt
        0x5et
        0x26t
        0x65t
        0x13t
        0x66t
        0x31t
        0x76t
        0x33t
        0x44t
        0x15t
        0x5at
        0x70t
        0x65t
        0x19t
        0x67t
        0x34t
        0x76t
        0x3at
    .end array-data
.end method
