.class public Lcom/bytedance/sdk/component/ia/d/dq/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ia/d/dq/s;


# instance fields
.field private d:Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;

.field private dq:Lcom/bytedance/sdk/component/ia/d/dq/dq/d/p;

.field private ia:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

.field private ig:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

.field private iw:Lcom/bytedance/sdk/component/ia/d/dq/dq/d/ia;

.field private kk:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

.field private mn:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

.field private mp:Lcom/bytedance/sdk/component/ia/dq/s;

.field private no:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

.field private o:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

.field private ox:Lcom/bytedance/sdk/component/ia/d/dq/dq/d/s;

.field private p:Lcom/bytedance/sdk/component/ia/d/dq/dq/d/mn;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/bytedance/sdk/component/ia/d/dq/dq/d/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ia/dq/s;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->q:Ljava/util/List;

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->mp:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ia/dq/s;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/d/dq;->dq(Lcom/bytedance/sdk/component/ia/dq/s;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->mp:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ia/dq/s;->mn()Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->mn:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    new-instance v2, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/p;

    iget-object v3, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->mp:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-direct {v2, v0, v1, v3}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/p;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/ia/d/p/d/dq;Lcom/bytedance/sdk/component/ia/dq/s;)V

    iput-object v2, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->dq:Lcom/bytedance/sdk/component/ia/d/dq/dq/d/p;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->q:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/d/dq;->s(Lcom/bytedance/sdk/component/ia/dq/s;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->mp:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ia/dq/s;->dq()Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->mp:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ia/dq/s;->dq()Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->kk:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->mp:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ia/dq/s;->ia()Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->kk:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    :goto_0
    new-instance v1, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/s;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->kk:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    iget-object v3, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->mp:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-direct {v1, v0, v2, v3}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/s;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/ia/d/p/d/dq;Lcom/bytedance/sdk/component/ia/dq/s;)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->ox:Lcom/bytedance/sdk/component/ia/d/dq/dq/d/s;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->q:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/d/dq;->d(Lcom/bytedance/sdk/component/ia/dq/s;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->mp:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ia/dq/s;->ia()Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->ia:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    new-instance v2, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;

    iget-object v3, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->mp:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-direct {v2, v0, v1, v3}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/ia/d/p/d/dq;Lcom/bytedance/sdk/component/ia/dq/s;)V

    iput-object v2, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->d:Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->q:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/d/dq;->ox(Lcom/bytedance/sdk/component/ia/dq/s;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->mp:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ia/dq/s;->ia()Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->o:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    new-instance v2, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/mn;

    iget-object v3, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->mp:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-direct {v2, v0, v1, v3}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/mn;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/ia/d/p/d/dq;Lcom/bytedance/sdk/component/ia/dq/s;)V

    iput-object v2, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->p:Lcom/bytedance/sdk/component/ia/d/dq/dq/d/mn;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->q:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/d/dq;->p(Lcom/bytedance/sdk/component/ia/dq/s;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->mp:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ia/dq/s;->kk()Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->no:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    new-instance v2, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/dq;

    iget-object v3, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->mp:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-direct {v2, v0, v1, v3}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/dq;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/ia/d/p/d/dq;Lcom/bytedance/sdk/component/ia/dq/s;)V

    iput-object v2, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->s:Lcom/bytedance/sdk/component/ia/d/dq/dq/d/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->q:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/d/dq;->iw(Lcom/bytedance/sdk/component/ia/dq/s;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->mp:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ia/dq/s;->iw()Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->ig:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    new-instance v1, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/ia;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->mp:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-direct {v1, v0, p1, v2}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/ia;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/ia/d/p/d/dq;Lcom/bytedance/sdk/component/ia/dq/s;)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->iw:Lcom/bytedance/sdk/component/ia/d/dq/dq/d/ia;

    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->q:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method


# virtual methods
.method public dq(ILjava/util/List;)Lcom/bytedance/sdk/component/ia/d/dq/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;)",
            "Lcom/bytedance/sdk/component/ia/d/dq/d;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;

    invoke-virtual {v1, p1, p2}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->dq(ILjava/util/List;)Lcom/bytedance/sdk/component/ia/d/dq/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ia/d/dq/d;->dq()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    return-object v1
.end method

.method public dq(ILcom/bytedance/sdk/component/ia/dq/d;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public dq(ILcom/bytedance/sdk/component/ia/dq/d;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;

    const-string v2, "db"

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/bytedance/sdk/component/ia/d/dq/dq;->dq(ILcom/bytedance/sdk/component/ia/dq/d;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq(Lcom/bytedance/sdk/component/ia/dq/d;II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            "II)",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;

    invoke-virtual {v1, p3, p2, p1}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->dq(IILcom/bytedance/sdk/component/ia/dq/d;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq(Lcom/bytedance/sdk/component/ia/dq/d;I)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/ia/dq/d;->d(J)V

    iget-object p2, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->q:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->d(Lcom/bytedance/sdk/component/ia/dq/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    return-void

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p1, Lcom/bytedance/sdk/component/ia/d/d/d;->dq:Lcom/bytedance/sdk/component/ia/d/d/dq/dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ia/d/d/dq/dq;->ox()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    const/4 p2, 0x1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->mp:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/component/ia/d/ox/d;->dq(Ljava/util/concurrent/atomic/AtomicLong;ILcom/bytedance/sdk/component/ia/dq/s;)V

    return-void
.end method

.method public dq(IZLjava/lang/String;Lcom/bytedance/sdk/component/ia/dq/d;)Z
    .locals 1

    iget-object p2, p0, Lcom/bytedance/sdk/component/ia/d/dq/p;->q:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;

    invoke-virtual {v0, p1, p3, p4}, Lcom/bytedance/sdk/component/ia/d/dq/dq;->dq(ILjava/lang/String;Lcom/bytedance/sdk/component/ia/dq/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
