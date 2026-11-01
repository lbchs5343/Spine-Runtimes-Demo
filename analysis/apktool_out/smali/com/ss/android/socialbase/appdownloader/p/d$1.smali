.class Lcom/ss/android/socialbase/appdownloader/p/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/p/d;->dq(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic dq:Ljava/util/List;

.field final synthetic ox:Lcom/ss/android/socialbase/appdownloader/p/d;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/appdownloader/p/d;Ljava/util/List;I)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/p/d$1;->ox:Lcom/ss/android/socialbase/appdownloader/p/d;

    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/p/d$1;->dq:Ljava/util/List;

    iput p3, p0, Lcom/ss/android/socialbase/appdownloader/p/d$1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/p/d$1;->ox:Lcom/ss/android/socialbase/appdownloader/p/d;

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/p/d$1;->dq:Ljava/util/List;

    iget v2, p0, Lcom/ss/android/socialbase/appdownloader/p/d$1;->d:I

    invoke-static {v0, v1, v2}, Lcom/ss/android/socialbase/appdownloader/p/d;->dq(Lcom/ss/android/socialbase/appdownloader/p/d;Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
