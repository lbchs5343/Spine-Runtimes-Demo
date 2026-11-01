.class final Lms/bz/bd/c/Pgl/pbli;
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

    const-string v4, "76f47c"

    const/4 p1, 0x0

    const/16 p2, 0x3b

    :try_start_0
    new-array v5, p2, [B

    fill-array-data v5, :array_0

    const v0, 0x1000001

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "3390f8"

    const/16 v0, 0xd

    :try_start_1
    new-array v5, v0, [B

    fill-array-data v5, :array_1

    const v0, 0x1000001

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const-string v4, "500771"

    const/4 p2, 0x7

    :try_start_2
    new-array v5, p2, [B

    fill-array-data v5, :array_2

    const v0, 0x1000001

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p2

    :cond_1
    return-object p1

    :catchall_0
    const/4 p2, 0x3

    new-array v5, p2, [B

    fill-array-data v5, :array_3

    const-wide/16 v2, 0x0

    const-string v4, "6214c1"

    const v0, 0x1000001

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    nop

    :array_0
    .array-data 1
        0x25t
        0x3bt
        0x18t
        0xet
        0x1bt
        0x67t
        0x7at
        0x16t
        0x39t
        0x60t
        0x34t
        0x3bt
        0x1ct
        0x44t
        0x46t
        0x61t
        0x33t
        0x14t
        0x79t
        0x75t
        0x33t
        0x3bt
        0x1t
        0x41t
        0x46t
        0x56t
        0x10t
        0x39t
        0x32t
        0x70t
        0x31t
        0x3bt
        0x7t
        0x4bt
        0x3ct
        0x75t
        0x33t
        0x34t
        0x38t
        0x6at
        0x32t
        0x31t
        0xdt
        0x54t
        0x38t
        0x66t
        0x3bt
        0x1t
        0x3et
        0x60t
        0x23t
        0x26t
        0x34t
        0x44t
        0x9t
        0x64t
        0x20t
        0x12t
        0x25t
    .end array-data

    :array_1
    .array-data 1
        0x2ft
        0x30t
        0x58t
        0x4ft
        0x78t
        0x3ct
        0x1et
        0x17t
        0x7ft
        0x55t
        0x31t
        0x34t
        0x58t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2at
        0x37t
        0x54t
        0x76t
        0x1bt
        0x23t
        0x24t
    .end array-data

    :array_3
    .array-data 1
        0x20t
        0x31t
        0x44t
    .end array-data
.end method
