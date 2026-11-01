.class public final Lg/xu;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/gqc;

.field public final synthetic b:Lg/cwz;

.field public final synthetic c:I

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(Lg/cwz;IZLg/gqc;)V
    .locals 0

    iput-object p1, p0, Lg/xu;->b:Lg/cwz;

    iput p2, p0, Lg/xu;->c:I

    iput-boolean p3, p0, Lg/xu;->d:Z

    iput-object p4, p0, Lg/xu;->a:Lg/gqc;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lg/xu;->b:Lg/cwz;

    iget-object v0, v0, Lg/haz;->x:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget v5, p0, Lg/xu;->c:I

    iget-object v6, p0, Lg/xu;->b:Lg/cwz;

    iget v6, v6, Lg/haz;->m:I

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lg/xu;->b:Lg/cwz;

    iget-boolean v6, p0, Lg/xu;->d:Z

    invoke-virtual {v5, v4, v6, v2}, Lg/haz;->ab(Landroid/content/pm/PackageInfo;ZZ)Lg/auj;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, v4, Lg/auj;->h:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v4, Lg/auj;->h:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    iget-object v0, p0, Lg/xu;->b:Lg/cwz;

    iput-object v3, v0, Lg/haz;->o:Ljava/util/HashMap;

    const-class v0, Lg/haz;

    monitor-enter v0

    :try_start_1
    iget-object v3, p0, Lg/xu;->b:Lg/cwz;

    iput-boolean v2, v3, Lg/haz;->w:Z

    iget-object v2, p0, Lg/xu;->a:Lg/gqc;

    invoke-virtual {v2, v1}, Lg/gqc;->onSuccess(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_3
    const-class v0, Lg/haz;

    monitor-enter v0

    :try_start_2
    iget-object v3, p0, Lg/xu;->b:Lg/cwz;

    iput-boolean v2, v3, Lg/haz;->w:Z

    iget-object v2, p0, Lg/xu;->a:Lg/gqc;

    invoke-virtual {v2, v1}, Lg/gqc;->a(Lg/dkp;)V

    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
