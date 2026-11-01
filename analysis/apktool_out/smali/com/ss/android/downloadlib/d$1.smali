.class Lcom/ss/android/downloadlib/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/downloadlib/s/d$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/d;->dq(Landroid/content/Context;Ljava/lang/String;ZLcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/download/DownloadStatusChangeListener;IZLcom/ss/android/download/api/config/IDownloadButtonClickListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ss/android/downloadlib/s/d$dq<",
        "Landroid/app/Dialog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic dq:Landroid/content/Context;

.field final synthetic ia:I

.field final synthetic iw:Lcom/ss/android/download/api/download/DownloadController;

.field final synthetic kk:Z

.field final synthetic mn:Lcom/ss/android/download/api/download/DownloadStatusChangeListener;

.field final synthetic no:Lcom/ss/android/downloadlib/d;

.field final synthetic o:Lcom/ss/android/download/api/config/IDownloadButtonClickListener;

.field final synthetic ox:Z

.field final synthetic p:Lcom/ss/android/download/api/download/DownloadModel;

.field final synthetic s:Lcom/ss/android/download/api/download/DownloadEventConfig;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/d;Landroid/content/Context;Ljava/lang/String;ZLcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/download/DownloadStatusChangeListener;IZLcom/ss/android/download/api/config/IDownloadButtonClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/d$1;->no:Lcom/ss/android/downloadlib/d;

    iput-object p2, p0, Lcom/ss/android/downloadlib/d$1;->dq:Landroid/content/Context;

    iput-object p3, p0, Lcom/ss/android/downloadlib/d$1;->d:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/ss/android/downloadlib/d$1;->ox:Z

    iput-object p5, p0, Lcom/ss/android/downloadlib/d$1;->p:Lcom/ss/android/download/api/download/DownloadModel;

    iput-object p6, p0, Lcom/ss/android/downloadlib/d$1;->s:Lcom/ss/android/download/api/download/DownloadEventConfig;

    iput-object p7, p0, Lcom/ss/android/downloadlib/d$1;->iw:Lcom/ss/android/download/api/download/DownloadController;

    iput-object p8, p0, Lcom/ss/android/downloadlib/d$1;->mn:Lcom/ss/android/download/api/download/DownloadStatusChangeListener;

    iput p9, p0, Lcom/ss/android/downloadlib/d$1;->ia:I

    iput-boolean p10, p0, Lcom/ss/android/downloadlib/d$1;->kk:Z

    iput-object p11, p0, Lcom/ss/android/downloadlib/d$1;->o:Lcom/ss/android/download/api/config/IDownloadButtonClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/ss/android/downloadlib/d$1;->dq()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public dq()Landroid/app/Dialog;
    .locals 11

    iget-object v0, p0, Lcom/ss/android/downloadlib/d$1;->no:Lcom/ss/android/downloadlib/d;

    iget-object v1, p0, Lcom/ss/android/downloadlib/d$1;->dq:Landroid/content/Context;

    iget-object v2, p0, Lcom/ss/android/downloadlib/d$1;->d:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/ss/android/downloadlib/d$1;->ox:Z

    iget-object v4, p0, Lcom/ss/android/downloadlib/d$1;->p:Lcom/ss/android/download/api/download/DownloadModel;

    iget-object v5, p0, Lcom/ss/android/downloadlib/d$1;->s:Lcom/ss/android/download/api/download/DownloadEventConfig;

    iget-object v6, p0, Lcom/ss/android/downloadlib/d$1;->iw:Lcom/ss/android/download/api/download/DownloadController;

    iget-object v7, p0, Lcom/ss/android/downloadlib/d$1;->mn:Lcom/ss/android/download/api/download/DownloadStatusChangeListener;

    iget v8, p0, Lcom/ss/android/downloadlib/d$1;->ia:I

    iget-boolean v9, p0, Lcom/ss/android/downloadlib/d$1;->kk:Z

    iget-object v10, p0, Lcom/ss/android/downloadlib/d$1;->o:Lcom/ss/android/download/api/config/IDownloadButtonClickListener;

    invoke-virtual/range {v0 .. v10}, Lcom/ss/android/downloadlib/d;->d(Landroid/content/Context;Ljava/lang/String;ZLcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/download/DownloadStatusChangeListener;IZLcom/ss/android/download/api/config/IDownloadButtonClickListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
