.class public final Lg/gma;
.super Lg/cfq;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x27192d5f840672dL


# instance fields
.field eventQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lg/cae;",
            ">;"
        }
    .end annotation
.end field

.field logger:Lg/ani;

.field name:Ljava/lang/String;


# virtual methods
.method public final ac()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ad()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ae()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final af()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ah()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/gma;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final i(Lg/bmk;[Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lg/cae;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iput-object p1, v0, Lg/cae;->a:Lg/bmk;

    iget-object p1, p0, Lg/gma;->logger:Lg/ani;

    iput-object p1, v0, Lg/cae;->b:Lg/ani;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    iput-object p2, v0, Lg/cae;->c:[Ljava/lang/Object;

    iget-object p1, p0, Lg/gma;->eventQueue:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method
