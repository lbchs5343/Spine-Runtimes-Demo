.class public Lcom/ss/android/download/api/model/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/download/api/model/p$dq;
    }
.end annotation


# instance fields
.field private d:Ljava/lang/String;

.field private dq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ss/android/download/api/model/p$dq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/ss/android/download/api/model/p$dq;->dq(Lcom/ss/android/download/api/model/p$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/p;->dq:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/download/api/model/p$dq;->d(Lcom/ss/android/download/api/model/p$dq;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/download/api/model/p;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/download/api/model/p;->dq:Ljava/lang/String;

    return-object v0
.end method
