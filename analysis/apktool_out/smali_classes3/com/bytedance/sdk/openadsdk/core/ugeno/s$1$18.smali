.class Lcom/bytedance/sdk/openadsdk/core/ugeno/s$1$18;
.super Lg/gap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/s$1;->dq()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/s$1;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/s$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/s$1$18;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/s$1;

    invoke-direct {p0, p2}, Lg/gap;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dq(Landroid/content/Context;)Lg/dlv;
    .locals 2

    new-instance v0, Lg/cfe;

    invoke-direct {v0, p1}, Lg/eyh;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, v0, Lg/cfe;->ae:Z

    iput-boolean p1, v0, Lg/cfe;->ag:Z

    const/high16 v1, 0x44fa0000    # 2000.0f

    iput v1, v0, Lg/cfe;->y:F

    const-string v1, "normal"

    iput-object v1, v0, Lg/cfe;->ac:Ljava/lang/String;

    iput-boolean p1, v0, Lg/cfe;->ad:Z

    const-string p1, "#666666"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lg/cfe;->ai:I

    const-string p1, "#ffffff"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lg/cfe;->g:I

    return-object v0
.end method
