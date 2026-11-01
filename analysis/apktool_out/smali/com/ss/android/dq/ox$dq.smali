.class Lcom/ss/android/dq/ox$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/dq/ox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field private d:I

.field private dq:I

.field private ox:I

.field private p:J

.field private s:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ss/android/dq/ox$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/dq/ox$dq;-><init>()V

    return-void
.end method

.method public static synthetic d(Lcom/ss/android/dq/ox$dq;)I
    .locals 0

    iget p0, p0, Lcom/ss/android/dq/ox$dq;->ox:I

    return p0
.end method

.method public static synthetic d(Lcom/ss/android/dq/ox$dq;I)I
    .locals 0

    iput p1, p0, Lcom/ss/android/dq/ox$dq;->d:I

    return p1
.end method

.method public static synthetic dq(Lcom/ss/android/dq/ox$dq;)I
    .locals 0

    iget p0, p0, Lcom/ss/android/dq/ox$dq;->dq:I

    return p0
.end method

.method public static synthetic dq(Lcom/ss/android/dq/ox$dq;I)I
    .locals 0

    iput p1, p0, Lcom/ss/android/dq/ox$dq;->dq:I

    return p1
.end method

.method public static synthetic dq(Lcom/ss/android/dq/ox$dq;J)J
    .locals 0

    iput-wide p1, p0, Lcom/ss/android/dq/ox$dq;->p:J

    return-wide p1
.end method

.method public static synthetic dq(Lcom/ss/android/dq/ox$dq;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/dq/ox$dq;->s:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic ox(Lcom/ss/android/dq/ox$dq;I)I
    .locals 0

    iput p1, p0, Lcom/ss/android/dq/ox$dq;->ox:I

    return p1
.end method

.method public static synthetic ox(Lcom/ss/android/dq/ox$dq;)J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/dq/ox$dq;->p:J

    return-wide v0
.end method

.method public static synthetic p(Lcom/ss/android/dq/ox$dq;)I
    .locals 0

    iget p0, p0, Lcom/ss/android/dq/ox$dq;->d:I

    return p0
.end method

.method public static synthetic s(Lcom/ss/android/dq/ox$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/dq/ox$dq;->s:Ljava/lang/String;

    return-object p0
.end method
