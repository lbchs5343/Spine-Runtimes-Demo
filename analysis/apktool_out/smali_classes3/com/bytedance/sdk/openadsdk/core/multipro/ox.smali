.class public Lcom/bytedance/sdk/openadsdk/core/multipro/ox;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/ITTProvider;


# instance fields
.field private dq:Lcom/bytedance/sdk/component/mn/ox/dq/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/component/mn/ox/dq/p;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/mn/ox/dq/p;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/ox;->dq:Lcom/bytedance/sdk/component/mn/ox/dq/p;

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/ox;->dq:Lcom/bytedance/sdk/component/mn/ox/dq/p;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/mn/ox/dq/p;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/ox;->dq:Lcom/bytedance/sdk/component/mn/ox/dq/p;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/mn/ox/dq/p;->dq()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/ox;->dq:Lcom/bytedance/sdk/component/mn/ox/dq/p;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/mn/ox/dq/p;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public injectContext(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/ox;->dq:Lcom/bytedance/sdk/component/mn/ox/dq/p;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/mn/ox/dq/p;->dq(Landroid/content/Context;)V

    return-void
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/ox;->dq:Lcom/bytedance/sdk/component/mn/ox/dq/p;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/ox/dq/p;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/ox;->dq:Lcom/bytedance/sdk/component/mn/ox/dq/p;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/component/mn/ox/dq/p;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/ox;->dq:Lcom/bytedance/sdk/component/mn/ox/dq/p;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/component/mn/ox/dq/p;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method
