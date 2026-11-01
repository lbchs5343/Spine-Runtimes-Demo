.class public Lcom/ss/android/downloadlib/addownload/dq/s$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/addownload/dq/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field private d:Ljava/lang/String;

.field private dq:Landroid/app/Activity;

.field private ia:Lcom/ss/android/downloadlib/addownload/dq/ox;

.field private iw:Z

.field private mn:Lcom/ss/android/downloadlib/addownload/dq/p;

.field private ox:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/dq/s$dq;->dq:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/dq/s$dq;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/dq/s$dq;->ox:Ljava/lang/String;

    return-object p0
.end method

.method public dq(Lcom/ss/android/downloadlib/addownload/dq/ox;)Lcom/ss/android/downloadlib/addownload/dq/s$dq;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/dq/s$dq;->ia:Lcom/ss/android/downloadlib/addownload/dq/ox;

    return-object p0
.end method

.method public dq(Lcom/ss/android/downloadlib/addownload/dq/p;)Lcom/ss/android/downloadlib/addownload/dq/s$dq;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/dq/s$dq;->mn:Lcom/ss/android/downloadlib/addownload/dq/p;

    return-object p0
.end method

.method public dq(Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/dq/s$dq;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/dq/s$dq;->d:Ljava/lang/String;

    return-object p0
.end method

.method public dq(Z)Lcom/ss/android/downloadlib/addownload/dq/s$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/downloadlib/addownload/dq/s$dq;->iw:Z

    return-object p0
.end method

.method public dq()Lcom/ss/android/downloadlib/addownload/dq/s;
    .locals 9

    new-instance v0, Lcom/ss/android/downloadlib/addownload/dq/s;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/dq/s$dq;->dq:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/dq/s$dq;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/dq/s$dq;->ox:Ljava/lang/String;

    iget-object v4, p0, Lcom/ss/android/downloadlib/addownload/dq/s$dq;->p:Ljava/lang/String;

    iget-object v5, p0, Lcom/ss/android/downloadlib/addownload/dq/s$dq;->s:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/ss/android/downloadlib/addownload/dq/s$dq;->iw:Z

    iget-object v7, p0, Lcom/ss/android/downloadlib/addownload/dq/s$dq;->mn:Lcom/ss/android/downloadlib/addownload/dq/p;

    iget-object v8, p0, Lcom/ss/android/downloadlib/addownload/dq/s$dq;->ia:Lcom/ss/android/downloadlib/addownload/dq/ox;

    invoke-direct/range {v0 .. v8}, Lcom/ss/android/downloadlib/addownload/dq/s;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ss/android/downloadlib/addownload/dq/p;Lcom/ss/android/downloadlib/addownload/dq/ox;)V

    return-object v0
.end method

.method public ox(Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/dq/s$dq;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/dq/s$dq;->p:Ljava/lang/String;

    return-object p0
.end method

.method public p(Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/dq/s$dq;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/dq/s$dq;->s:Ljava/lang/String;

    return-object p0
.end method
