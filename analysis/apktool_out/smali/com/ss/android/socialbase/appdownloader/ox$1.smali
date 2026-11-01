.class final Lcom/ss/android/socialbase/appdownloader/ox$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/appdownloader/ox/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/ox;->dq(Landroid/content/Context;IZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic dq:Landroid/content/Context;

.field final synthetic ox:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/ox$1;->dq:Landroid/content/Context;

    iput p2, p0, Lcom/ss/android/socialbase/appdownloader/ox$1;->d:I

    iput-boolean p3, p0, Lcom/ss/android/socialbase/appdownloader/ox$1;->ox:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 3

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/ox$1;->dq:Landroid/content/Context;

    iget v1, p0, Lcom/ss/android/socialbase/appdownloader/ox$1;->d:I

    iget-boolean v2, p0, Lcom/ss/android/socialbase/appdownloader/ox$1;->ox:Z

    invoke-static {v0, v1, v2}, Lcom/ss/android/socialbase/appdownloader/ox;->ox(Landroid/content/Context;IZ)I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/ox;->d(I)I

    return-void
.end method
