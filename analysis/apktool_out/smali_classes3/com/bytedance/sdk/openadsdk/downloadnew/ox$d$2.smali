.class Lcom/bytedance/sdk/openadsdk/downloadnew/ox$d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTHttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/ox$d;->dq(Ljava/lang/String;[BLjava/lang/String;ILcom/ss/android/download/api/config/cd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/downloadnew/ox$d;

.field final synthetic dq:Lcom/ss/android/download/api/config/cd;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/downloadnew/ox$d;Lcom/ss/android/download/api/config/cd;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$d$2;->d:Lcom/bytedance/sdk/openadsdk/downloadnew/ox$d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$d$2;->dq:Lcom/ss/android/download/api/config/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$d$2;->dq:Lcom/ss/android/download/api/config/cd;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ss/android/download/api/config/cd;->dq(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/ox$d$2;->dq:Lcom/ss/android/download/api/config/cd;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ss/android/download/api/config/cd;->dq(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
