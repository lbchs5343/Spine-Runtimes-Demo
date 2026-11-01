.class Lcom/ss/android/downloadlib/dq$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/dq;->dq(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/downloadlib/dq;

.field final synthetic dq:J


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/dq;J)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/dq$2;->d:Lcom/ss/android/downloadlib/dq;

    iput-wide p2, p0, Lcom/ss/android/downloadlib/dq$2;->dq:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/ss/android/downloadlib/dq;->dq()Lcom/ss/android/downloadlib/dq;

    move-result-object v0

    iget-wide v1, p0, Lcom/ss/android/downloadlib/dq$2;->dq:J

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/dq;->dq(J)V

    return-void
.end method
