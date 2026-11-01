.class Lcom/ss/android/downloadlib/addownload/ig$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/addownload/ig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field private static dq:Lcom/ss/android/downloadlib/addownload/ig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ss/android/downloadlib/addownload/ig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/downloadlib/addownload/ig;-><init>(Lcom/ss/android/downloadlib/addownload/ig$1;)V

    sput-object v0, Lcom/ss/android/downloadlib/addownload/ig$d;->dq:Lcom/ss/android/downloadlib/addownload/ig;

    return-void
.end method

.method public static synthetic dq()Lcom/ss/android/downloadlib/addownload/ig;
    .locals 1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/ig$d;->dq:Lcom/ss/android/downloadlib/addownload/ig;

    return-object v0
.end method
