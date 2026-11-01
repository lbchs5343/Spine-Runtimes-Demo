.class public Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/p/ox/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public d:J

.field public dq:J

.field public ox:Ljava/lang/String;

.field public p:I

.field public s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;->dq:J

    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;->d:J

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;->ox:Ljava/lang/String;

    const/16 p1, 0x19cf

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;->p:I

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;->s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dq()Z
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;->ox:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;->dq:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method
