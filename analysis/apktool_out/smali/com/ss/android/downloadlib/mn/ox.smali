.class public Lcom/ss/android/downloadlib/mn/ox;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/mn/ox$dq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private dq:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field private iw:Lcom/ss/android/downloadlib/mn/ox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ss/android/downloadlib/mn/ox<",
            "TR;*>;"
        }
    .end annotation
.end field

.field private ox:I

.field private p:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/ss/android/downloadlib/mn/ox$dq<",
            "TP;TR;>;>;"
        }
    .end annotation
.end field

.field private s:Lcom/ss/android/downloadlib/mn/ox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ss/android/downloadlib/mn/ox<",
            "*TP;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILcom/ss/android/downloadlib/mn/ox$dq;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/ss/android/downloadlib/mn/ox$dq<",
            "TP;TR;>;TP;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ss/android/downloadlib/mn/ox;->ox:I

    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ss/android/downloadlib/mn/ox;->p:Ljava/lang/ref/SoftReference;

    iput-object p3, p0, Lcom/ss/android/downloadlib/mn/ox;->dq:Ljava/lang/Object;

    return-void
.end method

.method private d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/downloadlib/mn/ox;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public static dq(Lcom/ss/android/downloadlib/mn/ox$dq;Ljava/lang/Object;)Lcom/ss/android/downloadlib/mn/ox;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ss/android/downloadlib/mn/ox$dq<",
            "TP;TR;>;TP;)",
            "Lcom/ss/android/downloadlib/mn/ox<",
            "TP;TR;>;"
        }
    .end annotation

    new-instance v0, Lcom/ss/android/downloadlib/mn/ox;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Lcom/ss/android/downloadlib/mn/ox;-><init>(ILcom/ss/android/downloadlib/mn/ox$dq;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public dq(ILcom/ss/android/downloadlib/mn/ox$dq;)Lcom/ss/android/downloadlib/mn/ox;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<NR:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/ss/android/downloadlib/mn/ox$dq<",
            "TR;TNR;>;)",
            "Lcom/ss/android/downloadlib/mn/ox<",
            "TR;TNR;>;"
        }
    .end annotation

    new-instance v0, Lcom/ss/android/downloadlib/mn/ox;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/ss/android/downloadlib/mn/ox;-><init>(ILcom/ss/android/downloadlib/mn/ox$dq;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/mn/ox;->iw:Lcom/ss/android/downloadlib/mn/ox;

    iput-object p0, v0, Lcom/ss/android/downloadlib/mn/ox;->s:Lcom/ss/android/downloadlib/mn/ox;

    return-object v0
.end method

.method public dq(Lcom/ss/android/downloadlib/mn/ox$dq;)Lcom/ss/android/downloadlib/mn/ox;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<NR:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ss/android/downloadlib/mn/ox$dq<",
            "TR;TNR;>;)",
            "Lcom/ss/android/downloadlib/mn/ox<",
            "TR;TNR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/downloadlib/mn/ox;->dq(ILcom/ss/android/downloadlib/mn/ox$dq;)Lcom/ss/android/downloadlib/mn/ox;

    move-result-object p1

    return-object p1
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadlib/mn/ox;->s:Lcom/ss/android/downloadlib/mn/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/mn/ox;->dq()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/mn/ox;->run()V

    return-void
.end method

.method public run()V
    .locals 2

    iget v0, p0, Lcom/ss/android/downloadlib/mn/ox;->ox:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ss/android/downloadlib/mn/mp;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ss/android/downloadlib/ia;->dq()Lcom/ss/android/downloadlib/ia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/ia;->d()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget v0, p0, Lcom/ss/android/downloadlib/mn/ox;->ox:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/ss/android/downloadlib/mn/mp;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ss/android/downloadlib/s;->dq()Lcom/ss/android/downloadlib/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/downloadlib/s;->dq(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget v0, p0, Lcom/ss/android/downloadlib/mn/ox;->ox:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/ss/android/downloadlib/mn/mp;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ss/android/downloadlib/s;->dq()Lcom/ss/android/downloadlib/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/downloadlib/s;->d(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/ss/android/downloadlib/mn/ox;->dq:Ljava/lang/Object;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ss/android/downloadlib/mn/ox;->s:Lcom/ss/android/downloadlib/mn/ox;

    if-eqz v0, :cond_3

    invoke-direct {v0}, Lcom/ss/android/downloadlib/mn/ox;->d()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadlib/mn/ox;->dq:Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/ss/android/downloadlib/mn/ox;->p:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadlib/mn/ox$dq;

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/ss/android/downloadlib/mn/ox;->dq:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/ss/android/downloadlib/mn/ox$dq;->dq(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadlib/mn/ox;->d:Ljava/lang/Object;

    iget-object v0, p0, Lcom/ss/android/downloadlib/mn/ox;->iw:Lcom/ss/android/downloadlib/mn/ox;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/mn/ox;->run()V

    :cond_5
    :goto_0
    return-void
.end method
