.class public abstract Lg/dkn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Lg/glm;

.field public static c:Lg/azt;

.field public static d:Lg/azt;

.field public static e:Ljava/lang/Boolean;

.field public static final f:Lg/aqv;

.field public static final g:Ljava/lang/Object;

.field public static h:I

.field public static i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lg/aqv;

    new-instance v1, Lg/fpe;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lg/fpe;-><init>(I)V

    invoke-direct {v0, v1}, Lg/aqv;-><init>(Lg/fpe;)V

    sput-object v0, Lg/dkn;->f:Lg/aqv;

    const/16 v0, -0x64

    sput v0, Lg/dkn;->h:I

    const/4 v0, 0x0

    sput-object v0, Lg/dkn;->c:Lg/azt;

    sput-object v0, Lg/dkn;->d:Lg/azt;

    sput-object v0, Lg/dkn;->e:Ljava/lang/Boolean;

    const/4 v0, 0x0

    sput-boolean v0, Lg/dkn;->i:Z

    new-instance v1, Lg/glm;

    invoke-direct {v1, v0}, Lg/glm;-><init>(I)V

    sput-object v1, Lg/dkn;->b:Lg/glm;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/dkn;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/dkn;->g:Ljava/lang/Object;

    return-void
.end method

.method public static j(I)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    if-eq p0, v1, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    sget v0, Lg/dkn;->h:I

    if-eq v0, p0, :cond_3

    sput p0, Lg/dkn;->h:I

    sget-object p0, Lg/dkn;->a:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lg/dkn;->b:Lg/glm;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lg/hx;

    invoke-direct {v2, v0}, Lg/hx;-><init>(Lg/glm;)V

    :cond_1
    :goto_0
    invoke-virtual {v2}, Lg/hx;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lg/hx;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/dkn;

    if-eqz v0, :cond_1

    check-cast v0, Lg/dre;

    invoke-virtual {v0, v1, v1}, Lg/dre;->cs(ZZ)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    return-void
.end method

.method public static k(Landroid/content/Context;)Z
    .locals 4

    sget-object v0, Lg/dkn;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    :try_start_0
    sget v0, Landroidx/appcompat/app/AppLocalesMetadataHolderService;->a:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-static {}, Lg/ccv;->a()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    goto :goto_0

    :cond_0
    const/16 v0, 0x280

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Landroidx/appcompat/app/AppLocalesMetadataHolderService;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_1

    const-string v0, "autoStoreLocales"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lg/dkn;->e:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p0, Lg/dkn;->e:Ljava/lang/Boolean;

    :cond_1
    :goto_1
    sget-object p0, Lg/dkn;->e:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static l()V
    .locals 5

    sget-object v0, Lg/dkn;->b:Lg/glm;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lg/hx;

    invoke-direct {v1, v0}, Lg/hx;-><init>(Lg/glm;)V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lg/hx;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lg/hx;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/dkn;

    if-eqz v0, :cond_0

    check-cast v0, Lg/dre;

    iget-object v2, v0, Lg/dre;->aw:Landroid/content/Context;

    invoke-static {v2}, Lg/dkn;->k(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lg/dkn;->c:Lg/azt;

    if-eqz v3, :cond_1

    sget-object v4, Lg/dkn;->d:Lg/azt;

    invoke-virtual {v3, v4}, Lg/azt;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lg/gtf;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lg/gtf;-><init>(Landroid/content/Context;I)V

    sget-object v2, Lg/dkn;->f:Lg/aqv;

    invoke-virtual {v2, v3}, Lg/aqv;->execute(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2}, Lg/dre;->cs(ZZ)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static m(Lg/azt;)V
    .locals 2

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    invoke-static {}, Lg/dkn;->n()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lg/azt;->b:Lg/cmn;

    invoke-interface {p0}, Lg/cmn;->d()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lg/gko;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object p0

    invoke-static {v0, p0}, Lg/bgl;->b(Ljava/lang/Object;Landroid/os/LocaleList;)V

    return-void

    :cond_0
    sget-object v0, Lg/dkn;->c:Lg/azt;

    invoke-virtual {p0, v0}, Lg/azt;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lg/dkn;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lg/dkn;->c:Lg/azt;

    invoke-static {}, Lg/dkn;->l()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public static n()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lg/dkn;->b:Lg/glm;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lg/hx;

    invoke-direct {v1, v0}, Lg/hx;-><init>(Lg/glm;)V

    :cond_0
    invoke-virtual {v1}, Lg/hx;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lg/hx;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/dkn;

    if-eqz v0, :cond_0

    check-cast v0, Lg/dre;

    iget-object v0, v0, Lg/dre;->aw:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "locale"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static o(Lg/dre;)V
    .locals 3

    sget-object v0, Lg/dkn;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/dkn;->b:Lg/glm;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lg/hx;

    invoke-direct {v2, v1}, Lg/hx;-><init>(Lg/glm;)V

    :cond_0
    :goto_0
    invoke-virtual {v2}, Lg/hx;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lg/hx;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/dkn;

    if-eq v1, p0, :cond_1

    if-nez v1, :cond_0

    :cond_1
    invoke-virtual {v2}, Lg/hx;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static r(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lg/dkn;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_2

    sget-boolean v0, Lg/dkn;->i:Z

    if-nez v0, :cond_1

    sget-object v0, Lg/dkn;->f:Lg/aqv;

    new-instance v1, Lg/gtf;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lg/gtf;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lg/aqv;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lg/dkn;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/dkn;->c:Lg/azt;

    if-nez v1, :cond_5

    sget-object v1, Lg/dkn;->d:Lg/azt;

    if-nez v1, :cond_3

    invoke-static {p0}, Lg/egh;->ak(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lg/azt;->d(Ljava/lang/String;)Lg/azt;

    move-result-object p0

    sput-object p0, Lg/dkn;->d:Lg/azt;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_1
    sget-object p0, Lg/dkn;->d:Lg/azt;

    iget-object p0, p0, Lg/azt;->b:Lg/cmn;

    invoke-interface {p0}, Lg/cmn;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    monitor-exit v0

    return-void

    :cond_4
    sget-object p0, Lg/dkn;->d:Lg/azt;

    sput-object p0, Lg/dkn;->c:Lg/azt;

    goto :goto_2

    :cond_5
    sget-object v2, Lg/dkn;->d:Lg/azt;

    invoke-virtual {v1, v2}, Lg/azt;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lg/dkn;->c:Lg/azt;

    sput-object v1, Lg/dkn;->d:Lg/azt;

    iget-object v1, v1, Lg/azt;->b:Lg/cmn;

    invoke-interface {v1}, Lg/cmn;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lg/egh;->ab(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract aa()V
.end method

.method public abstract s(I)Z
.end method

.method public abstract t(Landroid/view/View;)V
.end method

.method public abstract u(Ljava/lang/CharSequence;)V
.end method

.method public abstract v(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract w()V
.end method

.method public abstract x()V
.end method

.method public abstract y(I)V
.end method

.method public abstract z(Lg/dbn;)Lg/gtg;
.end method
