.class final Lcom/ss/android/downloadlib/d/iw$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/dq/dq$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/d/iw;->dq(Lcom/ss/android/downloadad/api/dq/d;Lcom/ss/android/downloadlib/d/ia;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:J

.field final synthetic dq:Lcom/ss/android/downloadad/api/dq/d;

.field final synthetic ox:Lcom/ss/android/downloadlib/d/ia;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadad/api/dq/d;JLcom/ss/android/downloadlib/d/ia;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/d/iw$1;->dq:Lcom/ss/android/downloadad/api/dq/d;

    iput-wide p2, p0, Lcom/ss/android/downloadlib/d/iw$1;->d:J

    iput-object p4, p0, Lcom/ss/android/downloadlib/d/iw$1;->ox:Lcom/ss/android/downloadlib/d/ia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    invoke-static {}, Lcom/ss/android/socialbase/downloader/dq/dq;->dq()Lcom/ss/android/socialbase/downloader/dq/dq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/downloader/dq/dq;->d(Lcom/ss/android/socialbase/downloader/dq/dq$dq;)V

    invoke-static {}, Lcom/ss/android/downloadlib/s;->dq()Lcom/ss/android/downloadlib/s;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/d/iw$1$1;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/d/iw$1$1;-><init>(Lcom/ss/android/downloadlib/d/iw$1;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/s;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ox()V
    .locals 0

    return-void
.end method
