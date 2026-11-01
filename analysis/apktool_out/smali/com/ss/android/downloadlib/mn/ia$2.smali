.class final Lcom/ss/android/downloadlib/mn/ia$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/mn/ia;->dq(Landroid/content/Context;Landroid/net/Uri;Lcom/ss/android/downloadlib/addownload/d/s;)Lcom/ss/android/downloadlib/addownload/d/mn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/content/Intent;

.field final synthetic dq:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/mn/ia$2;->dq:Landroid/content/Context;

    iput-object p2, p0, Lcom/ss/android/downloadlib/mn/ia$2;->d:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/downloadlib/mn/ia$2;->dq:Landroid/content/Context;

    iget-object v1, p0, Lcom/ss/android/downloadlib/mn/ia$2;->d:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
