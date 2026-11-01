.class Lcom/ss/android/downloadlib/ox/mn$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/appdownloader/ox/ig;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/ox/mn;->dq(Landroid/content/Context;)Lcom/ss/android/socialbase/appdownloader/ox/ig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/downloadlib/ox/mn;

.field final synthetic dq:Landroid/content/Context;

.field private iw:Landroid/content/DialogInterface$OnCancelListener;

.field private ox:Lcom/ss/android/download/api/model/d$dq;

.field private p:Landroid/content/DialogInterface$OnClickListener;

.field private s:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/ox/mn;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/ox/mn$1;->d:Lcom/ss/android/downloadlib/ox/mn;

    iput-object p2, p0, Lcom/ss/android/downloadlib/ox/mn$1;->dq:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/ss/android/download/api/model/d$dq;

    invoke-direct {p1, p2}, Lcom/ss/android/download/api/model/d$dq;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ss/android/downloadlib/ox/mn$1;->ox:Lcom/ss/android/download/api/model/d$dq;

    return-void
.end method

.method public static synthetic d(Lcom/ss/android/downloadlib/ox/mn$1;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/downloadlib/ox/mn$1;->s:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public static synthetic dq(Lcom/ss/android/downloadlib/ox/mn$1;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/downloadlib/ox/mn$1;->p:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public static synthetic ox(Lcom/ss/android/downloadlib/ox/mn$1;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/downloadlib/ox/mn$1;->iw:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method


# virtual methods
.method public d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ss/android/socialbase/appdownloader/ox/ig;
    .locals 2

    iget-object v0, p0, Lcom/ss/android/downloadlib/ox/mn$1;->ox:Lcom/ss/android/download/api/model/d$dq;

    iget-object v1, p0, Lcom/ss/android/downloadlib/ox/mn$1;->dq:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ss/android/download/api/model/d$dq;->p(Ljava/lang/String;)Lcom/ss/android/download/api/model/d$dq;

    iput-object p2, p0, Lcom/ss/android/downloadlib/ox/mn$1;->s:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public dq(I)Lcom/ss/android/socialbase/appdownloader/ox/ig;
    .locals 2

    iget-object v0, p0, Lcom/ss/android/downloadlib/ox/mn$1;->ox:Lcom/ss/android/download/api/model/d$dq;

    iget-object v1, p0, Lcom/ss/android/downloadlib/ox/mn$1;->dq:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ss/android/download/api/model/d$dq;->dq(Ljava/lang/String;)Lcom/ss/android/download/api/model/d$dq;

    return-object p0
.end method

.method public dq(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ss/android/socialbase/appdownloader/ox/ig;
    .locals 2

    iget-object v0, p0, Lcom/ss/android/downloadlib/ox/mn$1;->ox:Lcom/ss/android/download/api/model/d$dq;

    iget-object v1, p0, Lcom/ss/android/downloadlib/ox/mn$1;->dq:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ss/android/download/api/model/d$dq;->ox(Ljava/lang/String;)Lcom/ss/android/download/api/model/d$dq;

    iput-object p2, p0, Lcom/ss/android/downloadlib/ox/mn$1;->p:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public dq(Landroid/content/DialogInterface$OnCancelListener;)Lcom/ss/android/socialbase/appdownloader/ox/ig;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/ox/mn$1;->iw:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public dq(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/ox/ig;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadlib/ox/mn$1;->ox:Lcom/ss/android/download/api/model/d$dq;

    invoke-virtual {v0, p1}, Lcom/ss/android/download/api/model/d$dq;->d(Ljava/lang/String;)Lcom/ss/android/download/api/model/d$dq;

    return-object p0
.end method

.method public dq(Z)Lcom/ss/android/socialbase/appdownloader/ox/ig;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadlib/ox/mn$1;->ox:Lcom/ss/android/download/api/model/d$dq;

    invoke-virtual {v0, p1}, Lcom/ss/android/download/api/model/d$dq;->dq(Z)Lcom/ss/android/download/api/model/d$dq;

    return-object p0
.end method

.method public dq()Lcom/ss/android/socialbase/appdownloader/ox/no;
    .locals 3

    iget-object v0, p0, Lcom/ss/android/downloadlib/ox/mn$1;->ox:Lcom/ss/android/download/api/model/d$dq;

    new-instance v1, Lcom/ss/android/downloadlib/ox/mn$1$1;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/ox/mn$1$1;-><init>(Lcom/ss/android/downloadlib/ox/mn$1;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/download/api/model/d$dq;->dq(Lcom/ss/android/download/api/model/d$d;)Lcom/ss/android/download/api/model/d$dq;

    invoke-static {}, Lcom/ss/android/downloadlib/ox/mn;->dq()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getThemedAlertDlgBuilder"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/mn/no;->dq(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/ss/android/downloadlib/ox/mn$1;->ox:Lcom/ss/android/download/api/model/d$dq;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ss/android/download/api/model/d$dq;->dq(I)Lcom/ss/android/download/api/model/d$dq;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->ox()Lcom/ss/android/download/api/config/ig;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/ox/mn$1;->ox:Lcom/ss/android/download/api/model/d$dq;

    invoke-virtual {v1}, Lcom/ss/android/download/api/model/d$dq;->dq()Lcom/ss/android/download/api/model/d;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ss/android/download/api/config/ig;->d(Lcom/ss/android/download/api/model/d;)Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/ox/mn$dq;

    invoke-direct {v1, v0}, Lcom/ss/android/downloadlib/ox/mn$dq;-><init>(Landroid/app/Dialog;)V

    return-object v1
.end method
