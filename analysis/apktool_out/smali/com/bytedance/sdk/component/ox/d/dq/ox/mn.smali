.class public final Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ox/d/r$dq;


# instance fields
.field private final d:Lcom/bytedance/sdk/component/ox/d/dq/d/mn;

.field private final dq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/r;",
            ">;"
        }
    .end annotation
.end field

.field private final ia:Lcom/bytedance/sdk/component/ox/d/f;

.field private ig:I

.field private final iw:Lcom/bytedance/sdk/component/ox/d/kx;

.field private final kk:I

.field private final mn:Lcom/bytedance/sdk/component/ox/d/s;

.field private final no:I

.field private final o:I

.field private final ox:Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;

.field private final p:Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

.field private final s:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/bytedance/sdk/component/ox/d/dq/d/mn;Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;Lcom/bytedance/sdk/component/ox/d/dq/d/ox;ILcom/bytedance/sdk/component/ox/d/kx;Lcom/bytedance/sdk/component/ox/d/s;Lcom/bytedance/sdk/component/ox/d/f;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/r;",
            ">;",
            "Lcom/bytedance/sdk/component/ox/d/dq/d/mn;",
            "Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;",
            "Lcom/bytedance/sdk/component/ox/d/dq/d/ox;",
            "I",
            "Lcom/bytedance/sdk/component/ox/d/kx;",
            "Lcom/bytedance/sdk/component/ox/d/s;",
            "Lcom/bytedance/sdk/component/ox/d/f;",
            "III)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->dq:Ljava/util/List;

    iput-object p4, p0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->p:Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    iput-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->d:Lcom/bytedance/sdk/component/ox/d/dq/d/mn;

    iput-object p3, p0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->ox:Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;

    iput p5, p0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->s:I

    iput-object p6, p0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->iw:Lcom/bytedance/sdk/component/ox/d/kx;

    iput-object p7, p0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->mn:Lcom/bytedance/sdk/component/ox/d/s;

    iput-object p8, p0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->ia:Lcom/bytedance/sdk/component/ox/d/f;

    iput p9, p0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->kk:I

    iput p10, p0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->o:I

    iput p11, p0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->no:I

    return-void
.end method


# virtual methods
.method public call()Lcom/bytedance/sdk/component/ox/d/s;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->mn:Lcom/bytedance/sdk/component/ox/d/s;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->kk:I

    return v0
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/kx;)Lcom/bytedance/sdk/component/ox/d/bl;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->d:Lcom/bytedance/sdk/component/ox/d/dq/d/mn;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->ox:Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->p:Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->dq(Lcom/bytedance/sdk/component/ox/d/kx;Lcom/bytedance/sdk/component/ox/d/dq/d/mn;Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;Lcom/bytedance/sdk/component/ox/d/dq/d/ox;)Lcom/bytedance/sdk/component/ox/d/bl;

    move-result-object p1

    return-object p1
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/kx;Lcom/bytedance/sdk/component/ox/d/dq/d/mn;Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;Lcom/bytedance/sdk/component/ox/d/dq/d/ox;)Lcom/bytedance/sdk/component/ox/d/bl;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget v1, v0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->s:I

    iget-object v2, v0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->dq:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    iget v1, v0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->ig:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->ig:I

    iget-object v1, v0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->ox:Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;

    const-string v3, "network interceptor "

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->p:Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/component/ox/d/kx;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->dq(Lcom/bytedance/sdk/component/ox/d/gh;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->dq:Ljava/util/List;

    iget v5, v0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->s:I

    sub-int/2addr v5, v2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " must retain the same host and port"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->ox:Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;

    const-string v4, " must call proceed() exactly once"

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->ig:I

    if-gt v1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->dq:Ljava/util/List;

    iget v6, v0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->s:I

    sub-int/2addr v6, v2

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    new-instance v5, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;

    iget-object v6, v0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->dq:Ljava/util/List;

    iget v1, v0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->s:I

    add-int/lit8 v10, v1, 0x1

    iget-object v12, v0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->mn:Lcom/bytedance/sdk/component/ox/d/s;

    iget-object v13, v0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->ia:Lcom/bytedance/sdk/component/ox/d/f;

    iget v14, v0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->kk:I

    iget v15, v0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->o:I

    iget v1, v0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->no:I

    move-object/from16 v11, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v16, v1

    invoke-direct/range {v5 .. v16}, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;-><init>(Ljava/util/List;Lcom/bytedance/sdk/component/ox/d/dq/d/mn;Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;Lcom/bytedance/sdk/component/ox/d/dq/d/ox;ILcom/bytedance/sdk/component/ox/d/kx;Lcom/bytedance/sdk/component/ox/d/s;Lcom/bytedance/sdk/component/ox/d/f;III)V

    iget-object v1, v0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->dq:Ljava/util/List;

    iget v6, v0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->s:I

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/ox/d/r;

    invoke-interface {v1, v5}, Lcom/bytedance/sdk/component/ox/d/r;->dq(Lcom/bytedance/sdk/component/ox/d/r$dq;)Lcom/bytedance/sdk/component/ox/d/bl;

    move-result-object v6

    if-eqz p3, :cond_5

    iget v7, v0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->s:I

    add-int/2addr v7, v2

    iget-object v8, v0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->dq:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    iget v5, v5, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->ig:I

    if-ne v5, v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    :goto_2
    const-string v2, "interceptor "

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/bytedance/sdk/component/ox/d/bl;->ia()Lcom/bytedance/sdk/component/ox/d/n;

    move-result-object v3

    if-eqz v3, :cond_6

    return-object v6

    :cond_6
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned a response with no body"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    new-instance v3, Ljava/lang/NullPointerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned a null response"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public dq()Lcom/bytedance/sdk/component/ox/d/kx;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->iw:Lcom/bytedance/sdk/component/ox/d/kx;

    return-object v0
.end method

.method public ia()Lcom/bytedance/sdk/component/ox/d/f;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->ia:Lcom/bytedance/sdk/component/ox/d/f;

    return-object v0
.end method

.method public iw()Lcom/bytedance/sdk/component/ox/d/dq/d/mn;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->d:Lcom/bytedance/sdk/component/ox/d/dq/d/mn;

    return-object v0
.end method

.method public mn()Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->ox:Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;

    return-object v0
.end method

.method public ox()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->o:I

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->no:I

    return v0
.end method

.method public s()Lcom/bytedance/sdk/component/ox/d/kk;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->p:Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    return-object v0
.end method
