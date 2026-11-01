.class public Lcom/bytedance/sdk/openadsdk/core/d/p$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/d/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field public d:D

.field public dq:I

.field public ox:D

.field public p:J


# direct methods
.method public constructor <init>(IDDJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/p$dq;->dq:I

    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/p$dq;->d:D

    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/core/d/p$dq;->ox:D

    iput-wide p6, p0, Lcom/bytedance/sdk/openadsdk/core/d/p$dq;->p:J

    return-void
.end method
