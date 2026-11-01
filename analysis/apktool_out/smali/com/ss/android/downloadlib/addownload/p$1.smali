.class Lcom/ss/android/downloadlib/addownload/p$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/downloadlib/addownload/s$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/p;->dq(IJJLcom/ss/android/downloadlib/addownload/s$dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic dq:I

.field final synthetic iw:Lcom/ss/android/downloadlib/addownload/p;

.field final synthetic ox:Lcom/ss/android/downloadad/api/dq/d;

.field final synthetic p:J

.field final synthetic s:Lcom/ss/android/downloadlib/addownload/s$dq;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/addownload/p;ILjava/lang/String;Lcom/ss/android/downloadad/api/dq/d;JLcom/ss/android/downloadlib/addownload/s$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/p$1;->iw:Lcom/ss/android/downloadlib/addownload/p;

    iput p2, p0, Lcom/ss/android/downloadlib/addownload/p$1;->dq:I

    iput-object p3, p0, Lcom/ss/android/downloadlib/addownload/p$1;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/ss/android/downloadlib/addownload/p$1;->ox:Lcom/ss/android/downloadad/api/dq/d;

    iput-wide p5, p0, Lcom/ss/android/downloadlib/addownload/p$1;->p:J

    iput-object p7, p0, Lcom/ss/android/downloadlib/addownload/p$1;->s:Lcom/ss/android/downloadlib/addownload/s$dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(J)V
    .locals 9

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/p$1;->iw:Lcom/ss/android/downloadlib/addownload/p;

    iget v1, p0, Lcom/ss/android/downloadlib/addownload/p$1;->dq:I

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/p$1;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/ss/android/downloadlib/addownload/p$1;->ox:Lcom/ss/android/downloadad/api/dq/d;

    iget-wide v6, p0, Lcom/ss/android/downloadlib/addownload/p$1;->p:J

    iget-object v8, p0, Lcom/ss/android/downloadlib/addownload/p$1;->s:Lcom/ss/android/downloadlib/addownload/s$dq;

    move-wide v3, p1

    invoke-static/range {v0 .. v8}, Lcom/ss/android/downloadlib/addownload/p;->dq(Lcom/ss/android/downloadlib/addownload/p;ILjava/lang/String;JLcom/ss/android/downloadad/api/dq/d;JLcom/ss/android/downloadlib/addownload/s$dq;)V

    return-void
.end method
