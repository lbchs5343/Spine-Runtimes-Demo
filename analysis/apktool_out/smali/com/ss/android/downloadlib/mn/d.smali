.class public Lcom/ss/android/downloadlib/mn/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/mn/d$d;,
        Lcom/ss/android/downloadlib/mn/d$dq;
    }
.end annotation


# static fields
.field static final dq:Lcom/ss/android/downloadlib/mn/d$dq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ss/android/downloadlib/mn/d$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/downloadlib/mn/d$d;-><init>(Lcom/ss/android/downloadlib/mn/d$1;)V

    sput-object v0, Lcom/ss/android/downloadlib/mn/d;->dq:Lcom/ss/android/downloadlib/mn/d$dq;

    return-void
.end method

.method public static varargs dq(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/AsyncTask<",
            "TT;**>;[TT;)V"
        }
    .end annotation

    sget-object v0, Lcom/ss/android/downloadlib/mn/d;->dq:Lcom/ss/android/downloadlib/mn/d$dq;

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/downloadlib/mn/d$dq;->dq(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method
