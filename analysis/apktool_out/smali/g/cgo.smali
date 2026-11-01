.class public abstract Lg/cgo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public aa:Ljava/lang/Object;

.field public ab:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lg/cgo;->aa:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lg/cgo;->ab:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/cgo;->ab:Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lg/cgo;->ab:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    new-instance v2, Lg/agm;

    invoke-direct {v2}, Lg/agm;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lg/dre;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cgo;->ab:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lg/cgo;->aa:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ac(III)F
    .locals 0

    sub-int/2addr p0, p1

    int-to-float p0, p0

    int-to-float p1, p2

    div-float/2addr p0, p1

    const/4 p1, 0x0

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p2}, Lg/dzm;->ac(FFF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public _q(II)I
    .locals 5

    invoke-virtual {p0, p1}, Lg/cgo;->_r(I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p2, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p1, :cond_3

    invoke-virtual {p0, v2}, Lg/cgo;->_r(I)I

    move-result v4

    add-int/2addr v3, v4

    if-ne v3, p2, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    if-le v3, p2, :cond_2

    move v3, v4

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    add-int/2addr v0, v3

    if-gt v0, p2, :cond_4

    return v3

    :cond_4
    return v1
.end method

.method public abstract _r(I)I
.end method

.method public abstract a(Landroid/os/IBinder;)Ljava/lang/Object;
.end method

.method public ad(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 2

    instance-of v0, p1, Lg/buc;

    if-eqz v0, :cond_2

    check-cast p1, Lg/buc;

    iget-object v0, p0, Lg/cgo;->ab:Ljava/lang/Object;

    check-cast v0, Lg/bcp;

    if-nez v0, :cond_0

    new-instance v0, Lg/bcp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/bcp;-><init>(I)V

    iput-object v0, p0, Lg/cgo;->ab:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lg/cgo;->ab:Ljava/lang/Object;

    check-cast v0, Lg/bcp;

    invoke-virtual {v0, p1}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    if-nez v0, :cond_1

    new-instance v0, Lg/hcv;

    iget-object v1, p0, Lg/cgo;->aa:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lg/hcv;-><init>(Landroid/content/Context;Lg/buc;)V

    iget-object v1, p0, Lg/cgo;->ab:Ljava/lang/Object;

    check-cast v1, Lg/bcp;

    invoke-virtual {v1, p1, v0}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    return-object p1
.end method

.method public ae(II)I
    .locals 6

    invoke-virtual {p0, p1}, Lg/cgo;->_r(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    invoke-virtual {p0, v2}, Lg/cgo;->_r(I)I

    move-result v5

    add-int/2addr v3, v5

    if-ne v3, p2, :cond_0

    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    if-le v3, p2, :cond_1

    add-int/lit8 v4, v4, 0x1

    move v3, v5

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v3, v0

    if-le v3, p2, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    return v4
.end method

.method public af()V
    .locals 1

    iget-object v0, p0, Lg/cgo;->aa:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public ag()V
    .locals 2

    iget-object v0, p0, Lg/cgo;->aa:Ljava/lang/Object;

    check-cast v0, Lg/sr;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lg/cgo;->ab:Ljava/lang/Object;

    check-cast v1, Lg/dre;

    iget-object v1, v1, Lg/dre;->aw:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lg/cgo;->aa:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public ah()V
    .locals 3

    invoke-virtual {p0}, Lg/cgo;->ag()V

    invoke-virtual {p0}, Lg/cgo;->e()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lg/cgo;->aa:Ljava/lang/Object;

    check-cast v1, Lg/sr;

    if-nez v1, :cond_1

    new-instance v1, Lg/sr;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lg/sr;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lg/cgo;->aa:Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lg/cgo;->ab:Ljava/lang/Object;

    check-cast v1, Lg/dre;

    iget-object v1, v1, Lg/dre;->aw:Landroid/content/Context;

    iget-object v2, p0, Lg/cgo;->aa:Ljava/lang/Object;

    check-cast v2, Lg/sr;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public ai(Landroid/content/Context;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg/cgo;->ab:Ljava/lang/Object;

    if-nez v0, :cond_1

    invoke-static {p1}, Lg/ckd;->k(Ljava/lang/Object;)V

    sget-object v0, Lg/evp;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    :try_start_0
    const-string v0, "com.google.android.gms"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :try_start_1
    iget-object v0, p0, Lg/cgo;->aa:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Lg/cgo;->a(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lg/cgo;->ab:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    goto :goto_3

    :goto_1
    new-instance v0, Lg/grc;

    const-string v1, "Could not access creator."

    invoke-direct {v0, v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_2
    new-instance v0, Lg/grc;

    const-string v1, "Could not instantiate creator."

    invoke-direct {v0, v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_3
    new-instance v0, Lg/grc;

    const-string v1, "Could not load creator class."

    invoke-direct {v0, v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p1, Lg/grc;

    const-string v0, "Could not get remote context."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_4
    iget-object p1, p0, Lg/cgo;->ab:Ljava/lang/Object;

    return-object p1
.end method

.method public abstract e()Landroid/content/IntentFilter;
.end method

.method public abstract f()I
.end method

.method public abstract g()V
.end method

.method public abstract t()V
.end method

.method public abstract u()V
.end method

.method public abstract w(Lg/bbg;)V
.end method

.method public abstract x()V
.end method

.method public abstract y()V
.end method

.method public abstract z()V
.end method
