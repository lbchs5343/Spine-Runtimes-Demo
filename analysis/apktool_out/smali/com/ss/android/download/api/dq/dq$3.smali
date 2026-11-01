.class final Lcom/ss/android/download/api/dq/dq$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/download/api/dq/dq;->dq(Lcom/ss/android/download/api/model/d;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/ss/android/download/api/model/d;


# direct methods
.method public constructor <init>(Lcom/ss/android/download/api/model/d;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/download/api/dq/dq$3;->dq:Lcom/ss/android/download/api/model/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/download/api/dq/dq$3;->dq:Lcom/ss/android/download/api/model/d;

    iget-object v0, v0, Lcom/ss/android/download/api/model/d;->ia:Lcom/ss/android/download/api/model/d$d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ss/android/download/api/model/d$d;->ox(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
