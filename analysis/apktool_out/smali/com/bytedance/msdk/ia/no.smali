.class public Lcom/bytedance/msdk/ia/no;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/ia/no$dq;
    }
.end annotation


# instance fields
.field private final d:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private dq:Lcom/bytedance/msdk/ia/no$dq;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/msdk/ia/no$1;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/ia/no$1;-><init>(Lcom/bytedance/msdk/ia/no;)V

    iput-object v0, p0, Lcom/bytedance/msdk/ia/no;->d:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ia/no;)Lcom/bytedance/msdk/ia/no$dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/ia/no;->dq:Lcom/bytedance/msdk/ia/no$dq;

    return-object p0
.end method


# virtual methods
.method public dq(Landroid/app/Application;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ia/no;->d:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/app/Application;Lcom/bytedance/msdk/ia/no$dq;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p2, p0, Lcom/bytedance/msdk/ia/no;->dq:Lcom/bytedance/msdk/ia/no$dq;

    iget-object p2, p0, Lcom/bytedance/msdk/ia/no;->d:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method
