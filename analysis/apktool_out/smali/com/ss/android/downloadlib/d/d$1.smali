.class Lcom/ss/android/downloadlib/d/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/d/d;->dq(Lcom/ss/android/downloadad/api/dq/d;Lcom/ss/android/downloadlib/d/mn;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/downloadlib/d/mn;

.field final synthetic dq:Lcom/ss/android/downloadad/api/dq/d;

.field final synthetic ox:Lcom/ss/android/downloadlib/d/d;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/d/d;Lcom/ss/android/downloadad/api/dq/d;Lcom/ss/android/downloadlib/d/mn;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/d/d$1;->ox:Lcom/ss/android/downloadlib/d/d;

    iput-object p2, p0, Lcom/ss/android/downloadlib/d/d$1;->dq:Lcom/ss/android/downloadad/api/dq/d;

    iput-object p3, p0, Lcom/ss/android/downloadlib/d/d$1;->d:Lcom/ss/android/downloadlib/d/mn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/downloadlib/d/d$1;->dq:Lcom/ss/android/downloadad/api/dq/d;

    invoke-static {v0}, Lcom/ss/android/downloadlib/d/kk;->dq(Lcom/ss/android/downloadad/api/dq/dq;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/downloadlib/d/d$1;->d:Lcom/ss/android/downloadlib/d/mn;

    invoke-interface {v0, v1}, Lcom/ss/android/downloadlib/d/mn;->dq(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/d/d$1;->dq:Lcom/ss/android/downloadad/api/dq/d;

    invoke-static {v0}, Lcom/ss/android/downloadlib/d/iw;->dq(Lcom/ss/android/downloadad/api/dq/d;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/downloadlib/d/d$1;->d:Lcom/ss/android/downloadlib/d/mn;

    invoke-interface {v0, v1}, Lcom/ss/android/downloadlib/d/mn;->dq(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/ss/android/downloadlib/d/d$1;->dq:Lcom/ss/android/downloadad/api/dq/d;

    new-instance v1, Lcom/ss/android/downloadlib/d/d$1$1;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/d/d$1$1;-><init>(Lcom/ss/android/downloadlib/d/d$1;)V

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/d/iw;->dq(Lcom/ss/android/downloadad/api/dq/d;Lcom/ss/android/downloadlib/d/ia;)V

    return-void
.end method
