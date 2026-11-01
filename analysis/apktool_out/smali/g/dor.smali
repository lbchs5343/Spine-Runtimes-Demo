.class public final Lg/dor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/tencent/bugly/proguard/r;


# direct methods
.method public synthetic constructor <init>(Lcom/tencent/bugly/proguard/r;I)V
    .locals 0

    iput p2, p0, Lg/dor;->a:I

    iput-object p1, p0, Lg/dor;->b:Lcom/tencent/bugly/proguard/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lg/dor;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lg/dor;->b:Lcom/tencent/bugly/proguard/r;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/r;->b(Lcom/tencent/bugly/proguard/r;)J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    invoke-static {}, Lcom/tencent/bugly/proguard/ak;->a()Lcom/tencent/bugly/proguard/ak;

    move-result-object v3

    new-instance v4, Lg/dor;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v5}, Lg/dor;-><init>(Lcom/tencent/bugly/proguard/r;I)V

    invoke-static {v2}, Lcom/tencent/bugly/proguard/r;->b(Lcom/tencent/bugly/proguard/r;)J

    move-result-wide v5

    sub-long/2addr v5, v0

    const-wide/16 v0, 0x1388

    add-long/2addr v5, v0

    invoke-virtual {v3, v4, v5, v6}, Lcom/tencent/bugly/proguard/ak;->a(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lcom/tencent/bugly/proguard/r;->a(IZ)V

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/r;->a()V

    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lg/dor;->b:Lcom/tencent/bugly/proguard/r;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/r;->a(Lcom/tencent/bugly/proguard/r;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
