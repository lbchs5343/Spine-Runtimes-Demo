.class public Lcom/ss/android/downloadlib/d/d;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/ss/android/downloadad/api/dq/d;Lcom/ss/android/downloadlib/d/mn;I)V
    .locals 2

    invoke-static {}, Lcom/ss/android/downloadlib/s;->dq()Lcom/ss/android/downloadlib/s;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/d/d$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/downloadlib/d/d$1;-><init>(Lcom/ss/android/downloadlib/d/d;Lcom/ss/android/downloadad/api/dq/d;Lcom/ss/android/downloadlib/d/mn;)V

    int-to-long p1, p3

    invoke-virtual {v0, v1, p1, p2}, Lcom/ss/android/downloadlib/s;->dq(Ljava/lang/Runnable;J)V

    return-void
.end method
