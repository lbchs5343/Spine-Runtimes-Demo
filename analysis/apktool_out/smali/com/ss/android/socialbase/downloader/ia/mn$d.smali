.class Lcom/ss/android/socialbase/downloader/ia/mn$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/ia/mn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public d:J

.field public dq:Ljava/lang/Runnable;

.field final synthetic ox:Lcom/ss/android/socialbase/downloader/ia/mn;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/ia/mn;Ljava/lang/Runnable;J)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/mn$d;->ox:Lcom/ss/android/socialbase/downloader/ia/mn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/ia/mn$d;->dq:Ljava/lang/Runnable;

    iput-wide p3, p0, Lcom/ss/android/socialbase/downloader/ia/mn$d;->d:J

    return-void
.end method
