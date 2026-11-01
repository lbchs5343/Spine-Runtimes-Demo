.class public Lcom/ss/android/downloadlib/addownload/d/mn;
.super Ljava/lang/Object;


# instance fields
.field private d:I

.field private dq:I

.field private ox:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/ss/android/downloadlib/addownload/d/mn;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/downloadlib/addownload/d/mn;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ss/android/downloadlib/addownload/d/mn;->dq:I

    iput p2, p0, Lcom/ss/android/downloadlib/addownload/d/mn;->d:I

    iput-object p3, p0, Lcom/ss/android/downloadlib/addownload/d/mn;->ox:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/ss/android/downloadlib/addownload/d/mn;-><init>(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/d/mn;->ox:Ljava/lang/String;

    return-object v0
.end method

.method public dq()I
    .locals 1

    iget v0, p0, Lcom/ss/android/downloadlib/addownload/d/mn;->d:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/ss/android/downloadlib/addownload/d/mn;->dq:I

    return v0
.end method
