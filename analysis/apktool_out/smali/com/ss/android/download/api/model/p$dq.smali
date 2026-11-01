.class public Lcom/ss/android/download/api/model/p$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/download/api/model/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field private d:Ljava/lang/String;

.field private dq:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic d(Lcom/ss/android/download/api/model/p$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/download/api/model/p$dq;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic dq(Lcom/ss/android/download/api/model/p$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/download/api/model/p$dq;->dq:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public d(Ljava/lang/String;)Lcom/ss/android/download/api/model/p$dq;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/download/api/model/p$dq;->d:Ljava/lang/String;

    return-object p0
.end method

.method public dq(Ljava/lang/String;)Lcom/ss/android/download/api/model/p$dq;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/download/api/model/p$dq;->dq:Ljava/lang/String;

    return-object p0
.end method

.method public dq()Lcom/ss/android/download/api/model/p;
    .locals 1

    new-instance v0, Lcom/ss/android/download/api/model/p;

    invoke-direct {v0, p0}, Lcom/ss/android/download/api/model/p;-><init>(Lcom/ss/android/download/api/model/p$dq;)V

    return-object v0
.end method
