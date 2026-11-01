.class Lcom/ss/android/downloadlib/d/s$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/d/s;->dq(Lcom/ss/android/downloadlib/d/p;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/downloadlib/d/p;

.field final synthetic dq:J

.field final synthetic ox:Lcom/ss/android/downloadlib/d/s;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/d/s;JLcom/ss/android/downloadlib/d/p;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/d/s$1;->ox:Lcom/ss/android/downloadlib/d/s;

    iput-wide p2, p0, Lcom/ss/android/downloadlib/d/s$1;->dq:J

    iput-object p4, p0, Lcom/ss/android/downloadlib/d/s$1;->d:Lcom/ss/android/downloadlib/d/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/ss/android/socialbase/downloader/dq/dq;->dq()Lcom/ss/android/socialbase/downloader/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/dq/dq;->ox()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ss/android/downloadlib/d/s$1;->ox:Lcom/ss/android/downloadlib/d/s;

    invoke-static {v2}, Lcom/ss/android/downloadlib/d/s;->dq(Lcom/ss/android/downloadlib/d/s;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/ss/android/downloadlib/d/s$1;->dq:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/d/s$1;->d:Lcom/ss/android/downloadlib/d/p;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ss/android/downloadlib/d/p;->dq(Z)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/d/s$1;->d:Lcom/ss/android/downloadlib/d/p;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/ss/android/downloadlib/d/p;->dq(Z)V

    return-void
.end method
