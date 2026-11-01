.class Lcom/ss/android/downloadlib/d/iw$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/d/iw$1;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/ss/android/downloadlib/d/iw$1;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/d/iw$1;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/d/iw$1$1;->dq:Lcom/ss/android/downloadlib/d/iw$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/ss/android/downloadlib/d/iw$1$1;->dq:Lcom/ss/android/downloadlib/d/iw$1;

    iget-object v0, v0, Lcom/ss/android/downloadlib/d/iw$1;->dq:Lcom/ss/android/downloadad/api/dq/d;

    invoke-virtual {v0}, Lcom/ss/android/downloadad/api/dq/d;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/mn/mp;->ox(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/d/iw$1$1;->dq:Lcom/ss/android/downloadlib/d/iw$1;

    iget-object v1, v1, Lcom/ss/android/downloadlib/d/iw$1;->dq:Lcom/ss/android/downloadad/api/dq/d;

    invoke-static {v1}, Lcom/ss/android/downloadlib/d/iw;->s(Lcom/ss/android/downloadad/api/dq/d;)J

    move-result-wide v1

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/ss/android/downloadlib/d/iw$1$1;->dq:Lcom/ss/android/downloadlib/d/iw$1;

    iget-wide v5, v0, Lcom/ss/android/downloadlib/d/iw$1;->d:J

    sub-long/2addr v3, v5

    cmp-long v0, v1, v3

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/d/iw$1$1;->dq:Lcom/ss/android/downloadlib/d/iw$1;

    iget-object v0, v0, Lcom/ss/android/downloadlib/d/iw$1;->dq:Lcom/ss/android/downloadad/api/dq/d;

    invoke-static {v0}, Lcom/ss/android/downloadlib/d/iw;->iw(Lcom/ss/android/downloadad/api/dq/d;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/ss/android/downloadlib/d/iw$1$1;->dq:Lcom/ss/android/downloadlib/d/iw$1;

    iget-wide v5, v4, Lcom/ss/android/downloadlib/d/iw$1;->d:J

    sub-long/2addr v2, v5

    cmp-long v5, v2, v0

    if-lez v5, :cond_2

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/d/iw$1$1;->dq:Lcom/ss/android/downloadlib/d/iw$1;

    iget-object v1, v1, Lcom/ss/android/downloadlib/d/iw$1;->dq:Lcom/ss/android/downloadad/api/dq/d;

    const-string v2, "deeplink_delay_timeout"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/downloadlib/p/dq;->dq(Ljava/lang/String;Lcom/ss/android/downloadad/api/dq/dq;)V

    return-void

    :cond_2
    iget-object v0, v4, Lcom/ss/android/downloadlib/d/iw$1;->dq:Lcom/ss/android/downloadad/api/dq/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->ig(Z)V

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/downloadlib/d/iw$1$1;->dq:Lcom/ss/android/downloadlib/d/iw$1;

    iget-object v2, v2, Lcom/ss/android/downloadlib/d/iw$1;->dq:Lcom/ss/android/downloadad/api/dq/d;

    const-string v3, "deeplink_delay_invoke"

    invoke-virtual {v0, v3, v2}, Lcom/ss/android/downloadlib/p/dq;->dq(Ljava/lang/String;Lcom/ss/android/downloadad/api/dq/dq;)V

    iget-object v0, p0, Lcom/ss/android/downloadlib/d/iw$1$1;->dq:Lcom/ss/android/downloadlib/d/iw$1;

    iget-object v0, v0, Lcom/ss/android/downloadlib/d/iw$1;->ox:Lcom/ss/android/downloadlib/d/ia;

    invoke-interface {v0, v1}, Lcom/ss/android/downloadlib/d/ia;->dq(Z)V

    iget-object v0, p0, Lcom/ss/android/downloadlib/d/iw$1$1;->dq:Lcom/ss/android/downloadlib/d/iw$1;

    iget-object v0, v0, Lcom/ss/android/downloadlib/d/iw$1;->dq:Lcom/ss/android/downloadad/api/dq/d;

    invoke-static {v0}, Lcom/ss/android/downloadlib/d/iw;->mn(Lcom/ss/android/downloadad/api/dq/d;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/d/iw;->dq(Lcom/ss/android/downloadad/api/dq/d;I)V

    return-void
.end method
