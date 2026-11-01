.class public Lcom/ss/android/socialbase/downloader/model/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/model/d$dq;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/socialbase/downloader/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private static final dq:Ljava/lang/String; = "d"


# instance fields
.field private d:I

.field private ia:Ljava/util/concurrent/atomic/AtomicInteger;

.field private ig:I

.field private iw:J

.field private jy:Lcom/ss/android/socialbase/downloader/ia/d;

.field private kk:J

.field private mn:I

.field private mp:Z

.field private no:Lcom/ss/android/socialbase/downloader/model/d;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private ox:J

.field private p:Ljava/util/concurrent/atomic/AtomicLong;

.field private q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private s:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ss/android/socialbase/downloader/model/d$1;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/model/d$1;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/model/d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->d:I

    const-string v0, "chunkIndex"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->mn:I

    const-string v0, "startOffset"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->ox:J

    const-string v0, "curOffset"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/model/d;->p:Ljava/util/concurrent/atomic/AtomicLong;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->p:Ljava/util/concurrent/atomic/AtomicLong;

    :goto_0
    const-string v0, "endOffset"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ss/android/socialbase/downloader/model/d;->s:J

    const-string v0, "hostChunkIndex"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_2

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/model/d;->ia:Ljava/util/concurrent/atomic/AtomicInteger;

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->ia:Ljava/util/concurrent/atomic/AtomicInteger;

    :goto_1
    const-string v0, "chunkContentLen"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->iw:J

    :cond_3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/d;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->ox:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->p:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->s:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->iw:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->mn:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->ia:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Lcom/ss/android/socialbase/downloader/model/d$dq;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/d$dq;->dq(Lcom/ss/android/socialbase/downloader/model/d$dq;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->d:I

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/d$dq;->d(Lcom/ss/android/socialbase/downloader/model/d$dq;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->ox:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/d$dq;->ox(Lcom/ss/android/socialbase/downloader/model/d$dq;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->p:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/d$dq;->p(Lcom/ss/android/socialbase/downloader/model/d$dq;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->s:J

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/d$dq;->s(Lcom/ss/android/socialbase/downloader/model/d$dq;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->iw:J

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/d$dq;->iw(Lcom/ss/android/socialbase/downloader/model/d$dq;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->mn:I

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/d$dq;->mn(Lcom/ss/android/socialbase/downloader/model/d$dq;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->kk:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->ia:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/d$dq;->ia(Lcom/ss/android/socialbase/downloader/model/d$dq;)Lcom/ss/android/socialbase/downloader/model/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/model/d;->dq(Lcom/ss/android/socialbase/downloader/model/d;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/d;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ss/android/socialbase/downloader/model/d$dq;Lcom/ss/android/socialbase/downloader/model/d$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/model/d;-><init>(Lcom/ss/android/socialbase/downloader/model/d$dq;)V

    return-void
.end method


# virtual methods
.method public cd()V
    .locals 2

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/d;->q()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->kk:J

    return-void
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->ia:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/socialbase/downloader/model/d;->d:I

    return-void
.end method

.method public d(J)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->p:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->p:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/d;->mp:Z

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dq()Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget v1, p0, Lcom/ss/android/socialbase/downloader/model/d;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v1, p0, Lcom/ss/android/socialbase/downloader/model/d;->mn:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "chunkIndex"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-wide v1, p0, Lcom/ss/android/socialbase/downloader/model/d;->ox:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "startOffset"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/d;->q()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "curOffset"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v1, p0, Lcom/ss/android/socialbase/downloader/model/d;->s:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "endOffset"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v1, p0, Lcom/ss/android/socialbase/downloader/model/d;->iw:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "chunkContentLen"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/d;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hostChunkIndex"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public dq(IJ)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/d;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->p()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->iw()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_6

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->mp()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/ss/android/socialbase/downloader/model/d;->ox(Z)J

    move-result-wide v6

    int-to-long v8, v1

    div-long v8, v6, v8

    sget-object v10, Lcom/ss/android/socialbase/downloader/model/d;->dq:Ljava/lang/String;

    const-string v11, "retainLen:"

    const-string v12, " divideChunkForReuse chunkSize:"

    invoke-static {v6, v7, v11, v12}, Lg/awf;->l(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " current host downloadChunk index:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/ss/android/socialbase/downloader/model/d;->mn:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    :goto_0
    const-wide/16 v12, 0x1

    if-ge v11, v1, :cond_4

    if-nez v11, :cond_1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->ig()J

    move-result-wide v14

    goto :goto_2

    :cond_1
    add-int/lit8 v14, v1, -0x1

    if-ne v11, v14, :cond_3

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->f()J

    move-result-wide v15

    cmp-long v17, v15, v3

    if-lez v17, :cond_2

    sub-long v17, v15, v3

    add-long v17, v17, v12

    :goto_1
    move-wide/from16 v12, v17

    move-wide/from16 v17, v6

    move-wide v5, v12

    move-wide v12, v15

    const/16 v16, 0x1

    move-wide v14, v3

    goto :goto_3

    :cond_2
    int-to-long v12, v14

    mul-long v12, v12, v8

    sub-long v17, v6, v12

    goto :goto_1

    :cond_3
    move-wide v14, v3

    :goto_2
    add-long v16, v3, v8

    sub-long v12, v16, v12

    move-wide/from16 v17, v6

    move-wide v5, v8

    const/16 v16, 0x1

    :goto_3
    new-instance v7, Lcom/ss/android/socialbase/downloader/model/d$dq;

    iget v10, v0, Lcom/ss/android/socialbase/downloader/model/d;->d:I

    invoke-direct {v7, v10}, Lcom/ss/android/socialbase/downloader/model/d$dq;-><init>(I)V

    neg-int v10, v11

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v7, v10}, Lcom/ss/android/socialbase/downloader/model/d$dq;->dq(I)Lcom/ss/android/socialbase/downloader/model/d$dq;

    move-result-object v7

    invoke-virtual {v7, v14, v15}, Lcom/ss/android/socialbase/downloader/model/d$dq;->dq(J)Lcom/ss/android/socialbase/downloader/model/d$dq;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Lcom/ss/android/socialbase/downloader/model/d$dq;->d(J)Lcom/ss/android/socialbase/downloader/model/d$dq;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Lcom/ss/android/socialbase/downloader/model/d$dq;->s(J)Lcom/ss/android/socialbase/downloader/model/d$dq;

    move-result-object v7

    invoke-virtual {v7, v12, v13}, Lcom/ss/android/socialbase/downloader/model/d$dq;->ox(J)Lcom/ss/android/socialbase/downloader/model/d$dq;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/ss/android/socialbase/downloader/model/d$dq;->p(J)Lcom/ss/android/socialbase/downloader/model/d$dq;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/ss/android/socialbase/downloader/model/d$dq;->dq(Lcom/ss/android/socialbase/downloader/model/d;)Lcom/ss/android/socialbase/downloader/model/d$dq;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ss/android/socialbase/downloader/model/d$dq;->dq()Lcom/ss/android/socialbase/downloader/model/d;

    move-result-object v7

    sget-object v10, Lcom/ss/android/socialbase/downloader/model/d;->dq:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    move-wide/from16 v19, v8

    const-string v8, "divide sub chunk : "

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " startOffset:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " curOffset:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " endOffset:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " contentLen:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-long v3, v3, v19

    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p1

    move-wide/from16 v6, v17

    move-wide/from16 v8, v19

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_4
    const/16 v16, 0x1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-wide/16 v3, 0x0

    move-wide v5, v3

    :goto_4
    if-lez v1, :cond_6

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ss/android/socialbase/downloader/model/d;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/ss/android/socialbase/downloader/model/d;->fw()J

    move-result-wide v7

    add-long/2addr v5, v7

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_6
    sget-object v1, Lcom/ss/android/socialbase/downloader/model/d;->dq:Ljava/lang/String;

    const-string v7, "reuseChunkContentLen:"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/model/d;

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->f()J

    move-result-wide v7

    cmp-long v9, v7, v3

    if-nez v9, :cond_7

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->ig()J

    move-result-wide v3

    sub-long v3, p2, v3

    goto :goto_5

    :cond_7
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->f()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->ig()J

    move-result-wide v7

    sub-long/2addr v3, v7

    add-long/2addr v3, v12

    :goto_5
    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Lcom/ss/android/socialbase/downloader/model/d;->dq(J)V

    iget v3, v0, Lcom/ss/android/socialbase/downloader/model/d;->mn:I

    invoke-virtual {v1, v3}, Lcom/ss/android/socialbase/downloader/model/d;->ox(I)V

    iget-object v3, v0, Lcom/ss/android/socialbase/downloader/model/d;->jy:Lcom/ss/android/socialbase/downloader/ia/d;

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/d;->f()J

    move-result-wide v7

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->fw()J

    move-result-wide v9

    sub-long/2addr v9, v5

    invoke-virtual {v3, v7, v8, v9, v10}, Lcom/ss/android/socialbase/downloader/ia/d;->dq(JJ)V

    :cond_8
    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/d;->dq(Ljava/util/List;)V

    return-object v2

    :cond_9
    :goto_6
    const/4 v1, 0x0

    return-object v1
.end method

.method public dq(I)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->ia:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->ia:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public dq(J)V
    .locals 0

    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/model/d;->iw:J

    return-void
.end method

.method public dq(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->ig:I

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteProgram;->clearBindings()V

    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->ig:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->ig:I

    iget v1, p0, Lcom/ss/android/socialbase/downloader/model/d;->d:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->ig:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->ig:I

    iget v1, p0, Lcom/ss/android/socialbase/downloader/model/d;->mn:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->ig:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->ig:I

    iget-wide v1, p0, Lcom/ss/android/socialbase/downloader/model/d;->ox:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->ig:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->ig:I

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/d;->q()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->ig:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->ig:I

    iget-wide v1, p0, Lcom/ss/android/socialbase/downloader/model/d;->s:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->ig:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->ig:I

    iget-wide v1, p0, Lcom/ss/android/socialbase/downloader/model/d;->iw:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->ig:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->ig:I

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/d;->d()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/ia/d;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/d;->jy:Lcom/ss/android/socialbase/downloader/ia/d;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/d;->cd()V

    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/model/d;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/d;->no:Lcom/ss/android/socialbase/downloader/model/d;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/d;->gh()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/model/d;->dq(I)V

    :cond_0
    return-void
.end method

.method public dq(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/d;->o:Ljava/util/List;

    return-void
.end method

.method public dq(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/d;->jy:Lcom/ss/android/socialbase/downloader/ia/d;

    return-void
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->s:J

    return-wide v0
.end method

.method public fw()J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->iw:J

    return-wide v0
.end method

.method public gh()I
    .locals 1

    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->mn:I

    return v0
.end method

.method public ia()Z
    .locals 5

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->no:Lcom/ss/android/socialbase/downloader/model/d;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->iw()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/model/d;->no:Lcom/ss/android/socialbase/downloader/model/d;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/d;->mn()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/model/d;->no:Lcom/ss/android/socialbase/downloader/model/d;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/d;->mn()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/model/d;

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/model/d;->no:Lcom/ss/android/socialbase/downloader/model/d;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/d;->mn()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-le v4, v0, :cond_2

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/d;->kk()Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    if-ne v4, v0, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public ig()J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->ox:J

    return-wide v0
.end method

.method public iw()Z
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->o:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public jy()J
    .locals 8

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/d;->q()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/model/d;->ox:J

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/d;->iw()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/model/d;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/model/d;->o:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/model/d;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/d;->q()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/d;->ig()J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v4, v0

    move-wide v0, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public kk()Z
    .locals 7

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->ox:J

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/d;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/model/d;->kk:J

    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/model/d;->ox:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    move-wide v0, v2

    :cond_0
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/d;->q()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->iw:J

    cmp-long v4, v2, v0

    if-ltz v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public mn()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->o:Ljava/util/List;

    return-object v0
.end method

.method public mp()J
    .locals 2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->p:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public no()I
    .locals 1

    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->d:I

    return v0
.end method

.method public o()J
    .locals 6

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->no:Lcom/ss/android/socialbase/downloader/model/d;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->mn()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->no:Lcom/ss/android/socialbase/downloader/model/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->mn()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/model/d;->no:Lcom/ss/android/socialbase/downloader/model/d;

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/d;->mn()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/model/d;->no:Lcom/ss/android/socialbase/downloader/model/d;

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/d;->mn()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ss/android/socialbase/downloader/model/d;

    if-eqz v5, :cond_2

    if-eqz v4, :cond_1

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/d;->q()J

    move-result-wide v0

    return-wide v0

    :cond_1
    if-ne v0, v3, :cond_2

    const/4 v4, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-wide v1
.end method

.method public ox(Z)J
    .locals 8

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/d;->q()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/model/d;->iw:J

    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/model/d;->kk:J

    sub-long v6, v0, v4

    sub-long v6, v2, v6

    if-nez p1, :cond_0

    cmp-long p1, v0, v4

    if-nez p1, :cond_0

    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/model/d;->ox:J

    sub-long/2addr v0, v4

    sub-long v6, v2, v0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "contentLength:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->iw:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " curOffset:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/d;->q()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " oldOffset:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->kk:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " retainLen:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DownloadChunk"

    invoke-static {v0, p1}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long p1, v6, v0

    if-gez p1, :cond_1

    return-wide v0

    :cond_1
    return-wide v6
.end method

.method public ox(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/socialbase/downloader/model/d;->mn:I

    return-void
.end method

.method public ox()Z
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public p()Z
    .locals 2

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/d;->d()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public q()J
    .locals 7

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/d;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/d;->iw()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/model/d;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/model/d;->o:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/model/d;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/d;->kk()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/d;->mp()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/d;->mp()J

    move-result-wide v4

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/d;->mp()J

    move-result-wide v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-wide v0

    :cond_3
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/d;->mp()J

    move-result-wide v0

    return-wide v0
.end method

.method public s()Lcom/ss/android/socialbase/downloader/model/d;
    .locals 2

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/d;->p()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->no:Lcom/ss/android/socialbase/downloader/model/d;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->iw()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->mn()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/d;

    return-object v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Lcom/ss/android/socialbase/downloader/model/d;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->ox:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/model/d;->p:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->s:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->iw:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/ss/android/socialbase/downloader/model/d;->mn:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/model/d;->ia:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    goto :goto_1

    :cond_1
    const/4 p2, -0x1

    :goto_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
