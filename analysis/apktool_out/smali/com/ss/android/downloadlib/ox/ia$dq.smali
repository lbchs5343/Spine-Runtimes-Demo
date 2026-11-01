.class Lcom/ss/android/downloadlib/ox/ia$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/ox/ia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# static fields
.field private static dq:Lcom/ss/android/downloadlib/ox/ia;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ss/android/downloadlib/ox/ia;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/downloadlib/ox/ia;-><init>(Lcom/ss/android/downloadlib/ox/ia$1;)V

    sput-object v0, Lcom/ss/android/downloadlib/ox/ia$dq;->dq:Lcom/ss/android/downloadlib/ox/ia;

    return-void
.end method

.method public static synthetic dq()Lcom/ss/android/downloadlib/ox/ia;
    .locals 1

    sget-object v0, Lcom/ss/android/downloadlib/ox/ia$dq;->dq:Lcom/ss/android/downloadlib/ox/ia;

    return-object v0
.end method
