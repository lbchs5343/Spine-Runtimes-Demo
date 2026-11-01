.class final Lms/bz/bd/c/Pgl/p;
.super Lms/bz/bd/c/Pgl/pblb$pgla;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lms/bz/bd/c/Pgl/pblb$pgla;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7

    sget-object p1, Lms/bz/bd/c/Pgl/pgla;->a:Lms/bz/bd/c/Pgl/pgla;

    iget-object p1, p1, Lms/bz/bd/c/Pgl/pgla;->b:Landroid/content/Context;

    invoke-static {p1}, Lms/bz/bd/c/Pgl/m1;->d(Landroid/content/Context;)Lms/bz/bd/c/Pgl/m1;

    move-result-object p1

    iget-object p1, p1, Lms/bz/bd/c/Pgl/m1;->b:Landroid/content/Context;

    new-instance p2, Landroid/content/IntentFilter;

    const/16 v0, 0x25

    new-array v6, v0, [B

    fill-array-data v6, :array_0

    const-wide/16 v3, 0x0

    const-string v5, "7cb553"

    const v1, 0x1000001

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, -0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    new-array v6, v0, [B

    fill-array-data v6, :array_1

    const-wide/16 v3, 0x0

    const-string v5, "e24381"

    const v1, 0x1000001

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    nop

    :array_0
    .array-data 1
        0x27t
        0x6ft
        0x15t
        0x53t
        0x5t
        0x2dt
        0x30t
        0xct
        0x3at
        0x6bt
        0x32t
        0x64t
        0x1ft
        0x55t
        0x44t
        0x25t
        0x37t
        0x56t
        0x3at
        0x6at
        0x28t
        0x2ft
        0x33t
        0x60t
        0x3et
        0x10t
        0x11t
        0x70t
        0xat
        0x5at
        0x5t
        0x49t
        0x30t
        0x6ft
        0x2dt
        0x1t
        0x10t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x67t
        0x24t
        0x46t
        0x53t
        0x12t
        0x35t
    .end array-data
.end method
