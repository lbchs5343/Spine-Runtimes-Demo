.class public Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;
.super Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;


# instance fields
.field private ia:I

.field private iw:Landroid/content/Context;

.field private kk:I

.field private mn:Ljava/lang/String;

.field private no:Z

.field private o:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

.field public p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

.field private s:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;->ia:I

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;->iw:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;->mn:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;->s:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->s()Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;->no:Z

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;->o:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;->iw:Landroid/content/Context;

    return-object v0
.end method

.method public ia()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;->kk:I

    return v0
.end method

.method public iw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;->mn:Ljava/lang/String;

    return-object v0
.end method

.method public kk()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;->no:Z

    return v0
.end method

.method public mn()Lcom/bytedance/sdk/openadsdk/f/d/ox/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;->o:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    return-object v0
.end method

.method public p()Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;->s:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    return-object v0
.end method

.method public s()Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

    return-object v0
.end method
