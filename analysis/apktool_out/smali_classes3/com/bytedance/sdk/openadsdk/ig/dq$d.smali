.class Lcom/bytedance/sdk/openadsdk/ig/dq$d;
.super Ljava/lang/Exception;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/ig/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field d:Z

.field dq:Z

.field ox:J

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/ig/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/ig/dq;Z)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ig/dq$d;->p:Lcom/bytedance/sdk/openadsdk/ig/dq;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/ig/dq$d;->dq:Z

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/ig/dq;ZJ)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ig/dq$d;->p:Lcom/bytedance/sdk/openadsdk/ig/dq;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/ig/dq$d;->dq:Z

    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/ig/dq$d;->ox:J

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/ig/dq;ZZJ)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ig/dq$d;->p:Lcom/bytedance/sdk/openadsdk/ig/dq;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/ig/dq$d;->dq:Z

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/ig/dq$d;->d:Z

    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/ig/dq$d;->ox:J

    return-void
.end method
