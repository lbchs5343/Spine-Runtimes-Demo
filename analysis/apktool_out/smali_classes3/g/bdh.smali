.class public final Lg/bdh;
.super Lg/gsp;
.source "SourceFile"


# instance fields
.field public _bo:Landroid/content/res/AssetManager;

.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/bdh;->b:Ljava/lang/Object;

    iput-object p1, p0, Lg/bdh;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final d(Lg/fpu;)Z
    .locals 2

    iget-object p1, p1, Lg/fpu;->a:Landroid/net/Uri;

    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "android_asset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final e(Lg/fpu;I)Lg/fkn;
    .locals 1

    iget-object p2, p0, Lg/bdh;->_bo:Landroid/content/res/AssetManager;

    if-nez p2, :cond_1

    iget-object p2, p0, Lg/bdh;->b:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lg/bdh;->_bo:Landroid/content/res/AssetManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/bdh;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lg/bdh;->_bo:Landroid/content/res/AssetManager;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p2

    goto :goto_2

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    iget-object p2, p0, Lg/bdh;->_bo:Landroid/content/res/AssetManager;

    iget-object p1, p1, Lg/fpu;->a:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lg/baf;->bk(Ljava/io/InputStream;)Lg/dix;

    move-result-object p1

    new-instance p2, Lg/fkn;

    sget-object v0, Lg/gye;->DISK:Lg/gye;

    invoke-direct {p2, p1, v0}, Lg/fkn;-><init>(Lg/cpv;Lg/gye;)V

    return-object p2
.end method
