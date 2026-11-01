.class final Lcom/ss/android/download/api/dq/dq$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/ss/android/download/api/dq/dq$2;->dq:Lcom/ss/android/download/api/model/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p2, p0, Lcom/ss/android/download/api/dq/dq$2;->dq:Lcom/ss/android/download/api/model/d;

    iget-object p2, p2, Lcom/ss/android/download/api/model/d;->ia:Lcom/ss/android/download/api/model/d$d;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/ss/android/download/api/model/d$d;->dq(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
