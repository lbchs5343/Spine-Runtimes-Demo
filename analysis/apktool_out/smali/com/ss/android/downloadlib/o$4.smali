.class Lcom/ss/android/downloadlib/o$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/o;->dq(Landroid/content/Context;ILcom/ss/android/download/api/download/DownloadStatusChangeListener;Lcom/ss/android/download/api/download/DownloadModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic dq:Landroid/content/Context;

.field final synthetic ox:Lcom/ss/android/download/api/download/DownloadStatusChangeListener;

.field final synthetic p:Lcom/ss/android/download/api/download/DownloadModel;

.field final synthetic s:Lcom/ss/android/downloadlib/o;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/o;Landroid/content/Context;ILcom/ss/android/download/api/download/DownloadStatusChangeListener;Lcom/ss/android/download/api/download/DownloadModel;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/o$4;->s:Lcom/ss/android/downloadlib/o;

    iput-object p2, p0, Lcom/ss/android/downloadlib/o$4;->dq:Landroid/content/Context;

    iput p3, p0, Lcom/ss/android/downloadlib/o$4;->d:I

    iput-object p4, p0, Lcom/ss/android/downloadlib/o$4;->ox:Lcom/ss/android/download/api/download/DownloadStatusChangeListener;

    iput-object p5, p0, Lcom/ss/android/downloadlib/o$4;->p:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/ss/android/downloadlib/o$4;->s:Lcom/ss/android/downloadlib/o;

    invoke-static {v0}, Lcom/ss/android/downloadlib/o;->d(Lcom/ss/android/downloadlib/o;)Lcom/ss/android/downloadlib/ia;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/o$4;->dq:Landroid/content/Context;

    iget v2, p0, Lcom/ss/android/downloadlib/o$4;->d:I

    iget-object v3, p0, Lcom/ss/android/downloadlib/o$4;->ox:Lcom/ss/android/download/api/download/DownloadStatusChangeListener;

    iget-object v4, p0, Lcom/ss/android/downloadlib/o$4;->p:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ss/android/downloadlib/ia;->dq(Landroid/content/Context;ILcom/ss/android/download/api/download/DownloadStatusChangeListener;Lcom/ss/android/download/api/download/DownloadModel;)V

    return-void
.end method
