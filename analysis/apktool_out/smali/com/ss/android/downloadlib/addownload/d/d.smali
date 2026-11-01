.class public Lcom/ss/android/downloadlib/addownload/d/d;
.super Ljava/lang/Object;


# instance fields
.field public d:J

.field public dq:J

.field public final ia:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public iw:Ljava/lang/String;

.field public kk:Ljava/lang/String;

.field public mn:Ljava/lang/String;

.field public ox:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/d/d;->ia:Ljava/util/List;

    return-void
.end method

.method public static dq(JJ)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    return-wide p0

    :cond_0
    return-wide p2
.end method


# virtual methods
.method public dq()J
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/d/d;->dq:J

    iget-wide v2, p0, Lcom/ss/android/downloadlib/addownload/d/d;->d:J

    invoke-static {v0, v1, v2, v3}, Lcom/ss/android/downloadlib/addownload/d/d;->dq(JJ)J

    move-result-wide v0

    return-wide v0
.end method
