.class Lcom/ss/android/downloadlib/addownload/compliance/p$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/addownload/compliance/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field private static dq:Lcom/ss/android/downloadlib/addownload/compliance/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ss/android/downloadlib/addownload/compliance/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/downloadlib/addownload/compliance/p;-><init>(Lcom/ss/android/downloadlib/addownload/compliance/p$1;)V

    sput-object v0, Lcom/ss/android/downloadlib/addownload/compliance/p$d;->dq:Lcom/ss/android/downloadlib/addownload/compliance/p;

    return-void
.end method

.method public static synthetic dq()Lcom/ss/android/downloadlib/addownload/compliance/p;
    .locals 1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/compliance/p$d;->dq:Lcom/ss/android/downloadlib/addownload/compliance/p;

    return-object v0
.end method
