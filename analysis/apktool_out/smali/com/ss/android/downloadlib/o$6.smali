.class Lcom/ss/android/downloadlib/o$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/o;->dq(Ljava/lang/String;JILcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:J

.field final synthetic dq:Ljava/lang/String;

.field final synthetic iw:Lcom/ss/android/downloadlib/o;

.field final synthetic ox:I

.field final synthetic p:Lcom/ss/android/download/api/download/DownloadEventConfig;

.field final synthetic s:Lcom/ss/android/download/api/download/DownloadController;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/o;Ljava/lang/String;JILcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/o$6;->iw:Lcom/ss/android/downloadlib/o;

    iput-object p2, p0, Lcom/ss/android/downloadlib/o$6;->dq:Ljava/lang/String;

    iput-wide p3, p0, Lcom/ss/android/downloadlib/o$6;->d:J

    iput p5, p0, Lcom/ss/android/downloadlib/o$6;->ox:I

    iput-object p6, p0, Lcom/ss/android/downloadlib/o$6;->p:Lcom/ss/android/download/api/download/DownloadEventConfig;

    iput-object p7, p0, Lcom/ss/android/downloadlib/o$6;->s:Lcom/ss/android/download/api/download/DownloadController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/ss/android/downloadlib/o$6;->iw:Lcom/ss/android/downloadlib/o;

    invoke-static {v0}, Lcom/ss/android/downloadlib/o;->d(Lcom/ss/android/downloadlib/o;)Lcom/ss/android/downloadlib/ia;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/o$6;->dq:Ljava/lang/String;

    iget-wide v3, p0, Lcom/ss/android/downloadlib/o$6;->d:J

    iget v5, p0, Lcom/ss/android/downloadlib/o$6;->ox:I

    iget-object v6, p0, Lcom/ss/android/downloadlib/o$6;->p:Lcom/ss/android/download/api/download/DownloadEventConfig;

    iget-object v7, p0, Lcom/ss/android/downloadlib/o$6;->s:Lcom/ss/android/download/api/download/DownloadController;

    invoke-virtual/range {v1 .. v7}, Lcom/ss/android/downloadlib/ia;->dq(Ljava/lang/String;JILcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)V

    return-void
.end method
