.class Lcom/ss/android/downloadlib/kk$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/kk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# static fields
.field private static dq:Lcom/ss/android/downloadlib/kk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ss/android/downloadlib/kk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/downloadlib/kk;-><init>(Lcom/ss/android/downloadlib/kk$1;)V

    sput-object v0, Lcom/ss/android/downloadlib/kk$dq;->dq:Lcom/ss/android/downloadlib/kk;

    return-void
.end method

.method public static synthetic dq()Lcom/ss/android/downloadlib/kk;
    .locals 1

    sget-object v0, Lcom/ss/android/downloadlib/kk$dq;->dq:Lcom/ss/android/downloadlib/kk;

    return-object v0
.end method
