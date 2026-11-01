.class public Lcom/bytedance/sdk/openadsdk/core/no$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/no;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static final dq:Lcom/bytedance/sdk/component/mn/dq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "sp_global_info"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/n;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/no$d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    return-void
.end method
