.class Lcom/ss/android/downloadlib/addownload/p$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/p;->dq(ILjava/lang/String;JLcom/ss/android/downloadad/api/dq/d;JLcom/ss/android/downloadlib/addownload/s$dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/downloadlib/addownload/p;

.field final synthetic dq:Lcom/ss/android/downloadlib/addownload/s$dq;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/addownload/p;Lcom/ss/android/downloadlib/addownload/s$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/p$5;->d:Lcom/ss/android/downloadlib/addownload/p;

    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/p$5;->dq:Lcom/ss/android/downloadlib/addownload/s$dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/p$5;->dq:Lcom/ss/android/downloadlib/addownload/s$dq;

    invoke-interface {v0}, Lcom/ss/android/downloadlib/addownload/s$dq;->dq()V

    return-void
.end method
