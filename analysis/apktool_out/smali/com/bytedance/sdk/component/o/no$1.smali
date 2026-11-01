.class Lcom/bytedance/sdk/component/o/no$1;
.super Lcom/bytedance/sdk/component/o/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/o/no;->kk()Ljava/util/concurrent/ThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/o/no;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/o/no;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/o/no$1;->d:Lcom/bytedance/sdk/component/o/no;

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/component/o/o;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dq(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;
    .locals 1

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
