.class final Lcom/bytedance/msdk/ia/iw$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ia/iw;->p(Landroid/content/Context;)Lcom/bytedance/msdk/ia/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/location/LocationManager;

.field final synthetic dq:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ia/iw$1;->dq:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/msdk/ia/iw$1;->d:Landroid/location/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ia/iw$1;->dq:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/msdk/ia/iw$1;->d:Landroid/location/LocationManager;

    invoke-static {v0, v1}, Lcom/bytedance/msdk/ia/iw;->dq(Landroid/content/Context;Landroid/location/LocationManager;)V

    return-void
.end method
