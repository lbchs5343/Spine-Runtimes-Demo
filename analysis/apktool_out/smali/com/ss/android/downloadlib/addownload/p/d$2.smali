.class Lcom/ss/android/downloadlib/addownload/p/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/downloadlib/addownload/dq/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/p/d;->dq(Lcom/ss/android/downloadad/api/dq/d;ILcom/ss/android/downloadlib/addownload/p/ia;Lcom/ss/android/downloadlib/addownload/dq/ox;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic dq:I

.field final synthetic ox:Lcom/ss/android/downloadad/api/dq/d;

.field final synthetic p:Lcom/ss/android/downloadlib/addownload/dq/ox;

.field final synthetic s:Lcom/ss/android/downloadlib/addownload/p/d;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/addownload/p/d;IILcom/ss/android/downloadad/api/dq/d;Lcom/ss/android/downloadlib/addownload/dq/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/p/d$2;->s:Lcom/ss/android/downloadlib/addownload/p/d;

    iput p2, p0, Lcom/ss/android/downloadlib/addownload/p/d$2;->dq:I

    iput p3, p0, Lcom/ss/android/downloadlib/addownload/p/d$2;->d:I

    iput-object p4, p0, Lcom/ss/android/downloadlib/addownload/p/d$2;->ox:Lcom/ss/android/downloadad/api/dq/d;

    iput-object p5, p0, Lcom/ss/android/downloadlib/addownload/p/d$2;->p:Lcom/ss/android/downloadlib/addownload/dq/ox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 7

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/p/d;->dq(Lcom/ss/android/downloadlib/addownload/dq/p;)Lcom/ss/android/downloadlib/addownload/dq/p;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/p/d$2;->s:Lcom/ss/android/downloadlib/addownload/p/d;

    iget v2, p0, Lcom/ss/android/downloadlib/addownload/p/d$2;->dq:I

    iget v3, p0, Lcom/ss/android/downloadlib/addownload/p/d$2;->d:I

    iget-object v4, p0, Lcom/ss/android/downloadlib/addownload/p/d$2;->ox:Lcom/ss/android/downloadad/api/dq/d;

    const-string v5, "apk_size_cancel"

    const-string v6, "delete"

    invoke-static/range {v1 .. v6}, Lcom/ss/android/downloadlib/addownload/p/d;->dq(Lcom/ss/android/downloadlib/addownload/p/d;IILcom/ss/android/downloadad/api/dq/d;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/p/d$2;->p:Lcom/ss/android/downloadlib/addownload/dq/ox;

    invoke-interface {v0}, Lcom/ss/android/downloadlib/addownload/dq/ox;->delete()V

    return-void
.end method
