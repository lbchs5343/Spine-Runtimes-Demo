.class public Lcom/ss/android/socialbase/downloader/exception/p;
.super Lcom/ss/android/socialbase/downloader/exception/BaseException;


# instance fields
.field private final d:J

.field private final dq:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 4

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "space is not enough required space is : "

    const-string v3, " but available space is :"

    invoke-static {v2, v0, v3, v1}, Lg/awf;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3ee

    invoke-direct {p0, v1, v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/exception/p;->dq:J

    iput-wide p3, p0, Lcom/ss/android/socialbase/downloader/exception/p;->d:J

    return-void
.end method


# virtual methods
.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/exception/p;->d:J

    return-wide v0
.end method

.method public dq()J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/exception/p;->dq:J

    return-wide v0
.end method
