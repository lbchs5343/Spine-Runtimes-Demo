.class Lcom/bytedance/msdk/core/mn/s$14;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/core/s/d/p$ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/mn/s;->ha()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:D

.field final synthetic dq:I

.field final synthetic ox:Lcom/bytedance/msdk/core/mn/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/mn/s;ID)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/mn/s$14;->ox:Lcom/bytedance/msdk/core/mn/s;

    iput p2, p0, Lcom/bytedance/msdk/core/mn/s$14;->dq:I

    iput-wide p3, p0, Lcom/bytedance/msdk/core/mn/s$14;->d:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Ljava/lang/String;ZILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$14;->ox:Lcom/bytedance/msdk/core/mn/s;

    iget v5, p0, Lcom/bytedance/msdk/core/mn/s$14;->dq:I

    iget-wide v6, p0, Lcom/bytedance/msdk/core/mn/s$14;->d:D

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v7}, Lcom/bytedance/msdk/core/mn/s;->dq(Lcom/bytedance/msdk/core/mn/s;Ljava/lang/String;ZILjava/util/List;ID)V

    return-void
.end method
