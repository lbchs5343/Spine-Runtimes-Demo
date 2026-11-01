.class final Lcom/bytedance/sdk/component/dq/gh;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/dq/gh$dq;
    }
.end annotation


# instance fields
.field private d:Lcom/bytedance/sdk/component/dq/k;

.field private dq:Ljava/lang/String;

.field private ox:Lcom/bytedance/sdk/component/dq/gh$dq;

.field private p:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/k;Lcom/bytedance/sdk/component/dq/gh$dq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/dq/gh;->p:Z

    iput-object p1, p0, Lcom/bytedance/sdk/component/dq/gh;->dq:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/component/dq/gh;->d:Lcom/bytedance/sdk/component/dq/k;

    iput-object p3, p0, Lcom/bytedance/sdk/component/dq/gh;->ox:Lcom/bytedance/sdk/component/dq/gh$dq;

    return-void
.end method
