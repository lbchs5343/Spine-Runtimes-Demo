.class public final Lg/gxr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/gxr;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lg/gxr;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gxr;->b:Ljava/lang/String;

    iput-object p2, p0, Lg/gxr;->a:Lg/gxr;

    iput-object p3, p0, Lg/gxr;->c:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized d(Lg/dwg;Ljava/lang/String;)Lg/gxr;
    .locals 4

    const-class v0, Lg/gxr;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/dwg;->h:Lg/fzn;

    iget-object v1, v1, Lg/fzn;->i:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gxr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    const/16 v1, 0x2e

    :try_start_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    new-instance v1, Lg/gxr;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p1}, Lg/gxr;-><init>(Ljava/lang/String;Lg/gxr;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lg/gxr;->d(Lg/dwg;Ljava/lang/String;)Lg/gxr;

    move-result-object v2

    new-instance v3, Lg/gxr;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, p1, v2, v1}, Lg/gxr;-><init>(Ljava/lang/String;Lg/gxr;Ljava/lang/String;)V

    move-object v1, v3

    :goto_0
    iget-object p0, p0, Lg/dwg;->h:Lg/fzn;

    iget-object p0, p0, Lg/fzn;->i:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    iget-object p1, v1, Lg/gxr;->b:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lg/gxr;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lg/gxr;

    iget-object p1, p1, Lg/gxr;->b:Ljava/lang/String;

    iget-object v0, p0, Lg/gxr;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lg/gxr;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/gxr;->b:Ljava/lang/String;

    return-object v0
.end method
