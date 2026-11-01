.class public final Lg/gxw;
.super Lg/fdk;
.source "SourceFile"


# instance fields
.field public final c:Lg/gyf;

.field public final d:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lg/gyf;)V
    .locals 1

    const-string v0, "require"

    invoke-direct {p0, v0}, Lg/fdk;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/gxw;->d:Ljava/util/HashMap;

    iput-object p1, p0, Lg/gxw;->c:Lg/gyf;

    return-void
.end method


# virtual methods
.method public final e(Lg/dpa;Ljava/util/List;)Lg/gey;
    .locals 2

    const-string v0, "require"

    const/4 v1, 0x1

    invoke-static {v1, v0, p2}, Lg/byh;->ah(ILjava/lang/String;Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/gey;

    iget-object v0, p1, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    invoke-virtual {v0, p1, p2}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    invoke-interface {p1}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lg/gxw;->d:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    return-object p1

    :cond_0
    iget-object v0, p0, Lg/gxw;->c:Lg/gyf;

    iget-object v1, v0, Lg/gyf;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lg/gyf;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Callable;

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Failed to create API implementation: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    sget-object v0, Lg/gey;->o:Lg/gdz;

    :goto_0
    instance-of v1, v0, Lg/fdk;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lg/fdk;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method
