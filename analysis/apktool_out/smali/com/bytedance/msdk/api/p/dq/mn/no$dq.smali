.class public Lcom/bytedance/msdk/api/p/dq/mn/no$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/api/p/dq/mn/no;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field protected d:I

.field protected dq:I

.field protected ia:I

.field protected ig:I

.field protected iw:I

.field protected kk:I

.field protected mn:I

.field protected mp:I

.field protected no:I

.field protected o:I

.field protected ox:I

.field protected p:I

.field protected q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected s:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->q:Ljava/util/Map;

    iput p1, p0, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->dq:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->q:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public d(I)Lcom/bytedance/msdk/api/p/dq/mn/no$dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->kk:I

    return-object p0
.end method

.method public dq(I)Lcom/bytedance/msdk/api/p/dq/mn/no$dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->d:I

    return-object p0
.end method

.method public dq(Ljava/util/Map;)Lcom/bytedance/msdk/api/p/dq/mn/no$dq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/bytedance/msdk/api/p/dq/mn/no$dq;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->q:Ljava/util/Map;

    return-object p0
.end method

.method public dq()Lcom/bytedance/msdk/api/p/dq/mn/no;
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/api/p/dq/mn/no;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/api/p/dq/mn/no;-><init>(Lcom/bytedance/msdk/api/p/dq/mn/no$dq;)V

    return-object v0
.end method

.method public ia(I)Lcom/bytedance/msdk/api/p/dq/mn/no$dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->mn:I

    return-object p0
.end method

.method public iw(I)Lcom/bytedance/msdk/api/p/dq/mn/no$dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->iw:I

    return-object p0
.end method

.method public kk(I)Lcom/bytedance/msdk/api/p/dq/mn/no$dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->ox:I

    return-object p0
.end method

.method public mn(I)Lcom/bytedance/msdk/api/p/dq/mn/no$dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->ia:I

    return-object p0
.end method

.method public no(I)Lcom/bytedance/msdk/api/p/dq/mn/no$dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->s:I

    return-object p0
.end method

.method public o(I)Lcom/bytedance/msdk/api/p/dq/mn/no$dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->p:I

    return-object p0
.end method

.method public ox(I)Lcom/bytedance/msdk/api/p/dq/mn/no$dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->o:I

    return-object p0
.end method

.method public p(I)Lcom/bytedance/msdk/api/p/dq/mn/no$dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->no:I

    return-object p0
.end method

.method public s(I)Lcom/bytedance/msdk/api/p/dq/mn/no$dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/api/p/dq/mn/no$dq;->ig:I

    return-object p0
.end method
