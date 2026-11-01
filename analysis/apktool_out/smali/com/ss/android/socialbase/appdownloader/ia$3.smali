.class Lcom/ss/android/socialbase/appdownloader/ia$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/ia;->ox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/Integer;

.field final synthetic dq:Landroid/content/Context;

.field final synthetic ox:Lcom/ss/android/socialbase/appdownloader/ia;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/appdownloader/ia;Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/ia$3;->ox:Lcom/ss/android/socialbase/appdownloader/ia;

    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/ia$3;->dq:Landroid/content/Context;

    iput-object p3, p0, Lcom/ss/android/socialbase/appdownloader/ia$3;->d:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/ia$3;->ox:Lcom/ss/android/socialbase/appdownloader/ia;

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/ia$3;->dq:Landroid/content/Context;

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/ia$3;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/ss/android/socialbase/appdownloader/ia;->dq(Lcom/ss/android/socialbase/appdownloader/ia;Landroid/content/Context;IZ)I

    return-void
.end method
