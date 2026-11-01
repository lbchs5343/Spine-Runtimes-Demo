.class public final Lcom/bykv/vk/openvk/preload/dq/d/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/preload/dq/i;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final dq:Lcom/bykv/vk/openvk/preload/dq/d/p;


# instance fields
.field public d:D

.field public iw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/dq/d;",
            ">;"
        }
    .end annotation
.end field

.field public mn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/dq/d;",
            ">;"
        }
    .end annotation
.end field

.field public ox:I

.field public p:Z

.field public s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/d/p;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/dq/d/p;-><init>()V

    sput-object v0, Lcom/bykv/vk/openvk/preload/dq/d/p;->dq:Lcom/bykv/vk/openvk/preload/dq/d/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/p;->d:D

    const/16 v0, 0x88

    iput v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/p;->ox:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/p;->p:Z

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/p;->iw:Ljava/util/List;

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/p;->mn:Ljava/util/List;

    return-void
.end method

.method public static d(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isLocalClass()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private dq()Lcom/bykv/vk/openvk/preload/dq/d/p;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/dq/d/p;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private dq(Lcom/bykv/vk/openvk/preload/dq/dq/p;)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bykv/vk/openvk/preload/dq/dq/p;->dq()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/bykv/vk/openvk/preload/dq/d/p;->d:D

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private dq(Lcom/bykv/vk/openvk/preload/dq/dq/s;)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bykv/vk/openvk/preload/dq/dq/s;->dq()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/bykv/vk/openvk/preload/dq/d/p;->d:D

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public static ox(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/bykv/vk/openvk/preload/dq/d/p;->p(Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static p(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/d/p;->dq()Lcom/bykv/vk/openvk/preload/dq/d/p;

    move-result-object v0

    return-object v0
.end method

.method public final dq(Lcom/bykv/vk/openvk/preload/dq/iw;Lcom/bykv/vk/openvk/preload/dq/ox/dq;)Lcom/bykv/vk/openvk/preload/dq/r;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bykv/vk/openvk/preload/dq/iw;",
            "Lcom/bykv/vk/openvk/preload/dq/ox/dq<",
            "TT;>;)",
            "Lcom/bykv/vk/openvk/preload/dq/r<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p2, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->dq:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/d/p;->dq(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/bykv/vk/openvk/preload/dq/d/p;->dq(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v7, 0x1

    :goto_1
    if-nez v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/bykv/vk/openvk/preload/dq/d/p;->dq(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v6, 0x1

    :goto_3
    if-nez v7, :cond_4

    if-nez v6, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    new-instance v4, Lcom/bykv/vk/openvk/preload/dq/d/p$1;

    move-object v5, p0

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/bykv/vk/openvk/preload/dq/d/p$1;-><init>(Lcom/bykv/vk/openvk/preload/dq/d/p;ZZLcom/bykv/vk/openvk/preload/dq/iw;Lcom/bykv/vk/openvk/preload/dq/ox/dq;)V

    return-object v4
.end method

.method public final dq(Lcom/bykv/vk/openvk/preload/dq/dq/p;Lcom/bykv/vk/openvk/preload/dq/dq/s;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/dq/d/p;->dq(Lcom/bykv/vk/openvk/preload/dq/dq/p;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/bykv/vk/openvk/preload/dq/d/p;->dq(Lcom/bykv/vk/openvk/preload/dq/dq/s;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final dq(Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    iget-wide v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/p;->d:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const/4 v4, 0x1

    cmpl-double v5, v0, v2

    if-eqz v5, :cond_0

    const-class v0, Lcom/bykv/vk/openvk/preload/dq/dq/p;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/dq/dq/p;

    const-class v1, Lcom/bykv/vk/openvk/preload/dq/dq/s;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/preload/dq/dq/s;

    invoke-virtual {p0, v0, v1}, Lcom/bykv/vk/openvk/preload/dq/d/p;->dq(Lcom/bykv/vk/openvk/preload/dq/dq/p;Lcom/bykv/vk/openvk/preload/dq/dq/s;)Z

    move-result v0

    if-nez v0, :cond_0

    return v4

    :cond_0
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/p;->p:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/dq/d/p;->ox(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    :cond_1
    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/dq/d/p;->d(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v4

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final dq(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/d/p;->iw:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/d/p;->mn:Ljava/util/List;

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/dq/d;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/preload/dq/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
