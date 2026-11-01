.class Lcom/ss/android/downloadlib/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/downloadlib/s/d$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/d;->dq(Landroid/content/Context;Landroid/net/Uri;Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ss/android/downloadlib/s/d$dq<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Landroid/net/Uri;

.field final synthetic dq:Landroid/content/Context;

.field final synthetic iw:Lcom/ss/android/download/api/config/IDownloadButtonClickListener;

.field final synthetic mn:Lcom/ss/android/downloadlib/d;

.field final synthetic ox:Lcom/ss/android/download/api/download/DownloadModel;

.field final synthetic p:Lcom/ss/android/download/api/download/DownloadEventConfig;

.field final synthetic s:Lcom/ss/android/download/api/download/DownloadController;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/d;Landroid/content/Context;Landroid/net/Uri;Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/d$3;->mn:Lcom/ss/android/downloadlib/d;

    iput-object p2, p0, Lcom/ss/android/downloadlib/d$3;->dq:Landroid/content/Context;

    iput-object p3, p0, Lcom/ss/android/downloadlib/d$3;->d:Landroid/net/Uri;

    iput-object p4, p0, Lcom/ss/android/downloadlib/d$3;->ox:Lcom/ss/android/download/api/download/DownloadModel;

    iput-object p5, p0, Lcom/ss/android/downloadlib/d$3;->p:Lcom/ss/android/download/api/download/DownloadEventConfig;

    iput-object p6, p0, Lcom/ss/android/downloadlib/d$3;->s:Lcom/ss/android/download/api/download/DownloadController;

    iput-object p7, p0, Lcom/ss/android/downloadlib/d$3;->iw:Lcom/ss/android/download/api/config/IDownloadButtonClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/ss/android/downloadlib/d$3;->dq()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public dq()Ljava/lang/Boolean;
    .locals 7

    iget-object v0, p0, Lcom/ss/android/downloadlib/d$3;->mn:Lcom/ss/android/downloadlib/d;

    iget-object v1, p0, Lcom/ss/android/downloadlib/d$3;->dq:Landroid/content/Context;

    iget-object v2, p0, Lcom/ss/android/downloadlib/d$3;->d:Landroid/net/Uri;

    iget-object v3, p0, Lcom/ss/android/downloadlib/d$3;->ox:Lcom/ss/android/download/api/download/DownloadModel;

    iget-object v4, p0, Lcom/ss/android/downloadlib/d$3;->p:Lcom/ss/android/download/api/download/DownloadEventConfig;

    iget-object v5, p0, Lcom/ss/android/downloadlib/d$3;->s:Lcom/ss/android/download/api/download/DownloadController;

    iget-object v6, p0, Lcom/ss/android/downloadlib/d$3;->iw:Lcom/ss/android/download/api/config/IDownloadButtonClickListener;

    invoke-static/range {v0 .. v6}, Lcom/ss/android/downloadlib/d;->dq(Lcom/ss/android/downloadlib/d;Landroid/content/Context;Landroid/net/Uri;Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
