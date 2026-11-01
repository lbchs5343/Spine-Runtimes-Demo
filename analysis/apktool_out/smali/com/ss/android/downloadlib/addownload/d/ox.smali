.class public Lcom/ss/android/downloadlib/addownload/d/ox;
.super Ljava/lang/Object;


# static fields
.field public static d:I = 0x1

.field public static dq:I = 0x0

.field public static ox:I = 0x2


# instance fields
.field private ia:Ljava/lang/String;

.field private iw:Lorg/json/JSONObject;

.field private kk:Ljava/lang/String;

.field private mn:I

.field private p:I

.field private s:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/ss/android/downloadlib/addownload/d/ox;->dq:I

    iput v0, p0, Lcom/ss/android/downloadlib/addownload/d/ox;->p:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ss/android/downloadlib/addownload/d/ox;->s:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/d/ox;->iw:Lorg/json/JSONObject;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/downloadlib/addownload/d/ox;->mn:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/d/ox;->ia:Ljava/lang/String;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/d/ox;->kk:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    iget v0, p0, Lcom/ss/android/downloadlib/addownload/d/ox;->mn:I

    return v0
.end method

.method public d(I)Lcom/ss/android/downloadlib/addownload/d/ox;
    .locals 0

    iput p1, p0, Lcom/ss/android/downloadlib/addownload/d/ox;->mn:I

    return-object p0
.end method

.method public dq(I)Lcom/ss/android/downloadlib/addownload/d/ox;
    .locals 0

    iput p1, p0, Lcom/ss/android/downloadlib/addownload/d/ox;->p:I

    return-object p0
.end method

.method public dq()Z
    .locals 2

    iget v0, p0, Lcom/ss/android/downloadlib/addownload/d/ox;->p:I

    sget v1, Lcom/ss/android/downloadlib/addownload/d/ox;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
