.class final Lcom/ss/android/socialbase/appdownloader/s/p$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/s/p;->dq(Landroid/app/Activity;Lcom/ss/android/socialbase/appdownloader/ox/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/socialbase/appdownloader/ox/q;

.field final synthetic dq:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/ss/android/socialbase/appdownloader/ox/q;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/s/p$3;->dq:Landroid/app/Activity;

    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/s/p$3;->d:Lcom/ss/android/socialbase/appdownloader/ox/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p2, p0, Lcom/ss/android/socialbase/appdownloader/s/p$3;->dq:Landroid/app/Activity;

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/s/p$3;->d:Lcom/ss/android/socialbase/appdownloader/ox/q;

    invoke-static {p2, v0}, Lcom/ss/android/socialbase/appdownloader/s/p;->d(Landroid/app/Activity;Lcom/ss/android/socialbase/appdownloader/ox/q;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/ss/android/socialbase/appdownloader/s/p;->dq(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
