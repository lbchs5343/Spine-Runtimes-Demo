.class Lcom/ss/android/downloadlib/addownload/ox$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/downloadlib/d/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/ox;->dq(Lcom/ss/android/downloadlib/addownload/s;ILcom/ss/android/download/api/download/DownloadModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic dq:Lcom/ss/android/downloadlib/addownload/s;

.field final synthetic ox:Lcom/ss/android/download/api/download/DownloadModel;

.field final synthetic p:Lcom/ss/android/downloadlib/addownload/ox;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/addownload/ox;Lcom/ss/android/downloadlib/addownload/s;ILcom/ss/android/download/api/download/DownloadModel;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/ox$1;->p:Lcom/ss/android/downloadlib/addownload/ox;

    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/ox$1;->dq:Lcom/ss/android/downloadlib/addownload/s;

    iput p3, p0, Lcom/ss/android/downloadlib/addownload/ox$1;->d:I

    iput-object p4, p0, Lcom/ss/android/downloadlib/addownload/ox$1;->ox:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Z)V
    .locals 4

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/ox$1;->p:Lcom/ss/android/downloadlib/addownload/ox;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/ox$1;->dq:Lcom/ss/android/downloadlib/addownload/s;

    iget v2, p0, Lcom/ss/android/downloadlib/addownload/ox$1;->d:I

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/ox$1;->ox:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/ss/android/downloadlib/addownload/ox;->dq(Lcom/ss/android/downloadlib/addownload/s;ZILcom/ss/android/download/api/download/DownloadModel;)V

    return-void
.end method
