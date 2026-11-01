.class Lcom/ss/android/downloadlib/addownload/compliance/dq$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/compliance/dq;->dq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/ss/android/downloadlib/addownload/compliance/dq;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/addownload/compliance/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq$5;->dq:Lcom/ss/android/downloadlib/addownload/compliance/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq$5;->dq:Lcom/ss/android/downloadlib/addownload/compliance/dq;

    invoke-virtual {p1}, Lcom/ss/android/downloadlib/addownload/compliance/dq;->dismiss()V

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq$5;->dq:Lcom/ss/android/downloadlib/addownload/compliance/dq;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/compliance/dq;->dq(Lcom/ss/android/downloadlib/addownload/compliance/dq;)J

    move-result-wide v0

    const-string p1, "lp_app_dialog_click_giveup"

    invoke-static {p1, v0, v1}, Lcom/ss/android/downloadlib/addownload/compliance/mn;->dq(Ljava/lang/String;J)V

    return-void
.end method
