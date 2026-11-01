.class Lcom/ss/android/downloadlib/addownload/p/ox$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/downloadlib/addownload/dq/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/p/ox;->dq(Lcom/ss/android/downloadad/api/dq/d;ILcom/ss/android/downloadlib/addownload/p/ia;Lcom/ss/android/downloadlib/addownload/dq/ox;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic dq:I

.field final synthetic iw:Lcom/ss/android/downloadlib/addownload/p/ox;

.field final synthetic ox:I

.field final synthetic p:Lcom/ss/android/downloadad/api/dq/d;

.field final synthetic s:Lcom/ss/android/downloadlib/addownload/p/ia;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/addownload/p/ox;IIILcom/ss/android/downloadad/api/dq/d;Lcom/ss/android/downloadlib/addownload/p/ia;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/p/ox$1;->iw:Lcom/ss/android/downloadlib/addownload/p/ox;

    iput p2, p0, Lcom/ss/android/downloadlib/addownload/p/ox$1;->dq:I

    iput p3, p0, Lcom/ss/android/downloadlib/addownload/p/ox$1;->d:I

    iput p4, p0, Lcom/ss/android/downloadlib/addownload/p/ox$1;->ox:I

    iput-object p5, p0, Lcom/ss/android/downloadlib/addownload/p/ox$1;->p:Lcom/ss/android/downloadad/api/dq/d;

    iput-object p6, p0, Lcom/ss/android/downloadlib/addownload/p/ox$1;->s:Lcom/ss/android/downloadlib/addownload/p/ia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 8

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/p/ox;->dq(Lcom/ss/android/downloadlib/addownload/dq/p;)Lcom/ss/android/downloadlib/addownload/dq/p;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/p/ox$1;->iw:Lcom/ss/android/downloadlib/addownload/p/ox;

    iget v2, p0, Lcom/ss/android/downloadlib/addownload/p/ox$1;->dq:I

    iget v3, p0, Lcom/ss/android/downloadlib/addownload/p/ox$1;->d:I

    iget v4, p0, Lcom/ss/android/downloadlib/addownload/p/ox$1;->ox:I

    iget-object v5, p0, Lcom/ss/android/downloadlib/addownload/p/ox$1;->p:Lcom/ss/android/downloadad/api/dq/d;

    const-string v6, "download_percent_cancel"

    const-string v7, "cancel"

    invoke-static/range {v1 .. v7}, Lcom/ss/android/downloadlib/addownload/p/ox;->dq(Lcom/ss/android/downloadlib/addownload/p/ox;IIILcom/ss/android/downloadad/api/dq/d;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/p/ox$1;->s:Lcom/ss/android/downloadlib/addownload/p/ia;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/p/ox$1;->p:Lcom/ss/android/downloadad/api/dq/d;

    invoke-interface {v0, v1}, Lcom/ss/android/downloadlib/addownload/p/ia;->dq(Lcom/ss/android/downloadad/api/dq/d;)V

    return-void
.end method

.method public dq()V
    .locals 8

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/p/ox;->dq(Lcom/ss/android/downloadlib/addownload/dq/p;)Lcom/ss/android/downloadlib/addownload/dq/p;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/p/ox$1;->iw:Lcom/ss/android/downloadlib/addownload/p/ox;

    iget v2, p0, Lcom/ss/android/downloadlib/addownload/p/ox$1;->dq:I

    iget v3, p0, Lcom/ss/android/downloadlib/addownload/p/ox$1;->d:I

    iget v4, p0, Lcom/ss/android/downloadlib/addownload/p/ox$1;->ox:I

    iget-object v5, p0, Lcom/ss/android/downloadlib/addownload/p/ox$1;->p:Lcom/ss/android/downloadad/api/dq/d;

    const-string v6, "download_percent_cancel"

    const-string v7, "confirm"

    invoke-static/range {v1 .. v7}, Lcom/ss/android/downloadlib/addownload/p/ox;->dq(Lcom/ss/android/downloadlib/addownload/p/ox;IIILcom/ss/android/downloadad/api/dq/d;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
