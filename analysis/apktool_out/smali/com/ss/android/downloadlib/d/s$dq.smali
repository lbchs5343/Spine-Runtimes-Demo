.class Lcom/ss/android/downloadlib/d/s$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/d/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# static fields
.field private static dq:Lcom/ss/android/downloadlib/d/s;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ss/android/downloadlib/d/s;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/downloadlib/d/s;-><init>(Lcom/ss/android/downloadlib/d/s$1;)V

    sput-object v0, Lcom/ss/android/downloadlib/d/s$dq;->dq:Lcom/ss/android/downloadlib/d/s;

    return-void
.end method

.method public static synthetic dq()Lcom/ss/android/downloadlib/d/s;
    .locals 1

    sget-object v0, Lcom/ss/android/downloadlib/d/s$dq;->dq:Lcom/ss/android/downloadlib/d/s;

    return-object v0
.end method
