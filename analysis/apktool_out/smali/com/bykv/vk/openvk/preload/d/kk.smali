.class final Lcom/bykv/vk/openvk/preload/d/kk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/preload/d/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/preload/d/kk$dq;
    }
.end annotation


# instance fields
.field private d:I

.field protected dq:Lcom/bykv/vk/openvk/preload/d/s;

.field private ox:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/d/ia;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/bykv/vk/openvk/preload/d/p;


# direct methods
.method public constructor <init>(Ljava/util/List;ILcom/bykv/vk/openvk/preload/d/s;Lcom/bykv/vk/openvk/preload/d/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/d/ia;",
            ">;I",
            "Lcom/bykv/vk/openvk/preload/d/s;",
            "Lcom/bykv/vk/openvk/preload/d/p;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/d/kk;->ox:Ljava/util/List;

    iput p2, p0, Lcom/bykv/vk/openvk/preload/d/kk;->d:I

    iput-object p3, p0, Lcom/bykv/vk/openvk/preload/d/kk;->dq:Lcom/bykv/vk/openvk/preload/d/s;

    iput-object p4, p0, Lcom/bykv/vk/openvk/preload/d/kk;->p:Lcom/bykv/vk/openvk/preload/d/p;

    return-void
.end method

.method private ox(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/p;
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/d/kk;->p:Lcom/bykv/vk/openvk/preload/d/p;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v1, p1, :cond_0

    iget-object v0, v0, Lcom/bykv/vk/openvk/preload/d/p;->dq:Lcom/bykv/vk/openvk/preload/d/p;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final d(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/d/kk;->ox(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/p;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/bykv/vk/openvk/preload/d/p;->ox:Ljava/lang/Object;

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can not find pre Interceptor , class:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final dq(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/d/kk;->ox(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/d/p;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/bykv/vk/openvk/preload/d/p;->d:Ljava/lang/Object;

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can not find pre Interceptor , class:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final dq(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/d/kk;->p:Lcom/bykv/vk/openvk/preload/d/p;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/d/p;->ox:Ljava/lang/Object;

    iget-object v1, v0, Lcom/bykv/vk/openvk/preload/d/p;->p:Lcom/bykv/vk/openvk/preload/d/d/dq;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/bykv/vk/openvk/preload/d/p;->s:Lcom/bykv/vk/openvk/preload/d/d;

    invoke-virtual {v1, v2, v0}, Lcom/bykv/vk/openvk/preload/d/d/dq;->ox(Lcom/bykv/vk/openvk/preload/d/d;Lcom/bykv/vk/openvk/preload/d/p;)V

    :cond_0
    iget v0, p0, Lcom/bykv/vk/openvk/preload/d/kk;->d:I

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/d/kk;->ox:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/d/kk;->ox:Ljava/util/List;

    iget v1, p0, Lcom/bykv/vk/openvk/preload/d/kk;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/d/ia;

    iget-object v1, v0, Lcom/bykv/vk/openvk/preload/d/ia;->dq:Ljava/lang/Class;

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/d/kk;->dq:Lcom/bykv/vk/openvk/preload/d/s;

    invoke-interface {v2, v1}, Lcom/bykv/vk/openvk/preload/d/s;->dq(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/bykv/vk/openvk/preload/d/p;

    if-eqz v3, :cond_6

    iget-object v7, v0, Lcom/bykv/vk/openvk/preload/d/ia;->d:Lcom/bykv/vk/openvk/preload/d/d/dq;

    new-instance v4, Lcom/bykv/vk/openvk/preload/d/kk;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/d/kk;->ox:Ljava/util/List;

    iget v2, p0, Lcom/bykv/vk/openvk/preload/d/kk;->d:I

    add-int/lit8 v2, v2, 0x1

    iget-object v5, p0, Lcom/bykv/vk/openvk/preload/d/kk;->dq:Lcom/bykv/vk/openvk/preload/d/s;

    invoke-direct {v4, v1, v2, v5, v3}, Lcom/bykv/vk/openvk/preload/d/kk;-><init>(Ljava/util/List;ILcom/bykv/vk/openvk/preload/d/s;Lcom/bykv/vk/openvk/preload/d/p;)V

    iget-object v5, p0, Lcom/bykv/vk/openvk/preload/d/kk;->p:Lcom/bykv/vk/openvk/preload/d/p;

    iget-object v8, v0, Lcom/bykv/vk/openvk/preload/d/ia;->ox:[Ljava/lang/Object;

    move-object v6, p1

    invoke-virtual/range {v3 .. v8}, Lcom/bykv/vk/openvk/preload/d/p;->dq(Lcom/bykv/vk/openvk/preload/d/d;Lcom/bykv/vk/openvk/preload/d/p;Ljava/lang/Object;Lcom/bykv/vk/openvk/preload/d/d/dq;[Ljava/lang/Object;)V

    iget-object p1, v3, Lcom/bykv/vk/openvk/preload/d/p;->p:Lcom/bykv/vk/openvk/preload/d/d/dq;

    if-eqz p1, :cond_2

    iget-object v0, v3, Lcom/bykv/vk/openvk/preload/d/p;->s:Lcom/bykv/vk/openvk/preload/d/d;

    invoke-virtual {p1, v0, v3}, Lcom/bykv/vk/openvk/preload/d/d/dq;->dq(Lcom/bykv/vk/openvk/preload/d/d;Lcom/bykv/vk/openvk/preload/d/p;)V

    :cond_2
    :try_start_0
    invoke-virtual {v3, v4, v6}, Lcom/bykv/vk/openvk/preload/d/p;->dq(Lcom/bykv/vk/openvk/preload/d/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/bykv/vk/openvk/preload/d/kk$dq; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v3, Lcom/bykv/vk/openvk/preload/d/p;->p:Lcom/bykv/vk/openvk/preload/d/d/dq;

    if-eqz v0, :cond_3

    iget-object v1, v3, Lcom/bykv/vk/openvk/preload/d/p;->s:Lcom/bykv/vk/openvk/preload/d/d;

    invoke-virtual {v0, v1, v3}, Lcom/bykv/vk/openvk/preload/d/d/dq;->d(Lcom/bykv/vk/openvk/preload/d/d;Lcom/bykv/vk/openvk/preload/d/p;)V

    :cond_3
    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    iget-object v0, v3, Lcom/bykv/vk/openvk/preload/d/p;->p:Lcom/bykv/vk/openvk/preload/d/d/dq;

    if-eqz v0, :cond_4

    iget-object v0, v3, Lcom/bykv/vk/openvk/preload/d/p;->p:Lcom/bykv/vk/openvk/preload/d/d/dq;

    iget-object v1, v3, Lcom/bykv/vk/openvk/preload/d/p;->s:Lcom/bykv/vk/openvk/preload/d/d;

    invoke-virtual {v0, v1, v3, p1}, Lcom/bykv/vk/openvk/preload/d/d/dq;->dq(Lcom/bykv/vk/openvk/preload/d/d;Lcom/bykv/vk/openvk/preload/d/p;Ljava/lang/Throwable;)V

    :cond_4
    new-instance v0, Lcom/bykv/vk/openvk/preload/d/kk$dq;

    invoke-direct {v0, p1}, Lcom/bykv/vk/openvk/preload/d/kk$dq;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    iget-object v1, v3, Lcom/bykv/vk/openvk/preload/d/p;->p:Lcom/bykv/vk/openvk/preload/d/d/dq;

    if-eqz v1, :cond_5

    iget-object v1, v3, Lcom/bykv/vk/openvk/preload/d/p;->p:Lcom/bykv/vk/openvk/preload/d/d/dq;

    iget-object v2, v3, Lcom/bykv/vk/openvk/preload/d/p;->s:Lcom/bykv/vk/openvk/preload/d/d;

    invoke-virtual {v1, v2, v3, v0}, Lcom/bykv/vk/openvk/preload/d/d/dq;->ox(Lcom/bykv/vk/openvk/preload/d/d;Lcom/bykv/vk/openvk/preload/d/p;Ljava/lang/Throwable;)V

    :cond_5
    throw p1

    :cond_6
    move-object v6, p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "interceptor == null , index = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , class: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
