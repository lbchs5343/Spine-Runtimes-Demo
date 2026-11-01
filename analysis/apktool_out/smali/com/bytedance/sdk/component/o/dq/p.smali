.class public Lcom/bytedance/sdk/component/o/dq/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final d:I

.field private final dq:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Lcom/bytedance/sdk/component/o/o;

    const-string v0, "default"

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/component/o/o;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/o/dq/p;->dq:Ljava/util/concurrent/ThreadFactory;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/component/o/dq/p;->dq:Ljava/util/concurrent/ThreadFactory;

    :goto_0
    iput p2, p0, Lcom/bytedance/sdk/component/o/dq/p;->d:I

    return-void
.end method


# virtual methods
.method public d()Z
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/component/o/no;->d:Lcom/bytedance/sdk/component/o/no;

    iget v1, p0, Lcom/bytedance/sdk/component/o/dq/p;->d:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/o/no;->dq(I)Z

    move-result v0

    return v0
.end method

.method public final dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/p;->dq:Ljava/util/concurrent/ThreadFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/dq/p;->dq:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/o/dq/p;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/component/o/dq/mn;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/component/o/dq/mn;-><init>(Ljava/lang/Thread;)V

    return-object v0

    :cond_0
    return-object p1
.end method
