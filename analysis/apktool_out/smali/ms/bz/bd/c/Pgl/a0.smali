.class final Lms/bz/bd/c/Pgl/a0;
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

    const-string v4, "46a29d"

    const/16 p1, 0x22

    const/4 p2, 0x0

    :try_start_0
    new-array v5, p1, [B

    fill-array-data v5, :array_0

    const v0, 0x1000001

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "49a12e"

    const/4 v0, 0x1

    :try_start_1
    new-array v5, v0, [B

    const/4 v0, 0x0

    const/16 v1, 0x24

    aput-byte v1, v5, v0

    const v0, 0x1000001

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catchall_0
    :cond_0
    return-object p2

    :array_0
    .array-data 1
        0x26t
        0x3bt
        0x1ft
        0x8t
        0x4t
        0x6at
        0x23t
        0x12t
        0x34t
        0x63t
        0x2bt
        0x37t
        0x17t
        0x8t
        0xbt
        0x7ct
        0x35t
        0x4t
        0x35t
        0x61t
        0x6bt
        0x27t
        0x17t
        0x48t
        0x15t
        0x7ct
        0x25t
        0x59t
        0x3dt
        0x6et
        0x6bt
        0x19t
        0x21t
        0x64t
    .end array-data
.end method
