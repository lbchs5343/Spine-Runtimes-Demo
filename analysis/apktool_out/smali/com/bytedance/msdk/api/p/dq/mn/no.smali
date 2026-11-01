.class public Lcom/bytedance/msdk/api/p/dq/mn/no;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/api/p/dq/mn/no$dq;
    }
.end annotation


# instance fields
.field public final d:I

.field public final dq:I

.field public final ia:I

.field public final ig:I

.field public final iw:I

.field public final kk:I

.field public final mn:I

.field public final mp:I

.field public final no:I

.field public final o:I

.field public final ox:I

.field public final p:I

.field public final q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final s:I


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/p/dq/mn/no$dq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->dq:I

    iput v0, p0, Lcom/bytedance/msdk/api/p/dq/mn/no;->dq:I

    iget v0, p1, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->d:I

    iput v0, p0, Lcom/bytedance/msdk/api/p/dq/mn/no;->d:I

    iget v0, p1, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->ox:I

    iput v0, p0, Lcom/bytedance/msdk/api/p/dq/mn/no;->ox:I

    iget v0, p1, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->p:I

    iput v0, p0, Lcom/bytedance/msdk/api/p/dq/mn/no;->p:I

    iget v0, p1, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->s:I

    iput v0, p0, Lcom/bytedance/msdk/api/p/dq/mn/no;->s:I

    iget v0, p1, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->iw:I

    iput v0, p0, Lcom/bytedance/msdk/api/p/dq/mn/no;->iw:I

    iget v0, p1, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->mn:I

    iput v0, p0, Lcom/bytedance/msdk/api/p/dq/mn/no;->mn:I

    iget v0, p1, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->ia:I

    iput v0, p0, Lcom/bytedance/msdk/api/p/dq/mn/no;->ia:I

    iget-object v0, p1, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->q:Ljava/util/Map;

    iput-object v0, p0, Lcom/bytedance/msdk/api/p/dq/mn/no;->q:Ljava/util/Map;

    iget v0, p1, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->o:I

    iput v0, p0, Lcom/bytedance/msdk/api/p/dq/mn/no;->kk:I

    iget v0, p1, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->no:I

    iput v0, p0, Lcom/bytedance/msdk/api/p/dq/mn/no;->o:I

    iget v0, p1, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->ig:I

    iput v0, p0, Lcom/bytedance/msdk/api/p/dq/mn/no;->no:I

    iget v0, p1, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->kk:I

    iput v0, p0, Lcom/bytedance/msdk/api/p/dq/mn/no;->ig:I

    iget p1, p1, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->mp:I

    iput p1, p0, Lcom/bytedance/msdk/api/p/dq/mn/no;->mp:I

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/p;)Lcom/bytedance/msdk/api/p/dq/mn/no;
    .locals 3

    if-eqz p0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/p;->dq()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;-><init>(I)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/p;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->dq(I)Lcom/bytedance/msdk/api/p/dq/mn/no$dq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/p;->p()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->o(I)Lcom/bytedance/msdk/api/p/dq/mn/no$dq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/p;->ox()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->kk(I)Lcom/bytedance/msdk/api/p/dq/mn/no$dq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/p;->kk()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->ox(I)Lcom/bytedance/msdk/api/p/dq/mn/no$dq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/p;->o()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->p(I)Lcom/bytedance/msdk/api/p/dq/mn/no$dq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/p;->no()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->s(I)Lcom/bytedance/msdk/api/p/dq/mn/no$dq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/p;->iw()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->iw(I)Lcom/bytedance/msdk/api/p/dq/mn/no$dq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/p;->mn()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->ia(I)Lcom/bytedance/msdk/api/p/dq/mn/no$dq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/p;->s()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->no(I)Lcom/bytedance/msdk/api/p/dq/mn/no$dq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/p;->ig()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->d(I)Lcom/bytedance/msdk/api/p/dq/mn/no$dq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/p;->ia()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->mn(I)Lcom/bytedance/msdk/api/p/dq/mn/no$dq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/p;->mp()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->dq(Ljava/util/Map;)Lcom/bytedance/msdk/api/p/dq/mn/no$dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->dq()Lcom/bytedance/msdk/api/p/dq/mn/no;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static dq(Lcom/bytedance/msdk/api/p/dq/mn/no;)Lcom/bytedance/msdk/dq/p/d/dq;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/dq/p/d/dq;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/dq/p/d/dq;-><init>(Lcom/bytedance/msdk/api/p/dq/mn/no;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
