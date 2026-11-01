.class public Lcom/ss/android/downloadlib/ox/mn;
.super Lcom/ss/android/socialbase/appdownloader/ox/dq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/ox/mn$dq;
    }
.end annotation


# static fields
.field private static dq:Ljava/lang/String; = "mn"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/ox/dq;-><init>()V

    return-void
.end method

.method public static synthetic dq()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ss/android/downloadlib/ox/mn;->dq:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public dq(Landroid/content/Context;)Lcom/ss/android/socialbase/appdownloader/ox/ig;
    .locals 1

    new-instance v0, Lcom/ss/android/downloadlib/ox/mn$1;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/downloadlib/ox/mn$1;-><init>(Lcom/ss/android/downloadlib/ox/mn;Landroid/content/Context;)V

    return-object v0
.end method
